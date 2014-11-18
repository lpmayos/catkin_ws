std_msgs::String msg;

std::stringstream ss;
ss << "yuhuuu yeyyyy " << count;
msg.data = ss.str();

ROS_INFO("%s", msg.data.c_str());
chatter_pub.publish(msg);
