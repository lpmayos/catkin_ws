//
//lpmayosRosWallTurttleBot_VarRefs.mm
//
//Automatically created through MiEditCLFSM -- do not change manually!
//
lpmayosRosWallTurttleBot *_m = static_cast<lpmayosRosWallTurttleBot *>(_machine);

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wunused-variable"
#pragma clang diagnostic ignored "-Wshadow"

ros::NodeHandle*	&n= _m->n;	///<
ros::Publisher	&chatter_pub= _m->chatter_pub;	///<
geometry_msgs::Twist *	&msg= _m->msg;	///<
ros::ServiceClient	&client= _m->client;	///<
ros::NodeHandle*	&pos_n= _m->pos_n;	///<
long	&pos_x= _m->pos_x;	///<
long	&pos_y= _m->pos_y;	///<
turtle_sensor_poster::TurtlePosition	&srv= _m->srv;	///<

#pragma clang diagnostic pop
