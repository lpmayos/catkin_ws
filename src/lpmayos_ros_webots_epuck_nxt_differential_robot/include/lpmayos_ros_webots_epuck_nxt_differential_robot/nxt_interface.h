#include "r2d2_base.h"
#pragma clang diagnostic ignored "-Wold-style-cast"
#include "usb.h"
#pragma clang diagnostic pop

#include "ros/ros.h"
#include "lpmayos_ros_webots_epuck_nxt_differential_robot/Rmotor.h"
#include "lpmayos_ros_webots_epuck_nxt_differential_robot/Rbutton.h"
#include "lpmayos_ros_webots_epuck_nxt_differential_robot/Rrobot.h"
#include "lpmayos_ros_webots_epuck_nxt_differential_robot/RbuttonStatus.h"

class NXT_interface {
public:
    ///< constructor
    NXT_interface();

    void run(int argc, char **argv);

    /// call-back method robot
    void robotCallback(const lpmayos_ros_webots_epuck_nxt_differential_robot::Rrobot::ConstPtr& msg);

    /// call-back method button status/value
    bool value_buttonCallback(
        lpmayos_ros_webots_epuck_nxt_differential_robot::RbuttonStatus::Request & req,
        lpmayos_ros_webots_epuck_nxt_differential_robot::RbuttonStatus::Response& res);

private:
    r2d2::Brick* brick;
    r2d2::NXT* nxt;
    r2d2::Sensor* sensor_left;
    r2d2::Sensor* sensor_right;
    r2d2::Sensor* sensor_sonar;
    r2d2::Sensor* sensor_light;
    bool status_sensor_left;
    bool status_sensor_right;
    r2d2::Motor* motor_right;
    r2d2::Motor* motor_left;
};
