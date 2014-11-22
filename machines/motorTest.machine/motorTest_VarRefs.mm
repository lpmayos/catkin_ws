//
//motorTest_VarRefs.mm
//
//Automatically created through MiEditCLFSM -- do not change manually!
//
motorTest *_m = static_cast<motorTest *>(_machine);

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wunused-variable"
#pragma clang diagnostic ignored "-Wshadow"

ros::NodeHandle*	&n= _m->n;	///<
ros_webots_epuck_nxt_differential_robot::RbuttonStatus	&srv= _m->srv;	///<
ros::Publisher	&robot_pub= _m->robot_pub;	///<
bool	&buttonPushed= _m->buttonPushed;	///<
ros::ServiceClient	&client= _m->client;	///<
bool	&objectDetected= _m->objectDetected;	///<
ros_webots_epuck_nxt_differential_robot::RsonarStatus	&srv2= _m->srv2;	///<
ros::ServiceClient	&client2= _m->client2;	///<
int	&Distance= _m->Distance;	///<
ros_webots_epuck_nxt_differential_robot::RlightStatus	&srv3= _m->srv3;	///<
ros::ServiceClient	&client3= _m->client3;	///<
bool	&floorMissing= _m->floorMissing;	///<
int	&lightValue= _m->lightValue;	///<

#pragma clang diagnostic pop
