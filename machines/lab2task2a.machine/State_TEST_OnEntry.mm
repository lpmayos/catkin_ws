ros_lab2task2::Rrobot msg;
msg.leftMotor.power = 0;
msg.rightMotor.power = 0;
robot_pub.publish(msg);
ros::spinOnce();

client.call(srv);
client2.call(srv2);
client3.call(srv3);

buttonPushed = static_cast<bool>(srv.response.left_pressed) || static_cast<bool>(srv.response.right_pressed) ;

ROS_INFO("sonar dist: %i", static_cast<int>(srv2.response.distance)); 
distanceValue = srv2.response.distance;
objectDetected =  distanceValue < 40;

ROS_INFO("Light value: %i", static_cast<int>(srv3.response.light));
lightValue = srv3.response.light;
floorMissing = lightValue < 100;
