; Auto-generated. Do not edit!


(cl:in-package ros_lab2task2a-msg)


;//! \htmlinclude Rsimulation.msg.html

(cl:defclass <Rsimulation> (roslisp-msg-protocol:ros-message)
  ((Rsimulation
    :reader Rsimulation
    :initarg :Rsimulation
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (left_pressed
    :reader left_pressed
    :initarg :left_pressed
    :type cl:integer
    :initform 0)
   (right_pressed
    :reader right_pressed
    :initarg :right_pressed
    :type cl:integer
    :initform 0)
   (sonar_value
    :reader sonar_value
    :initarg :sonar_value
    :type cl:integer
    :initform 0)
   (light_value
    :reader light_value
    :initarg :light_value
    :type cl:integer
    :initform 0))
)

(cl:defclass Rsimulation (<Rsimulation>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Rsimulation>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Rsimulation)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_lab2task2a-msg:<Rsimulation> is deprecated: use ros_lab2task2a-msg:Rsimulation instead.")))

(cl:ensure-generic-function 'Rsimulation-val :lambda-list '(m))
(cl:defmethod Rsimulation-val ((m <Rsimulation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_lab2task2a-msg:Rsimulation-val is deprecated.  Use ros_lab2task2a-msg:Rsimulation instead.")
  (Rsimulation m))

(cl:ensure-generic-function 'left_pressed-val :lambda-list '(m))
(cl:defmethod left_pressed-val ((m <Rsimulation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_lab2task2a-msg:left_pressed-val is deprecated.  Use ros_lab2task2a-msg:left_pressed instead.")
  (left_pressed m))

(cl:ensure-generic-function 'right_pressed-val :lambda-list '(m))
(cl:defmethod right_pressed-val ((m <Rsimulation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_lab2task2a-msg:right_pressed-val is deprecated.  Use ros_lab2task2a-msg:right_pressed instead.")
  (right_pressed m))

(cl:ensure-generic-function 'sonar_value-val :lambda-list '(m))
(cl:defmethod sonar_value-val ((m <Rsimulation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_lab2task2a-msg:sonar_value-val is deprecated.  Use ros_lab2task2a-msg:sonar_value instead.")
  (sonar_value m))

(cl:ensure-generic-function 'light_value-val :lambda-list '(m))
(cl:defmethod light_value-val ((m <Rsimulation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_lab2task2a-msg:light_value-val is deprecated.  Use ros_lab2task2a-msg:light_value instead.")
  (light_value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Rsimulation>) ostream)
  "Serializes a message object of type '<Rsimulation>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'Rsimulation) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'left_pressed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'left_pressed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'left_pressed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'left_pressed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'right_pressed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'right_pressed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'right_pressed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'right_pressed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sonar_value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sonar_value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sonar_value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sonar_value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'light_value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'light_value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'light_value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'light_value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Rsimulation>) istream)
  "Deserializes a message object of type '<Rsimulation>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'Rsimulation) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'left_pressed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'left_pressed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'left_pressed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'left_pressed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'right_pressed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'right_pressed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'right_pressed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'right_pressed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sonar_value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sonar_value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sonar_value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sonar_value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'light_value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'light_value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'light_value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'light_value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Rsimulation>)))
  "Returns string type for a message object of type '<Rsimulation>"
  "ros_lab2task2a/Rsimulation")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Rsimulation)))
  "Returns string type for a message object of type 'Rsimulation"
  "ros_lab2task2a/Rsimulation")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Rsimulation>)))
  "Returns md5sum for a message object of type '<Rsimulation>"
  "f271c12fe38e96cd7bb1b6a75df6ce5d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Rsimulation)))
  "Returns md5sum for a message object of type 'Rsimulation"
  "f271c12fe38e96cd7bb1b6a75df6ce5d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Rsimulation>)))
  "Returns full string definition for message of type '<Rsimulation>"
  (cl:format cl:nil "Header Rsimulation~%uint32 left_pressed~%uint32 right_pressed~%uint32 sonar_value~%uint32 light_value~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Rsimulation)))
  "Returns full string definition for message of type 'Rsimulation"
  (cl:format cl:nil "Header Rsimulation~%uint32 left_pressed~%uint32 right_pressed~%uint32 sonar_value~%uint32 light_value~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Rsimulation>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'Rsimulation))
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Rsimulation>))
  "Converts a ROS message object to a list"
  (cl:list 'Rsimulation
    (cl:cons ':Rsimulation (Rsimulation msg))
    (cl:cons ':left_pressed (left_pressed msg))
    (cl:cons ':right_pressed (right_pressed msg))
    (cl:cons ':sonar_value (sonar_value msg))
    (cl:cons ':light_value (light_value msg))
))
