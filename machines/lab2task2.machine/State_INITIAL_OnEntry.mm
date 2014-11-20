int argc = 0;
static char *argv[] = { "lab2task2" } ;
ros::init(argc, argv, "lab2task2");
n=new ros::NodeHandle();
robot_pub = n->advertise<lpmayos_ros_webots_epuck_nxt_differential_robot::Rrobot>("robot", 1000);
client = n->serviceClient<lpmayos_ros_webots_epuck_nxt_differential_robot::RbuttonStatus>("buttonstatus");
