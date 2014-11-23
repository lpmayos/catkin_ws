ros_lab2task2a::Rrobot msg;
msg.leftMotor.power = 50;
msg.rightMotor.power = 50;
robot_pub.publish(msg);
ros::spinOnce();
