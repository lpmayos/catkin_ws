ros_lab2task2::Rmotor msg;
msg.power=0;
ROS_INFO("%d", msg.power);
robot_pub.publish(msg);
ros::spinOnce();
