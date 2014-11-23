#include "ros_lab2task2a/nxt_interface.h"

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
        simulation_mode = true;
        ROS_INFO("No nxt Robot detected --> SIMULATION MODE ON");
        // vull algo que desde command line pugui fer:
        // rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[2.0, 0.0, 0.0]' '[0.0, 0.0, 1.8]'
        // rostopic pub [topic] [msg_type] [args]
        // ros::NodeHandle* n = new ros::NodeHandle();
        // ros::Publisher simulation_pub = n->advertise<ros_lab2task2a::Rsimulation>("simulation", 1000);
    }
}


void NXT_interface ::  run(int argc, char **argv) {
    if (nxt != nullptr) {
        ros::init(argc, argv, "nxt_driver");
        ros::NodeHandle n;

        ros::Subscriber subRobot = n.subscribe("robot", 1000, & NXT_interface::robotCallback,this);

        ros::ServiceServer serviceStatusButton = n.advertiseService("buttonstatus",  & NXT_interface::value_buttonCallback,this);
        ros::ServiceServer serviceStatusSonar = n.advertiseService("sonarstatus",  & NXT_interface::value_sonarCallback,this);
        ros::ServiceServer serviceStatusLight = n.advertiseService("lightstatus",  & NXT_interface::value_lightCallback,this);
        ROS_INFO("Button, sonar and light services ready");
        ros::spin();

        std::cerr<< "This EXITING sometimes does not happen when roscore goes down" << std::endl;
    }
}


/// call-back method button status/value
bool NXT_interface :: value_buttonCallback(ros_lab2task2a::RbuttonStatus::Request & req,
                                           ros_lab2task2a::RbuttonStatus::Response& res) {
    if (!simulation_mode) {
        res.right_pressed = sensor_right->getValue();
        res.left_pressed = (true == sensor_left->getValue());
    } else {
        std::cout << "Please enter a simulated value for left_pressed (0 or 1)" << std::endl;
        std::cin >> res.left_pressed;
        std::cout << std::endl;
        std::cout << "Please enter a simulated value for right_pressed (0 or 1)" << std::endl;
        std::cin >> res.right_pressed;
        std::cout << std::endl;
    }
}


/// call-back method SONAR status/value
bool NXT_interface :: value_sonarCallback(ros_lab2task2a::RsonarStatus::Request & req,
                                          ros_lab2task2a::RsonarStatus::Response& res) {
    if (!simulation_mode) {
        res.distance = sensor_sonar->getValue();
    } else {
        std::cout << "Please enter a simulated value for sensor_sonar (an integer between 0 and 255)" << std::endl;
        std::cin >> res.distance;
        std::cout << std::endl;
    }
}


/// call-back method Light status/value
bool NXT_interface :: value_lightCallback(ros_lab2task2a::RlightStatus::Request & req,
                                          ros_lab2task2a::RlightStatus::Response& res) {
    if (!simulation_mode) {
        res.light = sensor_light->getValue();
    } else {
        std::cout << "Please enter a simulated value for sensor_light (an integer between -255 and 255)" << std::endl;
        std::cin >> res.light;
        std::cout << std::endl;
    }
}


// call-back method robot_control
void NXT_interface :: robotCallback(const ros_lab2task2a::Rrobot::ConstPtr& msg) {
    int leftPower = msg->leftMotor.power; 
    int rightPower = msg->rightMotor.power; 

    if ( (leftPower) && (100 >= leftPower) )
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
