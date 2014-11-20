; Auto-generated. Do not edit!


(cl:in-package lpmayos_ros_webots_epuck_nxt_differential_robot-msg)


;//! \htmlinclude Rsonar.msg.html

(cl:defclass <Rsonar> (roslisp-msg-protocol:ros-message)
  ((Rsonar
    :reader Rsonar
    :initarg :Rsonar
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (on
    :reader on
    :initarg :on
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Rsonar (<Rsonar>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Rsonar>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Rsonar)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lpmayos_ros_webots_epuck_nxt_differential_robot-msg:<Rsonar> is deprecated: use lpmayos_ros_webots_epuck_nxt_differential_robot-msg:Rsonar instead.")))

(cl:ensure-generic-function 'Rsonar-val :lambda-list '(m))
(cl:defmethod Rsonar-val ((m <Rsonar>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lpmayos_ros_webots_epuck_nxt_differential_robot-msg:Rsonar-val is deprecated.  Use lpmayos_ros_webots_epuck_nxt_differential_robot-msg:Rsonar instead.")
  (Rsonar m))

(cl:ensure-generic-function 'on-val :lambda-list '(m))
(cl:defmethod on-val ((m <Rsonar>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lpmayos_ros_webots_epuck_nxt_differential_robot-msg:on-val is deprecated.  Use lpmayos_ros_webots_epuck_nxt_differential_robot-msg:on instead.")
  (on m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Rsonar>) ostream)
  "Serializes a message object of type '<Rsonar>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'Rsonar) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'on) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Rsonar>) istream)
  "Deserializes a message object of type '<Rsonar>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'Rsonar) istream)
    (cl:setf (cl:slot-value msg 'on) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Rsonar>)))
  "Returns string type for a message object of type '<Rsonar>"
  "lpmayos_ros_webots_epuck_nxt_differential_robot/Rsonar")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Rsonar)))
  "Returns string type for a message object of type 'Rsonar"
  "lpmayos_ros_webots_epuck_nxt_differential_robot/Rsonar")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Rsonar>)))
  "Returns md5sum for a message object of type '<Rsonar>"
  "63445e2d1434c01535d6ecc2c857e9d8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Rsonar)))
  "Returns md5sum for a message object of type 'Rsonar"
  "63445e2d1434c01535d6ecc2c857e9d8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Rsonar>)))
  "Returns full string definition for message of type '<Rsonar>"
  (cl:format cl:nil "Header Rsonar~%bool on~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Rsonar)))
  "Returns full string definition for message of type 'Rsonar"
  (cl:format cl:nil "Header Rsonar~%bool on~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Rsonar>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'Rsonar))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Rsonar>))
  "Converts a ROS message object to a list"
  (cl:list 'Rsonar
    (cl:cons ':Rsonar (Rsonar msg))
    (cl:cons ':on (on msg))
))
