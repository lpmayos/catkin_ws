; Auto-generated. Do not edit!


(cl:in-package ros_webots_epuck_nxt_differential_robot-msg)


;//! \htmlinclude Rencoder.msg.html

(cl:defclass <Rencoder> (roslisp-msg-protocol:ros-message)
  ((Rencoder
    :reader Rencoder
    :initarg :Rencoder
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (rotations
    :reader rotations
    :initarg :rotations
    :type cl:fixnum
    :initform 0)
   (on
    :reader on
    :initarg :on
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Rencoder (<Rencoder>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Rencoder>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Rencoder)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_webots_epuck_nxt_differential_robot-msg:<Rencoder> is deprecated: use ros_webots_epuck_nxt_differential_robot-msg:Rencoder instead.")))

(cl:ensure-generic-function 'Rencoder-val :lambda-list '(m))
(cl:defmethod Rencoder-val ((m <Rencoder>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_webots_epuck_nxt_differential_robot-msg:Rencoder-val is deprecated.  Use ros_webots_epuck_nxt_differential_robot-msg:Rencoder instead.")
  (Rencoder m))

(cl:ensure-generic-function 'rotations-val :lambda-list '(m))
(cl:defmethod rotations-val ((m <Rencoder>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_webots_epuck_nxt_differential_robot-msg:rotations-val is deprecated.  Use ros_webots_epuck_nxt_differential_robot-msg:rotations instead.")
  (rotations m))

(cl:ensure-generic-function 'on-val :lambda-list '(m))
(cl:defmethod on-val ((m <Rencoder>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_webots_epuck_nxt_differential_robot-msg:on-val is deprecated.  Use ros_webots_epuck_nxt_differential_robot-msg:on instead.")
  (on m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Rencoder>) ostream)
  "Serializes a message object of type '<Rencoder>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'Rencoder) ostream)
  (cl:let* ((signed (cl:slot-value msg 'rotations)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'on) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Rencoder>) istream)
  "Deserializes a message object of type '<Rencoder>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'Rencoder) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rotations) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:slot-value msg 'on) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Rencoder>)))
  "Returns string type for a message object of type '<Rencoder>"
  "ros_webots_epuck_nxt_differential_robot/Rencoder")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Rencoder)))
  "Returns string type for a message object of type 'Rencoder"
  "ros_webots_epuck_nxt_differential_robot/Rencoder")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Rencoder>)))
  "Returns md5sum for a message object of type '<Rencoder>"
  "13e14eaf39e9c1e8e0f514916f5f8fb6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Rencoder)))
  "Returns md5sum for a message object of type 'Rencoder"
  "13e14eaf39e9c1e8e0f514916f5f8fb6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Rencoder>)))
  "Returns full string definition for message of type '<Rencoder>"
  (cl:format cl:nil "Header Rencoder~%int16 rotations~%bool on~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Rencoder)))
  "Returns full string definition for message of type 'Rencoder"
  (cl:format cl:nil "Header Rencoder~%int16 rotations~%bool on~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Rencoder>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'Rencoder))
     2
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Rencoder>))
  "Converts a ROS message object to a list"
  (cl:list 'Rencoder
    (cl:cons ':Rencoder (Rencoder msg))
    (cl:cons ':rotations (rotations msg))
    (cl:cons ':on (on msg))
))
