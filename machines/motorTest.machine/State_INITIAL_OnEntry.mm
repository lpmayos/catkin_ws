int argc = 0;
static char *argv[] = { "motortest" } ;
ros::init(argc, argv, "motortest");
n=new ros::NodeHandle();
robot_pub = n->advertise<ros_webots_epuck_nxt_differential_robot::Rrobot>("robot", 1000);
client = n->serviceClient<ros_webots_epuck_nxt_differential_robot::RbuttonStatus>("buttonstatus");
client2 = n->serviceClient<ros_webots_epuck_nxt_differential_robot::RsonarStatus>("sonarstatus");
client3 = n->serviceClient<ros_webots_epuck_nxt_differential_robot::RlightStatus>("lightstatus");
ROS_INFO("INITIAL STATE");
