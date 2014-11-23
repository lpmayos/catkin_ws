# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "ros_webots_epuck_nxt_differential_robot: 5 messages, 3 services")

set(MSG_I_FLAGS "-Iros_webots_epuck_nxt_differential_robot:/home/upf/code/catkin_ws/src/ros_webots_epuck_nxt_differential_robot/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(ros_webots_epuck_nxt_differential_robot_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/upf/code/catkin_ws/src/ros_webots_epuck_nxt_differential_robot/msg/Rrobot.msg" NAME_WE)
add_custom_target(_ros_webots_epuck_nxt_differential_robot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_webots_epuck_nxt_differential_robot" "/home/upf/code/catkin_ws/src/ros_webots_epuck_nxt_differential_robot/msg/Rrobot.msg" "ros_webots_epuck_nxt_differential_robot/Rmotor:std_msgs/Header"
)

get_filename_component(_filename "/home/upf/code/catkin_ws/src/ros_webots_epuck_nxt_differential_robot/srv/RlightStatus.srv" NAME_WE)
add_custom_target(_ros_webots_epuck_nxt_differential_robot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_webots_epuck_nxt_differential_robot" "/home/upf/code/catkin_ws/src/ros_webots_epuck_nxt_differential_robot/srv/RlightStatus.srv" ""
)

get_filename_component(_filename "/home/upf/code/catkin_ws/src/ros_webots_epuck_nxt_differential_robot/srv/RbuttonStatus.srv" NAME_WE)
add_custom_target(_ros_webots_epuck_nxt_differential_robot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_webots_epuck_nxt_differential_robot" "/home/upf/code/catkin_ws/src/ros_webots_epuck_nxt_differential_robot/srv/RbuttonStatus.srv" ""
)

