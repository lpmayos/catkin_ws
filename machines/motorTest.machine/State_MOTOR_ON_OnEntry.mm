ros_webots_epuck_nxt_differential_robot::Rrobot msg;
msg.leftMotor.power= 50;
msg.rightMotor.power= 50;
msg.leftButtonSwitch.on=false;
msg.rightButtonSwitch.on=false;
robot_pub.publish(msg);
ros::spinOnce();
