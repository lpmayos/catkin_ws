#include "lpmayos_ros_webots_epuck_nxt_differential_robot/nxt_interface.h"

///< constructor
NXT_interface::NXT_interface() {
    r2d2::USBBrickManager usbm;

    brick = usbm.list()->at(0);
    
    nxt = brick->configure(r2d2::SensorType::TOUCH_SENSOR,
                           r2d2::SensorType::TOUCH_SENSOR,
                           r2d2::SensorType::SONAR_SENSOR,
                           r2d2::SensorType::PASSIVE_LIGHT_SENSOR,
                           r2d2::MotorType::STANDARD_MOTOR,
                           r2d2::MotorType::STANDARD_MOTOR,
                           r2d2::MotorType::STANDARD_MOTOR);
    if (nxt != nullptr) {
        /* check the connections of the NXT you re using */
        sensor_right = nxt->sensorPort(r2d2::SensorPort::IN_1);
        sensor_left = nxt->sensorPort(r2d2::SensorPort::IN_2);
        sensor_sonar = nxt->sensorPort(r2d2::SensorPort::IN_3);
        sensor_light = nxt->sensorPort(r2d2::SensorPort::IN_4);
        motor_right = nxt->motorPort(r2d2::MotorPort::OUT_B);
        motor_left = nxt->motorPort(r2d2::MotorPort::OUT_C);
        // initially sensors are off
        status_sensor_left = false;
        status_sensor_right = false;
        status_sensor_sonar = false;
        status_sensor_light = false;
    }
}


void NXT_interface ::  run(int argc, char **argv) {
    if (nxt != nullptr) {
        ros::init(argc, argv, "nxt_driver");
        ros::NodeHandle n;
        ros::Subscriber subRobot = n.subscribe("robot", 1000, & NXT_interface::robotCallback,this);
        ros::ServiceServer serviceStatusButton = n.advertiseService("buttonstatus",  & NXT_interface::value_buttonCallback,this);
        ROS_INFO("Service ready");
        ros::spin();
        std::cerr<< "This EXITING sometimes does not happen when roscore goes down" << std::endl;
    }
}


/// call-back method button status/value
bool NXT_interface :: value_buttonCallback(
             lpmayos_ros_webots_epuck_nxt_differential_robot::RbuttonStatus::Request & req,
             lpmayos_ros_webots_epuck_nxt_differential_robot::RbuttonStatus::Response& res) {
    ROS_INFO("value_buttonCallback");
    if (status_sensor_right) {
        res.right_pressed = sensor_right->getValue();
        ROS_INFO("sensor_right->getValue() = %s", res.right_pressed);
    }
    if (status_sensor_left) {
        res.left_pressed = (true==sensor_left->getValue());
        ROS_INFO("sensor_left->getValue() = %s", res.left_pressed);
    }
    if (status_sensor_sonar) {
        res.sonar = sensor_sonar->getValue();
        ROS_INFO("sensor_sonar->getValue() = %d", res.sonar);
    }
    if (status_sensor_left) {
        res.light = sensor_light->getValue();
        ROS_INFO("sensor_light->getValue() = %d", res.light);
    }
    if (! (status_sensor_left || status_sensor_right || status_sensor_sonar || status_sensor_light)) {  
        ROS_INFO("service invoked with both SENSOR OFF:" );
        ROS_INFO("FALSE exit:" );
        return false;
    } else { 
        return true;
    }
}


// call-back method robot_control
void NXT_interface :: robotCallback(const lpmayos_ros_webots_epuck_nxt_differential_robot::Rrobot::ConstPtr& msg) {
    int leftPower=msg->leftMotor.power; 
    int rightPower=msg->rightMotor.power; 

    //ROS_INFO("Setting Motors Left: [%d] Right: [%d]", leftPower,rightPower);
    if ((leftPower) && (100 >= leftPower)) {
        motor_left->setForward(leftPower);
    } else {  // negative values should be back
        leftPower= - leftPower;
        if ((leftPower) && (100 >= leftPower)) {
            motor_left->setReverse(leftPower);
        } else {  // stop with power ==0
            motor_left->stop(false);
        } 
    }

    if ((rightPower) && (100 >= rightPower)) {
        motor_right->setForward(rightPower);
    } else {   
        rightPower = -rightPower;
        if ((rightPower) && (100 >= rightPower)) {
            motor_right->setForward(rightPower);
        } else {
            motor_right->stop(false);
        } 
    }

    status_sensor_left = static_cast<bool>(msg->leftButtonSwitch.on);
    status_sensor_right = static_cast<bool>(msg->rightButtonSwitch.on);
    status_sensor_sonar = static_cast<bool>(msg->sonarSwitch.on);
    status_sensor_light = static_cast<bool>(msg->lightSwitch.on);
    //ROS_INFO("Switch sensors Left: [%s] Right: [%s]", status_sensor_left ? "ON" : "OFF",  status_sensor_right? "ON" :"OFF");
}
