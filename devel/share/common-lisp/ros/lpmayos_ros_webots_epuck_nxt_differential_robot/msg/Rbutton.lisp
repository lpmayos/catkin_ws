; Auto-generated. Do not edit!


(cl:in-package lpmayos_ros_webots_epuck_nxt_differential_robot-msg)


;//! \htmlinclude Rbutton.msg.html

(cl:defclass <Rbutton> (roslisp-msg-protocol:ros-message)
  ((Rbutton
    :reader Rbutton
    :initarg :Rbutton
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (on
    :reader on
    :initarg :on
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Rbutton (<Rbutton>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Rbutton>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Rbutton)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lpmayos_ros_webots_epuck_nxt_differential_robot-msg:<Rbutton> is deprecated: use lpmayos_ros_webots_epuck_nxt_differential_robot-msg:Rbutton instead.")))

(cl:ensure-generic-function 'Rbutton-val :lambda-list '(m))
(cl:defmethod Rbutton-val ((m <Rbutton>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lpmayos_ros_webots_epuck_nxt_differential_robot-msg:Rbutton-val is deprecated.  Use lpmayos_ros_webots_epuck_nxt_differential_robot-msg:Rbutton instead.")
  (Rbutton m))

(cl:ensure-generic-function 'on-val :lambda-list '(m))
(cl:defmethod on-val ((m <Rbutton>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lpmayos_ros_webots_epuck_nxt_differential_robot-msg:on-val is deprecated.  Use lpmayos_ros_webots_epuck_nxt_differential_robot-msg:on instead.")
  (on m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Rbutton>) ostream)
  "Serializes a message object of type '<Rbutton>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'Rbutton) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'on) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Rbutton>) istream)
  "Deserializes a message object of type '<Rbutton>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'Rbutton) istream)
    (cl:setf (cl:slot-value msg 'on) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Rbutton>)))
  "Returns string type for a message object of type '<Rbutton>"
  "lpmayos_ros_webots_epuck_nxt_differential_robot/Rbutton")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Rbutton)))
  "Returns string type for a message object of type 'Rbutton"
  "lpmayos_ros_webots_epuck_nxt_differential_robot/Rbutton")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Rbutton>)))
  "Returns md5sum for a message object of type '<Rbutton>"
  "03a4945bdb4654a1e3f75a02fd5ffcde")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Rbutton)))
  "Returns md5sum for a message object of type 'Rbutton"
  "03a4945bdb4654a1e3f75a02fd5ffcde")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Rbutton>)))
  "Returns full string definition for message of type '<Rbutton>"
  (cl:format cl:nil "Header Rbutton~%bool on~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Rbutton)))
  "Returns full string definition for message of type 'Rbutton"
  (cl:format cl:nil "Header Rbutton~%bool on~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Rbutton>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'Rbutton))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Rbutton>))
  "Converts a ROS message object to a list"
  (cl:list 'Rbutton
    (cl:cons ':Rbutton (Rbutton msg))
    (cl:cons ':on (on msg))
))
