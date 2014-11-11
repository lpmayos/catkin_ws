#include <iostream>
#include "unistd.h"
#include <signal.h>
#include <thread>
// #include "bluetooth.h"  // todo lpmayos: provar bluetooth
#include "usb.h"


r2d2::NXT *nxt = nullptr;


class Lab1Task2 {
public:

    r2d2::Brick* brick;

    // USB config
    brick = usbm.list()->at(0);
    
    // todo lpmayos: provar bluetooth config
    // BLUETOOTH config
    // r2d2::BTBrickManager bltm;
    // r2d2::Brick* brick = bltm.list()->at(0);
    nxt = brick->configure(r2d2::SensorType::TOUCH_SENSOR,
                           r2d2::SensorType::TOUCH_SENSOR,
                           r2d2::SensorType::SONAR_SENSOR,
                           r2d2::SensorType::NULL_SENSOR,
                           r2d2::MotorType::STANDARD_MOTOR,
                           r2d2::MotorType::STANDARD_MOTOR,
                           r2d2::MotorType::STANDARD_MOTOR);


    r2d2::Sensor touch_sensor_right = nxt->sensorPort(r2d2::SensorPort::IN_1);
    r2d2::Sensor touch_sensor_left = nxt->sensorPort(r2d2::SensorPort::IN_2);
    r2d2::Sensor sonar_sensor = nxt->sensorPort(r2d2::SensorPort::IN_3);
    r2d2::Motor motor_right = nxt->motorPort(r2d2::MotorPort::OUT_A);
    r2d2::Motor motor_left = nxt->motorPort(r2d2::MotorPort::OUT_B);
    r2d2::USBBrickManager usbm;


    void setRightSpin() {
        // This function sets one motor forward and the other backward to make a right spin (motors set at 50% power).
        motor_right->setForward(50);
        motor_left->setReverse(50);
    }

    void setLeftSpin() {
        // This function sets one motor forward and the other backward to make a left spin (motors set at 50% power).
        motor_right->setReverse(50);
        motor_left->setForward(50);
    }

    void setBothBack() {
        // This function sets the both motors back at 50% power.   
        motor_right->setReverse(50);
        motor_left->setReverse(50);
    }

    void setBothForward() {
        // This function sets the both motors forwards at 50% power.
        motor_right->setForward(50);
        motor_left->setForward(50);
    }

    void run() {
        // main program: while 1 go forward. If the robot detects an obstacle or touches it, it goes backwards, spin and goes forward again.

        bool right_touched = false;
        bool left_touched = false;
        bool object_detected = false;

        while (1) { //main loop

            right_touched = touch_sensor_right->getValue();
            left_touched = touch_sensor_left->getValue();
            object_detected = sonar_sensor->getValue() < 40;

            if(object_detected || (right_touched && left_touched)) {
                this->setBothBack();
                usleep(1000000);
                // todo: girar o izda o dcha
                this->setRightSpin();
                usleep(500000);
            } else if(right_touched) {
                this->setBothBack();
                usleep(1000000);
                this->setRightSpin();
                usleep(500000);
            } else if (left_touched) {
                this->setBothBack();
                usleep(1000000);
                this->setLeftSpin();
                usleep(500000);
            }
            
            this->setBothForward();
        }
    }

};


void signal_callback_handler(int signum) {
    if(nxt != nullptr) {
        // stop all motors
        nxt->motorPort(r2d2::MotorPort::OUT_A)->stop(false);
        nxt->motorPort(r2d2::MotorPort::OUT_B)->stop(false);
        nxt->motorPort(r2d2::MotorPort::OUT_C)->stop(false);
    }
    r2d2_usleep(1);
    exit(signum);
}


int main(void) {

    signal(SIGINT, signal_callback_handler);

    Lab1Task2 *l1t2 = new Lab1Task2();
    l1t2->run();

    delete l1t2;
    return 0;
}
