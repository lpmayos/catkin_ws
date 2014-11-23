int argc = 0;
static char *argv[] = { "lab2task2a" } ;
ros::init(argc, argv, "lab2task2a");
n=new ros::NodeHandle();
robot_pub = n->advertise<ros_lab2task2a::Rrobot>("robot", 1000);
client = n->serviceClient<ros_lab2task2a::RbuttonStatus>("buttonstatus");
client2 = n->serviceClient<ros_lab2task2a::RsonarStatus>("sonarstatus");
client3 = n->serviceClient<ros_lab2task2a::RlightStatus>("lightstatus");
ROS_INFO("INITIAL STATE");