get_filename_component(_filename "/home/upf/code/catkin_ws/src/ros_webots_epuck_nxt_differential_robot/msg/Rencoder.msg" NAME_WE)
add_custom_target(_ros_webots_epuck_nxt_differential_robot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_webots_epuck_nxt_differential_robot" "/home/upf/code/catkin_ws/src/ros_webots_epuck_nxt_differential_robot/msg/Rencoder.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/upf/code/catkin_ws/src/ros_webots_epuck_nxt_differential_robot/srv/RsonarStatus.srv" NAME_WE)
add_custom_target(_ros_webots_epuck_nxt_differential_robot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_webots_epuck_nxt_differential_robot" "/home/upf/code/catkin_ws/src/ros_webots_epuck_nxt_differential_robot/srv/RsonarStatus.srv" ""
)

get_filename_component(_filename "/home/upf/code/catkin_ws/src/ros_webots_epuck_nxt_differential_robot/msg/Rmotor.msg" NAME_WE)
add_custom_target(_ros_webots_epuck_nxt_differential_robot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_webots_epuck_nxt_differential_robot" "/home/upf/code/catkin_ws/src/ros_webots_epuck_nxt_differential_robot/msg/Rmotor.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/upf/code/catkin_ws/src/ros_webots_epuck_nxt_differential_robot/msg/Rbutton.msg" NAME_WE)
add_custom_target(_ros_webots_epuck_nxt_differential_robot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_webots_epuck_nxt_differential_robot" "/home/upf/code/catkin_ws/src/ros_webots_epuck_nxt_differential_robot/msg/Rbutton.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/upf/code/catkin_ws/src/ros_webots_epuck_nxt_differential_robot/msg/Rsimulation.msg" NAME_WE)
add_custom_target(_ros_webots_epuck_nxt_differential_robot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_webots_epuck_nxt_differential_robot" "/home/upf/code/catkin_ws/src/ros_webots_epuck_nxt_differential_robot/msg/Rsimulation.msg" "std_msgs/Header"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(ros_webots_epuck_nxt_differential_robot
  "/home/upf/code/catkin_ws/src/ros_webots_epuck_nxt_differential_robot/msg/Rmotor.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_webots_epuck_nxt_differential_robot
)
_generate_msg_cpp(ros_webots_epuck_nxt_differential_robot
  "/home/upf/code/catkin_ws/src/ros_webots_epuck_nxt_differential_robot/msg/Rrobot.msg"
  "${MSG_I_FLAGS}"
  "/home/upf/code/catkin_ws/src/ros_webots_epuck_nxt_differential_robot/msg/Rmotor.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_webots_epuck_nxt_differential_robot
)
_generate_msg_cpp(ros_webots_epuck_nxt_differential_robot
  "/home/upf/code/catkin_ws/src/ros_webots_epuck_nxt_differential_robot/msg/Rencoder.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_webots_epuck_nxt_differential_robot
)
_generate_msg_cpp(ros_webots_epuck_nxt_differential_robot
  "/home/upf/code/catkin_ws/src/ros_webots_epuck_nxt_differential_robot/msg/Rbutton.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_webots_epuck_nxt_differential_robot
)
_generate_msg_cpp(ros_webots_epuck_nxt_differential_robot
  "/home/upf/code/catkin_ws/src/ros_webots_epuck_nxt_differential_robot/msg/Rsimulation.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_webots_epuck_nxt_differential_robot
)

### Generating Services
_generate_srv_cpp(ros_webots_epuck_nxt_differential_robot
  "/home/upf/code/catkin_ws/src/ros_webots_epuck_nxt_differential_robot/srv/RsonarStatus.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_webots_epuck_nxt_differential_robot
)
_generate_srv_cpp(ros_webots_epuck_nxt_differential_robot
  "/home/upf/code/catkin_ws/src/ros_webots_epuck_nxt_differential_robot/srv/RbuttonStatus.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_webots_epuck_nxt_differential_robot
)
_generate_srv_cpp(ros_webots_epuck_nxt_differential_robot
  "/home/upf/code/catkin_ws/src/ros_webots_epuck_nxt_differential_robot/srv/RlightStatus.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_webots_epuck_nxt_differential_robot
)

### Generating Module File
_generate_module_cpp(ros_webots_epuck_nxt_differential_robot
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_webots_epuck_nxt_differential_robot
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(ros_webots_epuck_nxt_differential_robot_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(ros_webots_epuck_nxt_differential_robot_generate_messages ros_webots_epuck_nxt_differential_robot_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/upf/code/catkin_ws/src/ros_webots_epuck_nxt_differential_robot/msg/Rrobot.msg" NAME_WE)
add_dependencies(ros_webots_epuck_nxt_differential_robot_generate_messages_cpp _ros_webots_epuck_nxt_differential_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/upf/code/catkin_ws/src/ros_webots_epuck_nxt_differential_robot/srv/RlightStatus.srv" NAME_WE)
add_dependencies(ros_webots_epuck_nxt_differential_robot_generate_messages_cpp _ros_webots_epuck_nxt_differential_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/upf/code/catkin_ws/src/ros_webots_epuck_nxt_differential_robot/srv/RbuttonStatus.srv" NAME_WE)
add_dependencies(ros_webots_epuck_nxt_differential_robot_generate_messages_cpp _ros_webots_epuck_nxt_differential_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/upf/code/catkin_ws/src/ros_webots_epuck_nxt_differential_robot/msg/Rencoder.msg" NAME_WE)
add_dependencies(ros_webots_epuck_nxt_differential_robot_generate_messages_cpp _ros_webots_epuck_nxt_differential_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/upf/code/catkin_ws/src/ros_webots_epuck_nxt_differential_robot/srv/RsonarStatus.srv" NAME_WE)
add_dependencies(ros_webots_epuck_nxt_differential_robot_generate_messages_cpp _ros_webots_epuck_nxt_differential_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/upf/code/catkin_ws/src/ros_webots_epuck_nxt_differential_robot/msg/Rmotor.msg" NAME_WE)
add_dependencies(ros_webots_epuck_nxt_differential_robot_generate_messages_cpp _ros_webots_epuck_nxt_differential_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/upf/code/catkin_ws/src/ros_webots_epuck_nxt_differential_robot/msg/Rbutton.msg" NAME_WE)
add_dependencies(ros_webots_epuck_nxt_differential_robot_generate_messages_cpp _ros_webots_epuck_nxt_differential_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/upf/code/catkin_ws/src/ros_webots_epuck_nxt_differential_robot/msg/Rsimulation.msg" NAME_WE)
add_dependencies(ros_webots_epuck_nxt_differential_robot_generate_messages_cpp _ros_webots_epuck_nxt_differential_robot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_webots_epuck_nxt_differential_robot_gencpp)
add_dependencies(ros_webots_epuck_nxt_differential_robot_gencpp ros_webots_epuck_nxt_differential_robot_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_webots_epuck_nxt_differential_robot_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(ros_webots_epuck_nxt_differential_robot
  "/home/upf/code/catkin_ws/src/ros_webots_epuck_nxt_differential_robot/msg/Rmotor.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_webots_epuck_nxt_differential_robot
)
_generate_msg_lisp(ros_webots_epuck_nxt_differential_robot
  "/home/upf/code/catkin_ws/src/ros_webots_epuck_nxt_differential_robot/msg/Rrobot.msg"
  "${MSG_I_FLAGS}"
  "/home/upf/code/catkin_ws/src/ros_webots_epuck_nxt_differential_robot/msg/Rmotor.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_webots_epuck_nxt_differential_robot
)
_generate_msg_lisp(ros_webots_epuck_nxt_differential_robot
  "/home/upf/code/catkin_ws/src/ros_webots_epuck_nxt_differential_robot/msg/Rencoder.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_webots_epuck_nxt_differential_robot
)
_generate_msg_lisp(ros_webots_epuck_nxt_differential_robot
  "/home/upf/code/catkin_ws/src/ros_webots_epuck_nxt_differential_robot/msg/Rbutton.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_webots_epuck_nxt_differential_robot
)
_generate_msg_lisp(ros_webots_epuck_nxt_differential_robot
  "/home/upf/code/catkin_ws/src/ros_webots_epuck_nxt_differential_robot/msg/Rsimulation.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_webots_epuck_nxt_differential_robot
)

### Generating Services
_generate_srv_lisp(ros_webots_epuck_nxt_differential_robot
  "/home/upf/code/catkin_ws/src/ros_webots_epuck_nxt_differential_robot/srv/RsonarStatus.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_webots_epuck_nxt_differential_robot
)
_generate_srv_lisp(ros_webots_epuck_nxt_differential_robot
  "/home/upf/code/catkin_ws/src/ros_webots_epuck_nxt_differential_robot/srv/RbuttonStatus.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_webots_epuck_nxt_differential_robot
)
_generate_srv_lisp(ros_webots_epuck_nxt_differential_robot
  "/home/upf/code/catkin_ws/src/ros_webots_epuck_nxt_differential_robot/srv/RlightStatus.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_webots_epuck_nxt_differential_robot
)

### Generating Module File
_generate_module_lisp(ros_webots_epuck_nxt_differential_robot
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_webots_epuck_nxt_differential_robot
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(ros_webots_epuck_nxt_differential_robot_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(ros_webots_epuck_nxt_differential_robot_generate_messages ros_webots_epuck_nxt_differential_robot_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/upf/code/catkin_ws/src/ros_webots_epuck_nxt_differential_robot/msg/Rrobot.msg" NAME_WE)
add_dependencies(ros_webots_epuck_nxt_differential_robot_generate_messages_lisp _ros_webots_epuck_nxt_differential_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/upf/code/catkin_ws/src/ros_webots_epuck_nxt_differential_robot/srv/RlightStatus.srv" NAME_WE)
add_dependencies(ros_webots_epuck_nxt_differential_robot_generate_messages_lisp _ros_webots_epuck_nxt_differential_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/upf/code/catkin_ws/src/ros_webots_epuck_nxt_differential_robot/srv/RbuttonStatus.srv" NAME_WE)
add_dependencies(ros_webots_epuck_nxt_differential_robot_generate_messages_lisp _ros_webots_epuck_nxt_differential_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/upf/code/catkin_ws/src/ros_webots_epuck_nxt_differential_robot/msg/Rencoder.msg" NAME_WE)
add_dependencies(ros_webots_epuck_nxt_differential_robot_generate_messages_lisp _ros_webots_epuck_nxt_differential_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/upf/code/catkin_ws/src/ros_webots_epuck_nxt_differential_robot/srv/RsonarStatus.srv" NAME_WE)
add_dependencies(ros_webots_epuck_nxt_differential_robot_generate_messages_lisp _ros_webots_epuck_nxt_differential_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/upf/code/catkin_ws/src/ros_webots_epuck_nxt_differential_robot/msg/Rmotor.msg" NAME_WE)
add_dependencies(ros_webots_epuck_nxt_differential_robot_generate_messages_lisp _ros_webots_epuck_nxt_differential_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/upf/code/catkin_ws/src/ros_webots_epuck_nxt_differential_robot/msg/Rbutton.msg" NAME_WE)
add_dependencies(ros_webots_epuck_nxt_differential_robot_generate_messages_lisp _ros_webots_epuck_nxt_differential_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/upf/code/catkin_ws/src/ros_webots_epuck_nxt_differential_robot/msg/Rsimulation.msg" NAME_WE)
add_dependencies(ros_webots_epuck_nxt_differential_robot_generate_messages_lisp _ros_webots_epuck_nxt_differential_robot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_webots_epuck_nxt_differential_robot_genlisp)
add_dependencies(ros_webots_epuck_nxt_differential_robot_genlisp ros_webots_epuck_nxt_differential_robot_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_webots_epuck_nxt_differential_robot_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(ros_webots_epuck_nxt_differential_robot
  "/home/upf/code/catkin_ws/src/ros_webots_epuck_nxt_differential_robot/msg/Rmotor.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_webots_epuck_nxt_differential_robot
)
_generate_msg_py(ros_webots_epuck_nxt_differential_robot
  "/home/upf/code/catkin_ws/src/ros_webots_epuck_nxt_differential_robot/msg/Rrobot.msg"
  "${MSG_I_FLAGS}"
  "/home/upf/code/catkin_ws/src/ros_webots_epuck_nxt_differential_robot/msg/Rmotor.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_webots_epuck_nxt_differential_robot
)
_generate_msg_py(ros_webots_epuck_nxt_differential_robot
  "/home/upf/code/catkin_ws/src/ros_webots_epuck_nxt_differential_robot/msg/Rencoder.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_webots_epuck_nxt_differential_robot
)
_generate_msg_py(ros_webots_epuck_nxt_differential_robot
  "/home/upf/code/catkin_ws/src/ros_webots_epuck_nxt_differential_robot/msg/Rbutton.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_webots_epuck_nxt_differential_robot
)
_generate_msg_py(ros_webots_epuck_nxt_differential_robot
  "/home/upf/code/catkin_ws/src/ros_webots_epuck_nxt_differential_robot/msg/Rsimulation.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_webots_epuck_nxt_differential_robot
)

### Generating Services
_generate_srv_py(ros_webots_epuck_nxt_differential_robot
  "/home/upf/code/catkin_ws/src/ros_webots_epuck_nxt_differential_robot/srv/RsonarStatus.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_webots_epuck_nxt_differential_robot
)
_generate_srv_py(ros_webots_epuck_nxt_differential_robot
  "/home/upf/code/catkin_ws/src/ros_webots_epuck_nxt_differential_robot/srv/RbuttonStatus.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_webots_epuck_nxt_differential_robot
)
_generate_srv_py(ros_webots_epuck_nxt_differential_robot
  "/home/upf/code/catkin_ws/src/ros_webots_epuck_nxt_differential_robot/srv/RlightStatus.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_webots_epuck_nxt_differential_robot
)

### Generating Module File
_generate_module_py(ros_webots_epuck_nxt_differential_robot
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_webots_epuck_nxt_differential_robot
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(ros_webots_epuck_nxt_differential_robot_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(ros_webots_epuck_nxt_differential_robot_generate_messages ros_webots_epuck_nxt_differential_robot_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/upf/code/catkin_ws/src/ros_webots_epuck_nxt_differential_robot/msg/Rrobot.msg" NAME_WE)
add_dependencies(ros_webots_epuck_nxt_differential_robot_generate_messages_py _ros_webots_epuck_nxt_differential_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/upf/code/catkin_ws/src/ros_webots_epuck_nxt_differential_robot/srv/RlightStatus.srv" NAME_WE)
add_dependencies(ros_webots_epuck_nxt_differential_robot_generate_messages_py _ros_webots_epuck_nxt_differential_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/upf/code/catkin_ws/src/ros_webots_epuck_nxt_differential_robot/srv/RbuttonStatus.srv" NAME_WE)
add_dependencies(ros_webots_epuck_nxt_differential_robot_generate_messages_py _ros_webots_epuck_nxt_differential_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/upf/code/catkin_ws/src/ros_webots_epuck_nxt_differential_robot/msg/Rencoder.msg" NAME_WE)
add_dependencies(ros_webots_epuck_nxt_differential_robot_generate_messages_py _ros_webots_epuck_nxt_differential_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/upf/code/catkin_ws/src/ros_webots_epuck_nxt_differential_robot/srv/RsonarStatus.srv" NAME_WE)
add_dependencies(ros_webots_epuck_nxt_differential_robot_generate_messages_py _ros_webots_epuck_nxt_differential_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/upf/code/catkin_ws/src/ros_webots_epuck_nxt_differential_robot/msg/Rmotor.msg" NAME_WE)
add_dependencies(ros_webots_epuck_nxt_differential_robot_generate_messages_py _ros_webots_epuck_nxt_differential_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/upf/code/catkin_ws/src/ros_webots_epuck_nxt_differential_robot/msg/Rbutton.msg" NAME_WE)
add_dependencies(ros_webots_epuck_nxt_differential_robot_generate_messages_py _ros_webots_epuck_nxt_differential_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/upf/code/catkin_ws/src/ros_webots_epuck_nxt_differential_robot/msg/Rsimulation.msg" NAME_WE)
add_dependencies(ros_webots_epuck_nxt_differential_robot_generate_messages_py _ros_webots_epuck_nxt_differential_robot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_webots_epuck_nxt_differential_robot_genpy)
add_dependencies(ros_webots_epuck_nxt_differential_robot_genpy ros_webots_epuck_nxt_differential_robot_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_webots_epuck_nxt_differential_robot_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_webots_epuck_nxt_differential_robot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_webots_epuck_nxt_differential_robot
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(ros_webots_epuck_nxt_differential_robot_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_webots_epuck_nxt_differential_robot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_webots_epuck_nxt_differential_robot
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(ros_webots_epuck_nxt_differential_robot_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_webots_epuck_nxt_differential_robot)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_webots_epuck_nxt_differential_robot\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_webots_epuck_nxt_differential_robot
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(ros_webots_epuck_nxt_differential_robot_generate_messages_py std_msgs_generate_messages_py)
