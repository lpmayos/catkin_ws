ROS_INFO("TEST STATE");

ros_lab2task2::Rrobot msg;
msg.leftMotor.power = 0;
msg.rightMotor.power = 0;
robot_pub.publish(msg);
ros::spinOnce();

client.call(srv);
client2.call(srv2);
client3.call(srv3);

int left_pressed = srv.response.left_pressed;
int right_pressed = srv.response.right_pressed ;
int object_detected =  srv2.response.distance < 40;
int floor_missing = srv3.response.light < 100;

ostringstream oss;
oss << floor_missing << object_detected << right_pressed << left_pressed;
istringstream iss(oss.str());
iss >> environmentCondition;

if (environmentCondition == 0000) {
    // motors forward
    msg.leftMotor.power = 50;
    msg.rightMotor.power = 50;
    robot_pub.publish(msg);
} else if (environmentCondition == 1000 || environmentCondition == 1001 || environmentCondition == 1010 
          || environmentCondition == 1100 || environmentCondition == 1011 || environmentCondition == 1101 
          || environmentCondition == 1110 || environmentCondition == 1111)  {
    // backs very little
    msg.leftMotor.power = -50;
    msg.rightMotor.power = -50;
    robot_pub.publish(msg);
    usleep(200);
    // spins 180 degrees 
    msg.leftMotor.power = 50;
    msg.rightMotor.power = -50;
    robot_pub.publish(msg);
    usleep(1000);
    // continues forward
    msg.leftMotor.power = 50;
    msg.rightMotor.power = 50;
    robot_pub.publish(msg);
} else if (environmentCondition == 0100 || environmentCondition == 0101 || environmentCondition == 0110 
           || environmentCondition == 0111 || environmentCondition == 0011) {
    // motors backward
    msg.leftMotor.power = -50;
    msg.rightMotor.power = -50;
    robot_pub.publish(msg);
    usleep(500);
    // spins randomly
    random_turn_left = (random() % 2);
    if (random_turn_left) {
        msg.leftMotor.power = -50;
        msg.rightMotor.power = 50;
    } else {
        msg.leftMotor.power = 50;
        msg.rightMotor.power = -50;
    }
    robot_pub.publish(msg);
    usleep(500);
    // continues forward
    msg.leftMotor.power = 50;
    msg.rightMotor.power = 50;
    robot_pub.publish(msg);
} else if (environmentCondition == 0010) {
    // motors backward
    msg.leftMotor.power = -50;
    msg.rightMotor.power = -50;
    robot_pub.publish(msg);
    usleep(500);
    // spins left
    msg.leftMotor.power = -50;
    msg.rightMotor.power = 50;
    robot_pub.publish(msg);
    usleep(500);
    // continues forward
    msg.leftMotor.power = 50;
    msg.rightMotor.power = 50;
    robot_pub.publish(msg);
} else if (environmentCondition == 0001) {
    // motors backward
    msg.leftMotor.power = -50;
    msg.rightMotor.power = -50;
    robot_pub.publish(msg);
    usleep(500);
    // spins right
    msg.leftMotor.power = 50;
    msg.rightMotor.power = -50;
    robot_pub.publish(msg);
    usleep(500);
    // continues forward
    msg.leftMotor.power = 50;
    msg.rightMotor.power = 50;
    robot_pub.publish(msg);
}
