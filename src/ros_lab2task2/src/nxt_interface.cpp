#include "ros_lab2task2/nxt_interface.h"

///< constructor
NXT_interface::NXT_interface() {
    try {
        r2d2::USBBrickManager usbm;

        brick = usbm.list()->at(0);

        nxt = brick->configure(r2d2::SensorType::TOUCH_SENSOR,
                               r2d2::SensorType::TOUCH_SENSOR,
                               r2d2::SensorType::SONAR_SENSOR,
                               r2d2::SensorType::ACTIVE_LIGHT_SENSOR,
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
        }
    } catch(const std::exception&) {
        // no nxt connected: enter simulation mode
        simulation_mode = true;
        ROS_INFO("No nxt Robot detected --> SIMULATION MODE ON");
        // vull algo que desde command line pugui fer:
        // rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[2.0, 0.0, 0.0]' '[0.0, 0.0, 1.8]'
        // rostopic pub [topic] [msg_type] [args]
        // ros::NodeHandle* n = new ros::NodeHandle();
        // ros::Publisher simulated_sensors = n->advertise<ros_lab2task2::Rsimulation>("simulated_sensors", 1000);
    }
}


/// advertise services: buttonstatus, sonarstatus, lightstatus
void NXT_interface::run(int argc, char **argv) {
    ros::init(argc, argv, "nxt_driver");
    ros::NodeHandle n;

    ros::Subscriber subRobot = n.subscribe("robot", 1000, & NXT_interface::robotCallback,this);

    ros::ServiceServer serviceStatusButton = n.advertiseService("buttonstatus",  & NXT_interface::value_buttonCallback, this);
    ros::ServiceServer serviceStatusSonar = n.advertiseService("sonarstatus",  & NXT_interface::value_sonarCallback, this);
    ros::ServiceServer serviceStatusLight = n.advertiseService("lightstatus",  & NXT_interface::value_lightCallback, this);

    if (simulation_mode) {
        ros::Subscriber simulatedSensorsValues = n.subscribe("simulated_sensors", 1000, &NXT_interface::simulatedSensorsValuesCallback, this);
    }

    ROS_INFO("Button, sonar and light services ready");
    ros::spin();
}


/// call-back method button status/value
bool NXT_interface::value_buttonCallback(ros_lab2task2::RbuttonStatus::Request & req,
                                         ros_lab2task2::RbuttonStatus::Response& res) {
    if (!simulation_mode) {
        res.right_pressed = sensor_right->getValue();
        res.left_pressed = (true == sensor_left->getValue());
    } else {
        res.left_pressed = left_pressed;
        res.right_pressed = right_pressed;
    }
}


/// call-back method SONAR status/value
bool NXT_interface::value_sonarCallback(ros_lab2task2::RsonarStatus::Request & req,
                                          ros_lab2task2::RsonarStatus::Response& res) {
    if (!simulation_mode) {
        res.distance = sensor_sonar->getValue();
    } else {
        res.distance = sonar_value;
    }
}


/// call-back method Light status/value
bool NXT_interface::value_lightCallback(ros_lab2task2::RlightStatus::Request & req,
                                          ros_lab2task2::RlightStatus::Response& res) {
    if (!simulation_mode) {
        res.light = sensor_light->getValue();
    } else {
        res.light = light_value;
    }
}


/// call-back method robot_control
void NXT_interface::robotCallback(const ros_lab2task2::Rrobot::ConstPtr& msg) {
    int leftPower = msg->leftMotor.power; 
    int rightPower = msg->rightMotor.power; 

    if ((leftPower) && (100 >= leftPower))
        if (!simulation_mode) {
            motor_left->setForward(leftPower);
        } else {
            ROS_INFO("motor_left->setForward(%i);", leftPower);
        }
    else { 
        // negative values should be back
        leftPower = - leftPower;
        if ((leftPower) && (100 >= leftPower)) {
            if (!simulation_mode) {
                motor_left->setReverse(leftPower);
            } else {
                ROS_INFO("motor_left->setReverse(%i);", leftPower);
            }
        } else { 
            if (!simulation_mode) {
                motor_left->stop(false);
            } else  {
                ROS_INFO("motor_left->stop(false);");
            }
        } 
    }

    if ((rightPower) && (100 >= rightPower)) {
        if (!simulation_mode) {
            motor_right->setForward(rightPower);
        } else {
            ROS_INFO("motor_right->setForward(%i);", rightPower);
        }
    } else {
        rightPower = -rightPower;
        if ((rightPower) && (100 >= rightPower)) {
            if (!simulation_mode) {
                motor_right->setForward(rightPower);
            } else {
                ROS_INFO("motor_right->setForward(%i);", rightPower);
            }
        } else {
            if (!simulation_mode) {
                motor_right->stop(false);
            } else {
                ROS_INFO("motor_right->stop(false);");
            }
        } 
    }
}


void NXT_interface::simulatedSensorsValuesCallback(const ros_lab2task2::Rsimulation::ConstPtr& msg) {
    left_pressed = static_cast<int>(msg->left_pressed);
    right_pressed = static_cast<int>(msg->right_pressed);
    sonar_value = static_cast<int>(msg->sonar_value);
    light_value = static_cast<int>(msg->light_value);
}
