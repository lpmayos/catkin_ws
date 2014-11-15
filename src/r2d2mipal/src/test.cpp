#include <iostream>
#include "unistd.h"
#include <signal.h>
// #include <thread>
// #include "bluetooth.h"  // todo lpmayos: provar bluetooth
#include "usb.h"
#include <thread>


r2d2::NXT *nxt = nullptr;


class Lab1Task2 {
public:
    int sonar_range = 35;
    r2d2::SensorPort touch_sensor_right = r2d2::SensorPort::IN_1;
    r2d2::SensorPort touch_sensor_left = r2d2::SensorPort::IN_2;
    r2d2::SensorPort sonar_sensor = r2d2::SensorPort::IN_3;
    r2d2::MotorPort motor_right = r2d2::MotorPort::OUT_A;
    r2d2::MotorPort motor_left = r2d2::MotorPort::OUT_B;
    r2d2::Brick* brick;
    r2d2::USBBrickManager usbm;

    Lab1Task2() {
        // constructor

        // USB config
        brick = usbm.list()->at(0);
        
        // todo lpmayos: provar bluetooth config
        // BLUETOOTH config
        // r2d2::BTBrickManager bltm;
        // r2d2::Brick* brick = bltm.list()->at(0);

        // brick config
        nxt = brick->configure(r2d2::SensorType::TOUCH_SENSOR,
                               r2d2::SensorType::TOUCH_SENSOR,
                               r2d2::SensorType::SONAR_SENSOR,
                               r2d2::SensorType::NULL_SENSOR,
                               r2d2::MotorType::STANDARD_MOTOR,
                               r2d2::MotorType::STANDARD_MOTOR,
                               r2d2::MotorType::STANDARD_MOTOR);
    }

    void setRightSpin() {
        // This function sets one motor forward and the other backward to make a right spin (motors set at 50% power).
        nxt->motorPort(motor_right)->setForward(50);
        nxt->motorPort(motor_left)->setReverse(50);
    }

    void setLeftSpin() {
        // This function sets one motor forward and the other backward to make a left spin (motors set at 50% power).
        nxt->motorPort(motor_right)->setReverse(50);
        nxt->motorPort(motor_left)->setForward(50);
    }

    void setBothBack() {
        // This function sets the both motors back at 50% power.   
        nxt->motorPort(motor_right)->setReverse(50);
        nxt->motorPort(motor_left)->setReverse(50);
    }

    void setBothForward() {
        // This function sets the both motors forwards at 50% power.
        nxt->motorPort(motor_right)->setForward(50);
        nxt->motorPort(motor_left)->setForward(50);
    }

    void run() {
        // main program: while(1) go forward. If the robot detects an obstacle
        // or touches it, it goes backwards, spin and goes forward again.

        bool right_touched = false;
        bool left_touched = false;
        bool object_detected = false;

        while (1) {

            right_touched = nxt->sensorPort(touch_sensor_right)->getValue();
            left_touched = nxt->sensorPort(touch_sensor_left)->getValue();
            object_detected = nxt->sensorPort(sonar_sensor)->getValue() < sonar_range;

            if(object_detected || (right_touched && left_touched)) {
                this->setBothBack();
                usleep(500000);
                (random() % 2) ? this->setRightSpin() : this->setLeftSpin();
                usleep(300000);
            } else if(right_touched) {
                this->setBothBack();
                usleep(500000);
                this->setRightSpin();
                usleep(300000);
            } else if (left_touched) {
                this->setBothBack();
                usleep(500000);
                this->setLeftSpin();
                usleep(300000);
            }
            
            this->setBothForward();
        }
    }

};



class Lab1Task3 {
public:
    int sonar_range = 50;
    bool move = false;
    r2d2::SensorPort touch_sensor_right = r2d2::SensorPort::IN_1;
    r2d2::SensorPort touch_sensor_left = r2d2::SensorPort::IN_2;
    r2d2::SensorPort sonar_sensor = r2d2::SensorPort::IN_3;
    r2d2::MotorPort motor_right = r2d2::MotorPort::OUT_A;
    r2d2::MotorPort motor_left = r2d2::MotorPort::OUT_B;
    r2d2::Brick* brick;
    r2d2::USBBrickManager usbm;

