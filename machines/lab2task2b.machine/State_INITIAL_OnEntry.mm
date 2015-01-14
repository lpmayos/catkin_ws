int argc = 0;
static char *argv[] = { "lab2task2a" } ;
ros::init(argc, argv, "lab2task2a");
n=new ros::NodeHandle();
robot_pub = n->advertise<ros_lab2task2::Rrobot>("robot", 1000);
client = n->serviceClient<ros_lab2task2::RbuttonStatus>("buttonstatus");
client2 = n->serviceClient<ros_lab2task2::RsonarStatus>("sonarstatus");
client3 = n->serviceClient<ros_lab2task2::RlightStatus>("lightstatus");
ROS_INFO("INITIAL STATE");
