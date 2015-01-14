; Auto-generated. Do not edit!


(cl:in-package ros_lab2task2-msg)


;//! \htmlinclude Rsimulation.msg.html

(cl:defclass <Rsimulation> (roslisp-msg-protocol:ros-message)
  ((left_pressed
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
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_lab2task2-msg:<Rsimulation> is deprecated: use ros_lab2task2-msg:Rsimulation instead.")))

(cl:ensure-generic-function 'left_pressed-val :lambda-list '(m))
(cl:defmethod left_pressed-val ((m <Rsimulation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_lab2task2-msg:left_pressed-val is deprecated.  Use ros_lab2task2-msg:left_pressed instead.")
  (left_pressed m))

(cl:ensure-generic-function 'right_pressed-val :lambda-list '(m))
(cl:defmethod right_pressed-val ((m <Rsimulation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_lab2task2-msg:right_pressed-val is deprecated.  Use ros_lab2task2-msg:right_pressed instead.")
  (right_pressed m))

(cl:ensure-generic-function 'sonar_value-val :lambda-list '(m))
(cl:defmethod sonar_value-val ((m <Rsimulation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_lab2task2-msg:sonar_value-val is deprecated.  Use ros_lab2task2-msg:sonar_value instead.")
  (sonar_value m))

(cl:ensure-generic-function 'light_value-val :lambda-list '(m))
(cl:defmethod light_value-val ((m <Rsimulation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_lab2task2-msg:light_value-val is deprecated.  Use ros_lab2task2-msg:light_value instead.")
  (light_value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Rsimulation>) ostream)
  "Serializes a message object of type '<Rsimulation>"
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
  "ros_lab2task2/Rsimulation")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Rsimulation)))
  "Returns string type for a message object of type 'Rsimulation"
  "ros_lab2task2/Rsimulation")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Rsimulation>)))
  "Returns md5sum for a message object of type '<Rsimulation>"
  "a636d3a806c8f3330f88267a8ee7133f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Rsimulation)))
  "Returns md5sum for a message object of type 'Rsimulation"
  "a636d3a806c8f3330f88267a8ee7133f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Rsimulation>)))
  "Returns full string definition for message of type '<Rsimulation>"
  (cl:format cl:nil "uint32 left_pressed~%uint32 right_pressed~%uint32 sonar_value~%uint32 light_value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Rsimulation)))
  "Returns full string definition for message of type 'Rsimulation"
  (cl:format cl:nil "uint32 left_pressed~%uint32 right_pressed~%uint32 sonar_value~%uint32 light_value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Rsimulation>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Rsimulation>))
  "Converts a ROS message object to a list"
  (cl:list 'Rsimulation
    (cl:cons ':left_pressed (left_pressed msg))
    (cl:cons ':right_pressed (right_pressed msg))
    (cl:cons ':sonar_value (sonar_value msg))
    (cl:cons ':light_value (light_value msg))
))
