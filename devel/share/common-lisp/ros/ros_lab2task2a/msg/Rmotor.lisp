; Auto-generated. Do not edit!


(cl:in-package ros_lab2task2a-msg)


;//! \htmlinclude Rmotor.msg.html

(cl:defclass <Rmotor> (roslisp-msg-protocol:ros-message)
  ((Rmotor
    :reader Rmotor
    :initarg :Rmotor
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (power
    :reader power
    :initarg :power
    :type cl:integer
    :initform 0))
)

(cl:defclass Rmotor (<Rmotor>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Rmotor>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Rmotor)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_lab2task2a-msg:<Rmotor> is deprecated: use ros_lab2task2a-msg:Rmotor instead.")))

(cl:ensure-generic-function 'Rmotor-val :lambda-list '(m))
(cl:defmethod Rmotor-val ((m <Rmotor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_lab2task2a-msg:Rmotor-val is deprecated.  Use ros_lab2task2a-msg:Rmotor instead.")
  (Rmotor m))

(cl:ensure-generic-function 'power-val :lambda-list '(m))
(cl:defmethod power-val ((m <Rmotor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_lab2task2a-msg:power-val is deprecated.  Use ros_lab2task2a-msg:power instead.")
  (power m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Rmotor>) ostream)
  "Serializes a message object of type '<Rmotor>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'Rmotor) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'power)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'power)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'power)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'power)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Rmotor>) istream)
  "Deserializes a message object of type '<Rmotor>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'Rmotor) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'power)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'power)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'power)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'power)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Rmotor>)))
  "Returns string type for a message object of type '<Rmotor>"
  "ros_lab2task2a/Rmotor")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Rmotor)))
  "Returns string type for a message object of type 'Rmotor"
  "ros_lab2task2a/Rmotor")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Rmotor>)))
  "Returns md5sum for a message object of type '<Rmotor>"
  "b68fb4b56bfeb7cda513b5b0a462163d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Rmotor)))
  "Returns md5sum for a message object of type 'Rmotor"
  "b68fb4b56bfeb7cda513b5b0a462163d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Rmotor>)))
  "Returns full string definition for message of type '<Rmotor>"
  (cl:format cl:nil "Header Rmotor~%uint32 power~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Rmotor)))
  "Returns full string definition for message of type 'Rmotor"
  (cl:format cl:nil "Header Rmotor~%uint32 power~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Rmotor>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'Rmotor))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Rmotor>))
  "Converts a ROS message object to a list"
  (cl:list 'Rmotor
    (cl:cons ':Rmotor (Rmotor msg))
    (cl:cons ':power (power msg))
))
