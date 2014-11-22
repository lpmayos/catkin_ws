; Auto-generated. Do not edit!


(cl:in-package lpmayos_ros_webots_epuck_nxt_differential_robot-msg)


;//! \htmlinclude Rlight.msg.html

(cl:defclass <Rlight> (roslisp-msg-protocol:ros-message)
  ((Rlight
    :reader Rlight
    :initarg :Rlight
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (on
    :reader on
    :initarg :on
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Rlight (<Rlight>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Rlight>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Rlight)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lpmayos_ros_webots_epuck_nxt_differential_robot-msg:<Rlight> is deprecated: use lpmayos_ros_webots_epuck_nxt_differential_robot-msg:Rlight instead.")))

(cl:ensure-generic-function 'Rlight-val :lambda-list '(m))
(cl:defmethod Rlight-val ((m <Rlight>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lpmayos_ros_webots_epuck_nxt_differential_robot-msg:Rlight-val is deprecated.  Use lpmayos_ros_webots_epuck_nxt_differential_robot-msg:Rlight instead.")
  (Rlight m))

(cl:ensure-generic-function 'on-val :lambda-list '(m))
(cl:defmethod on-val ((m <Rlight>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lpmayos_ros_webots_epuck_nxt_differential_robot-msg:on-val is deprecated.  Use lpmayos_ros_webots_epuck_nxt_differential_robot-msg:on instead.")
  (on m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Rlight>) ostream)
  "Serializes a message object of type '<Rlight>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'Rlight) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'on) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Rlight>) istream)
  "Deserializes a message object of type '<Rlight>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'Rlight) istream)
    (cl:setf (cl:slot-value msg 'on) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Rlight>)))
  "Returns string type for a message object of type '<Rlight>"
  "lpmayos_ros_webots_epuck_nxt_differential_robot/Rlight")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Rlight)))
  "Returns string type for a message object of type 'Rlight"
  "lpmayos_ros_webots_epuck_nxt_differential_robot/Rlight")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Rlight>)))
  "Returns md5sum for a message object of type '<Rlight>"
  "a771e02311a41b8cc313b48cfefb1d4a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Rlight)))
  "Returns md5sum for a message object of type 'Rlight"
  "a771e02311a41b8cc313b48cfefb1d4a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Rlight>)))
  "Returns full string definition for message of type '<Rlight>"
  (cl:format cl:nil "Header Rlight~%bool on~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Rlight)))
  "Returns full string definition for message of type 'Rlight"
  (cl:format cl:nil "Header Rlight~%bool on~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Rlight>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'Rlight))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Rlight>))
  "Converts a ROS message object to a list"
  (cl:list 'Rlight
    (cl:cons ':Rlight (Rlight msg))
    (cl:cons ':on (on msg))
))
