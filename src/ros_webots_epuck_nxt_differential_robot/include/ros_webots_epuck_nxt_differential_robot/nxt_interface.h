#include "r2d2_base.h"
#pragma clang diagnostic ignored "-Wold-style-cast"
#include "usb.h"
#pragma clang diagnostic pop

#include "ros/ros.h"
#include "ros_webots_epuck_nxt_differential_robot/Rmotor.h"
#include "ros_webots_epuck_nxt_differential_robot/Rbutton.h"
#include "ros_webots_epuck_nxt_differential_robot/Rsonar.h" 
#include "ros_webots_epuck_nxt_differential_robot/Rrobot.h"
#include "ros_webots_epuck_nxt_differential_robot/RbuttonStatus.h"
#include "ros_webots_epuck_nxt_differential_robot/RsonarStatus.h"
#include "ros_webots_epuck_nxt_differential_robot/RlightStatus.h"


class NXT_interface {
public:
    ///< constructor
    NXT_interface();

    void run(int argc, char **argv);

    /// call-back method robot
    void   robotCallback(const ros_webots_epuck_nxt_differential_robot::Rrobot::ConstPtr& msg);

    /// call-back method button status/value
    bool value_buttonCallback(
             ros_webots_epuck_nxt_differential_robot::RbuttonStatus::Request & req,
             ros_webots_epuck_nxt_differential_robot::RbuttonStatus::Response& res);

    bool value_sonarCallback(
             ros_webots_epuck_nxt_differential_robot::RsonarStatus::Request & req,
             ros_webots_epuck_nxt_differential_robot::RsonarStatus::Response& res);

    bool value_lightCallback(
             ros_webots_epuck_nxt_differential_robot::RlightStatus::Request & req,
             ros_webots_epuck_nxt_differential_robot::RlightStatus::Response& res);

private:
    r2d2::Brick* brick;
    r2d2::NXT* nxt;
    r2d2::Sensor* sensor_left; 
    r2d2::Sensor* sensor_right;
    r2d2::Sensor* sensor_sonar;
    r2d2::Sensor* sensor_light;
    r2d2::Motor* motor_right; 
    r2d2::Motor* motor_left;
    bool simulation_mode = false;
};
