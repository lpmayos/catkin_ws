int argc = 0;
static char *argv[] = { "pingpong" };

ros::init(argc, argv, "pingpong");
n=new ros::NodeHandle();

chatter_pub = n->advertise<std_msgs::String>("pinpong", 1000);

count = 0;
