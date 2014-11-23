#include "r2d2_base.h"
#pragma clang diagnostic ignored "-Wold-style-cast"
#include "usb.h"
#pragma clang diagnostic pop

#include "ros/ros.h"
#include "ros_lab2task2a/Rmotor.h"
#include "ros_lab2task2a/Rsimulation.h"
#include "ros_lab2task2a/Rbutton.h"
#include "ros_lab2task2a/Rrobot.h"
#include "ros_lab2task2a/RbuttonStatus.h"
#include "ros_lab2task2a/RsonarStatus.h"
#include "ros_lab2task2a/RlightStatus.h"


class NXT_interface {
public:
    ///< constructor
    NXT_interface();

    void run(int argc, char **argv);

    /// call-back method robot
    void   robotCallback(const ros_lab2task2a::Rrobot::ConstPtr& msg);

    /// call-back method button status/value
    bool value_buttonCallback(
             ros_lab2task2a::RbuttonStatus::Request & req,
             ros_lab2task2a::RbuttonStatus::Response& res);

    bool value_sonarCallback(
             ros_lab2task2a::RsonarStatus::Request & req,
             ros_lab2task2a::RsonarStatus::Response& res);

    bool value_lightCallback(
             ros_lab2task2a::RlightStatus::Request & req,
             ros_lab2task2a::RlightStatus::Response& res);

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
