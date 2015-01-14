#include "r2d2_base.h"
#pragma clang diagnostic ignored "-Wold-style-cast"
#include "usb.h"
#pragma clang diagnostic pop

#include "ros/ros.h"
#include "ros_lab2task2/Rmotor.h"
#include "ros_lab2task2/Rsimulation.h"
#include "ros_lab2task2/Rbutton.h"
#include "ros_lab2task2/Rrobot.h"
#include "ros_lab2task2/RbuttonStatus.h"
#include "ros_lab2task2/RsonarStatus.h"
#include "ros_lab2task2/RlightStatus.h"


class NXT_interface {
public:
    ///< constructor
    NXT_interface();

    void run(int argc, char **argv);

    /// call-back method robot
    void   robotCallback(const ros_lab2task2::Rrobot::ConstPtr& msg);

    /// call-back method button status/value
    bool value_buttonCallback(
             ros_lab2task2::RbuttonStatus::Request & req,
             ros_lab2task2::RbuttonStatus::Response& res);

    bool value_sonarCallback(
             ros_lab2task2::RsonarStatus::Request & req,
             ros_lab2task2::RsonarStatus::Response& res);

    bool value_lightCallback(
             ros_lab2task2::RlightStatus::Request & req,
             ros_lab2task2::RlightStatus::Response& res);

    void simulatedSensorsValuesCallback(const ros_lab2task2::Rsimulation::ConstPtr& msg);


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
    int left_pressed;
    int right_pressed;
    int sonar_value;
    int light_value;
};