    Lab1Task3() {
        // constructor

        // USB config
        brick = usbm.list()->at(0);

        // brick config
        nxt = brick->configure(r2d2::SensorType::TOUCH_SENSOR,
                               r2d2::SensorType::TOUCH_SENSOR,
                               r2d2::SensorType::SONAR_SENSOR,
                               r2d2::SensorType::NULL_SENSOR,
                               r2d2::MotorType::STANDARD_MOTOR,
                               r2d2::MotorType::STANDARD_MOTOR,
                               r2d2::MotorType::STANDARD_MOTOR);
    }

    void stopBoth() {
        // This function stops both motors

        nxt->motorPort(motor_right)->stop(false);
        nxt->motorPort(motor_left)->stop(false);
    }

    void setBothBack(int power) {
        // This function sets the both motors back at 'power' power.

        if (power < 0) {
            power = power * (-1);
        } 
        if (power > 100) {
            power = 100;
        }   
        nxt->motorPort(motor_right)->setReverse(power);
        nxt->motorPort(motor_left)->setReverse(power);
    }

    void setBothForward(int power) {
        // This function sets the both motors forwards at 'power' power.

        if (power < 0) {
            power = power * (-1);
        } 
        if (power > 100) {
            power = 100;
        }
        nxt->motorPort(motor_right)->setForward(power);
        nxt->motorPort(motor_left)->setForward(power);
    }

    void thread1(int distance_input) {
        // while(1), if global var 'move' is true the robot should maintain the
        // same distance from a given obstacle

        int difference;
        int distance = (int)distance_input;
        int sonar_distance;
        int scale_factor = 3;  // todo lpmayos: inventat!
        int tolerance = 5;  // todo lpmayos: inventat!

        while (1) {

            if (move == true) {
                sonar_distance = nxt->sensorPort(sonar_sensor)->getValue();
                difference = distance - sonar_distance;
                
                if (difference > tolerance) {
                    this->setBothBack(difference * scale_factor);
                } else if (difference < -tolerance) {
                    this->setBothForward(-difference * scale_factor);
                } else {
                    this->stopBoth();
                }
            }

            usleep(62500);  // for one 16th of a second
        }

    }

    void thread2() {
        // while(1), iw we touch the sensor the robot should start keeping the
        // distance if it was not doing it, and viceversa.

        bool right_touched;
        bool left_touched;

        while (1) {

            right_touched = nxt->sensorPort(touch_sensor_right)->getValue();
            left_touched = nxt->sensorPort(touch_sensor_left)->getValue();
            if (right_touched || left_touched) {
                move = !move;
                if(move == false) {
                    this->stopBoth();
                }
                usleep(200000);
            }

            usleep(62500);  // for one 16th of a second
        }

    }

};


// lpmayos doubt: working with threads, it now works... but why?
// lpmayos doubt: working without threads does not work
void signal_callback_handler(int signum) {
    if(nxt != nullptr) {
        // stop all motors
        nxt->motorPort(r2d2::MotorPort::OUT_A)->stop(false);
        nxt->motorPort(r2d2::MotorPort::OUT_B)->stop(false);
        nxt->motorPort(r2d2::MotorPort::OUT_C)->stop(false);
    }
    usleep(1000000);
    exit(signum);
}


int main(void) {

    signal(SIGINT, signal_callback_handler);

    // Lab 1 Task 2 -----------------------------------------------------------

    // Lab1Task2 *l1t2 = new Lab1Task2();
    // l1t2->run();
    // delete l1t2;

    // ------------------------------------------------------------------------

    // Lab 1 Task 3 -----------------------------------------------------------

    int distance_input;
    std::cout << "Please enter the distance you want the robot to keep (an integer between 0 and 255)" << std::endl;
    std::cin >> distance_input;
    std::cout << std::endl;

    Lab1Task3 *l1t3 = new Lab1Task3();
    std::thread t1(&Lab1Task3::thread1, l1t3, distance_input);
    std::thread t2(&Lab1Task3::thread2, l1t3);

    // Makes the main thread wait for the new thread to finish execution,
    // therefore blocks its own execution.
    t1.join();
    t2.join();

    delete l1t3;

    // ------------------------------------------------------------------------

    return 0;
}
