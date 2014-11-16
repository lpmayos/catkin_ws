int argc = 0;
static char *argv[] = { "blindturtlebot" };

ros::init(argc, argv, "blindturtlebot");
n=new ros::NodeHandle();
pos_n=new ros::NodeHandle();
msg= new  geometry_msgs::Twist();

chatter_pub = n->advertise<geometry_msgs::Twist>("/turtle1/cmd_vel", 1000);

client = pos_n->serviceClient<turtle_sensor_poster::TurtlePosition>("turtle_position");

msg->linear.x = 0.0;
msg->linear.y = 0.0;
msg->linear.z = 0.0;

msg->angular.x = 0.0;
msg->angular.y = 0.0;
msg->angular.z = 0.0;
