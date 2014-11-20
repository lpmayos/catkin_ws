; Auto-generated. Do not edit!


(cl:in-package ros_webots_epuck_nxt_differential_robot-msg)


;//! \htmlinclude Rrobot.msg.html

(cl:defclass <Rrobot> (roslisp-msg-protocol:ros-message)
  ((Rrobot
    :reader Rrobot
    :initarg :Rrobot
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (leftMotor
    :reader leftMotor
    :initarg :leftMotor
    :type ros_webots_epuck_nxt_differential_robot-msg:Rmotor
    :initform (cl:make-instance 'ros_webots_epuck_nxt_differential_robot-msg:Rmotor))
   (rightMotor
    :reader rightMotor
    :initarg :rightMotor
    :type ros_webots_epuck_nxt_differential_robot-msg:Rmotor
    :initform (cl:make-instance 'ros_webots_epuck_nxt_differential_robot-msg:Rmotor))
   (leftButtonSwitch
    :reader leftButtonSwitch
    :initarg :leftButtonSwitch
    :type ros_webots_epuck_nxt_differential_robot-msg:Rbutton
    :initform (cl:make-instance 'ros_webots_epuck_nxt_differential_robot-msg:Rbutton))
   (rightButtonSwitch
    :reader rightButtonSwitch
    :initarg :rightButtonSwitch
    :type ros_webots_epuck_nxt_differential_robot-msg:Rbutton
    :initform (cl:make-instance 'ros_webots_epuck_nxt_differential_robot-msg:Rbutton)))
)

(cl:defclass Rrobot (<Rrobot>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Rrobot>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Rrobot)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_webots_epuck_nxt_differential_robot-msg:<Rrobot> is deprecated: use ros_webots_epuck_nxt_differential_robot-msg:Rrobot instead.")))

(cl:ensure-generic-function 'Rrobot-val :lambda-list '(m))
(cl:defmethod Rrobot-val ((m <Rrobot>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_webots_epuck_nxt_differential_robot-msg:Rrobot-val is deprecated.  Use ros_webots_epuck_nxt_differential_robot-msg:Rrobot instead.")
  (Rrobot m))

(cl:ensure-generic-function 'leftMotor-val :lambda-list '(m))
(cl:defmethod leftMotor-val ((m <Rrobot>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_webots_epuck_nxt_differential_robot-msg:leftMotor-val is deprecated.  Use ros_webots_epuck_nxt_differential_robot-msg:leftMotor instead.")
  (leftMotor m))

(cl:ensure-generic-function 'rightMotor-val :lambda-list '(m))
(cl:defmethod rightMotor-val ((m <Rrobot>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_webots_epuck_nxt_differential_robot-msg:rightMotor-val is deprecated.  Use ros_webots_epuck_nxt_differential_robot-msg:rightMotor instead.")
  (rightMotor m))

(cl:ensure-generic-function 'leftButtonSwitch-val :lambda-list '(m))
(cl:defmethod leftButtonSwitch-val ((m <Rrobot>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_webots_epuck_nxt_differential_robot-msg:leftButtonSwitch-val is deprecated.  Use ros_webots_epuck_nxt_differential_robot-msg:leftButtonSwitch instead.")
  (leftButtonSwitch m))

(cl:ensure-generic-function 'rightButtonSwitch-val :lambda-list '(m))
(cl:defmethod rightButtonSwitch-val ((m <Rrobot>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_webots_epuck_nxt_differential_robot-msg:rightButtonSwitch-val is deprecated.  Use ros_webots_epuck_nxt_differential_robot-msg:rightButtonSwitch instead.")
  (rightButtonSwitch m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Rrobot>) ostream)
  "Serializes a message object of type '<Rrobot>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'Rrobot) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'leftMotor) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rightMotor) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'leftButtonSwitch) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rightButtonSwitch) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Rrobot>) istream)
  "Deserializes a message object of type '<Rrobot>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'Rrobot) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'leftMotor) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rightMotor) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'leftButtonSwitch) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rightButtonSwitch) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Rrobot>)))
  "Returns string type for a message object of type '<Rrobot>"
  "ros_webots_epuck_nxt_differential_robot/Rrobot")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Rrobot)))
  "Returns string type for a message object of type 'Rrobot"
  "ros_webots_epuck_nxt_differential_robot/Rrobot")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Rrobot>)))
  "Returns md5sum for a message object of type '<Rrobot>"
  "8b886383709d99b19c9aec3796abbb5d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Rrobot)))
  "Returns md5sum for a message object of type 'Rrobot"
  "8b886383709d99b19c9aec3796abbb5d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Rrobot>)))
  "Returns full string definition for message of type '<Rrobot>"
  (cl:format cl:nil "Header Rrobot~%ros_webots_epuck_nxt_differential_robot/Rmotor leftMotor~%ros_webots_epuck_nxt_differential_robot/Rmotor rightMotor~%ros_webots_epuck_nxt_differential_robot/Rbutton leftButtonSwitch~%ros_webots_epuck_nxt_differential_robot/Rbutton rightButtonSwitch~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: ros_webots_epuck_nxt_differential_robot/Rmotor~%Header Rmotor~%uint32 power~%~%================================================================================~%MSG: ros_webots_epuck_nxt_differential_robot/Rbutton~%Header Rbutton~%bool on~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Rrobot)))
  "Returns full string definition for message of type 'Rrobot"
  (cl:format cl:nil "Header Rrobot~%ros_webots_epuck_nxt_differential_robot/Rmotor leftMotor~%ros_webots_epuck_nxt_differential_robot/Rmotor rightMotor~%ros_webots_epuck_nxt_differential_robot/Rbutton leftButtonSwitch~%ros_webots_epuck_nxt_differential_robot/Rbutton rightButtonSwitch~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: ros_webots_epuck_nxt_differential_robot/Rmotor~%Header Rmotor~%uint32 power~%~%================================================================================~%MSG: ros_webots_epuck_nxt_differential_robot/Rbutton~%Header Rbutton~%bool on~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Rrobot>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'Rrobot))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'leftMotor))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rightMotor))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'leftButtonSwitch))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rightButtonSwitch))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Rrobot>))
  "Converts a ROS message object to a list"
  (cl:list 'Rrobot
    (cl:cons ':Rrobot (Rrobot msg))
    (cl:cons ':leftMotor (leftMotor msg))
    (cl:cons ':rightMotor (rightMotor msg))
    (cl:cons ':leftButtonSwitch (leftButtonSwitch msg))
    (cl:cons ':rightButtonSwitch (rightButtonSwitch msg))
))
