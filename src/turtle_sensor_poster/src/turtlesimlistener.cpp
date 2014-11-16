/*
 *
 *	(c) 2014 Vlad Estivill-Castro
 *	A subscriber that becomes a service to logic-label-finite state machines.
 *      Based on Jonathan Ferrer code
 */

#include "ros/ros.h"
#include "turtlesim/Pose.h"
#include "turtle_sensor_poster/TurtlePosition.h"

double xPosition;
double yPosition;
double theta;

/**
 * Read the Published Service from turtlesim_node
 */
void poseCallback (const turtlesim::Pose::ConstPtr& msg)
{
  ROS_INFO("X: [%f]", msg->x);
  ROS_INFO("Y: [%f]", msg->y);
  xPosition = msg->x;
  yPosition = msg->y;
  theta = msg->theta;
}

bool postPosition( turtle_sensor_poster::TurtlePosition::Request  &req,
		 turtle_sensor_poster::TurtlePosition::Response &res)
{
    ROS_INFO("sending back response: X:[%f] Y:[%f] Theta:[%f]", xPosition, yPosition, theta);
	res.x = (int64_t) xPosition;
	res.y = (int64_t) yPosition;
	res.theta = (double) theta;
	return true;
}
int main(int argc, char **argv)
{
  /**
   * name for this as a ROS:node
   */
  ros::init(argc, argv, "turtlesimlistener");

  /**
   * we always need a handle
   */
  ros::NodeHandle n;

  /**
   * The subscribe() call 
   */
  ros::Subscriber sub = n.subscribe("/turtle1/pose", 1000, poseCallback);

  /**
   */

  ros::ServiceServer service = n.advertiseService("turtle_position", postPosition);
  ROS_INFO("Ready to twit message about the turtle position.");

  ros::spin();

  return 0;
}
