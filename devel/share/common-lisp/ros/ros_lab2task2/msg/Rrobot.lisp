; Auto-generated. Do not edit!


(cl:in-package ros_lab2task2-msg)


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
    :type ros_lab2task2-msg:Rmotor
    :initform (cl:make-instance 'ros_lab2task2-msg:Rmotor))
   (rightMotor
    :reader rightMotor
    :initarg :rightMotor
    :type ros_lab2task2-msg:Rmotor
    :initform (cl:make-instance 'ros_lab2task2-msg:Rmotor)))
)

(cl:defclass Rrobot (<Rrobot>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Rrobot>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Rrobot)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_lab2task2-msg:<Rrobot> is deprecated: use ros_lab2task2-msg:Rrobot instead.")))

(cl:ensure-generic-function 'Rrobot-val :lambda-list '(m))
(cl:defmethod Rrobot-val ((m <Rrobot>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_lab2task2-msg:Rrobot-val is deprecated.  Use ros_lab2task2-msg:Rrobot instead.")
  (Rrobot m))

(cl:ensure-generic-function 'leftMotor-val :lambda-list '(m))
(cl:defmethod leftMotor-val ((m <Rrobot>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_lab2task2-msg:leftMotor-val is deprecated.  Use ros_lab2task2-msg:leftMotor instead.")
  (leftMotor m))

(cl:ensure-generic-function 'rightMotor-val :lambda-list '(m))
(cl:defmethod rightMotor-val ((m <Rrobot>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_lab2task2-msg:rightMotor-val is deprecated.  Use ros_lab2task2-msg:rightMotor instead.")
  (rightMotor m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Rrobot>) ostream)
  "Serializes a message object of type '<Rrobot>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'Rrobot) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'leftMotor) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rightMotor) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Rrobot>) istream)
  "Deserializes a message object of type '<Rrobot>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'Rrobot) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'leftMotor) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rightMotor) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Rrobot>)))
  "Returns string type for a message object of type '<Rrobot>"
  "ros_lab2task2/Rrobot")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Rrobot)))
  "Returns string type for a message object of type 'Rrobot"
  "ros_lab2task2/Rrobot")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Rrobot>)))
  "Returns md5sum for a message object of type '<Rrobot>"
  "b873f2a5e02ba6f92c0c7cf005c8b275")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Rrobot)))
  "Returns md5sum for a message object of type 'Rrobot"
  "b873f2a5e02ba6f92c0c7cf005c8b275")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Rrobot>)))
  "Returns full string definition for message of type '<Rrobot>"
  (cl:format cl:nil "Header Rrobot~%ros_lab2task2/Rmotor leftMotor~%ros_lab2task2/Rmotor rightMotor~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: ros_lab2task2/Rmotor~%Header Rmotor~%uint32 power~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Rrobot)))
  "Returns full string definition for message of type 'Rrobot"
  (cl:format cl:nil "Header Rrobot~%ros_lab2task2/Rmotor leftMotor~%ros_lab2task2/Rmotor rightMotor~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: ros_lab2task2/Rmotor~%Header Rmotor~%uint32 power~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Rrobot>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'Rrobot))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'leftMotor))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rightMotor))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Rrobot>))
  "Converts a ROS message object to a list"
  (cl:list 'Rrobot
    (cl:cons ':Rrobot (Rrobot msg))
    (cl:cons ':leftMotor (leftMotor msg))
    (cl:cons ':rightMotor (rightMotor msg))
))
