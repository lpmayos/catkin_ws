ros_webots_epuck_nxt_differential_robot::Rrobot msg;
msg.leftMotor.power=-50;
msg.rightMotor.power=-50;
robot_pub.publish(msg);

random_turn_left = (random() % 2) ? true : false;
