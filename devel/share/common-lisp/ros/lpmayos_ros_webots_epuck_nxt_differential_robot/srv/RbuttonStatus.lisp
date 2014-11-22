; Auto-generated. Do not edit!


(cl:in-package lpmayos_ros_webots_epuck_nxt_differential_robot-srv)


;//! \htmlinclude RbuttonStatus-request.msg.html

(cl:defclass <RbuttonStatus-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass RbuttonStatus-request (<RbuttonStatus-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RbuttonStatus-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RbuttonStatus-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lpmayos_ros_webots_epuck_nxt_differential_robot-srv:<RbuttonStatus-request> is deprecated: use lpmayos_ros_webots_epuck_nxt_differential_robot-srv:RbuttonStatus-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RbuttonStatus-request>) ostream)
  "Serializes a message object of type '<RbuttonStatus-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RbuttonStatus-request>) istream)
  "Deserializes a message object of type '<RbuttonStatus-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RbuttonStatus-request>)))
  "Returns string type for a service object of type '<RbuttonStatus-request>"
  "lpmayos_ros_webots_epuck_nxt_differential_robot/RbuttonStatusRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RbuttonStatus-request)))
  "Returns string type for a service object of type 'RbuttonStatus-request"
  "lpmayos_ros_webots_epuck_nxt_differential_robot/RbuttonStatusRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RbuttonStatus-request>)))
  "Returns md5sum for a message object of type '<RbuttonStatus-request>"
  "3fcbc751b1d12b64a9eafc04beea4662")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RbuttonStatus-request)))
  "Returns md5sum for a message object of type 'RbuttonStatus-request"
  "3fcbc751b1d12b64a9eafc04beea4662")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RbuttonStatus-request>)))
  "Returns full string definition for message of type '<RbuttonStatus-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RbuttonStatus-request)))
  "Returns full string definition for message of type 'RbuttonStatus-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RbuttonStatus-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RbuttonStatus-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RbuttonStatus-request
))
;//! \htmlinclude RbuttonStatus-response.msg.html

(cl:defclass <RbuttonStatus-response> (roslisp-msg-protocol:ros-message)
  ((left_pressed
    :reader left_pressed
    :initarg :left_pressed
    :type cl:boolean
    :initform cl:nil)
   (right_pressed
    :reader right_pressed
    :initarg :right_pressed
    :type cl:boolean
    :initform cl:nil)
   (sonar
    :reader sonar
    :initarg :sonar
    :type cl:integer
    :initform 0)
   (light
    :reader light
    :initarg :light
    :type cl:integer
    :initform 0))
)

(cl:defclass RbuttonStatus-response (<RbuttonStatus-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RbuttonStatus-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RbuttonStatus-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lpmayos_ros_webots_epuck_nxt_differential_robot-srv:<RbuttonStatus-response> is deprecated: use lpmayos_ros_webots_epuck_nxt_differential_robot-srv:RbuttonStatus-response instead.")))

(cl:ensure-generic-function 'left_pressed-val :lambda-list '(m))
(cl:defmethod left_pressed-val ((m <RbuttonStatus-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lpmayos_ros_webots_epuck_nxt_differential_robot-srv:left_pressed-val is deprecated.  Use lpmayos_ros_webots_epuck_nxt_differential_robot-srv:left_pressed instead.")
  (left_pressed m))

(cl:ensure-generic-function 'right_pressed-val :lambda-list '(m))
(cl:defmethod right_pressed-val ((m <RbuttonStatus-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lpmayos_ros_webots_epuck_nxt_differential_robot-srv:right_pressed-val is deprecated.  Use lpmayos_ros_webots_epuck_nxt_differential_robot-srv:right_pressed instead.")
  (right_pressed m))

(cl:ensure-generic-function 'sonar-val :lambda-list '(m))
(cl:defmethod sonar-val ((m <RbuttonStatus-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lpmayos_ros_webots_epuck_nxt_differential_robot-srv:sonar-val is deprecated.  Use lpmayos_ros_webots_epuck_nxt_differential_robot-srv:sonar instead.")
  (sonar m))

(cl:ensure-generic-function 'light-val :lambda-list '(m))
(cl:defmethod light-val ((m <RbuttonStatus-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lpmayos_ros_webots_epuck_nxt_differential_robot-srv:light-val is deprecated.  Use lpmayos_ros_webots_epuck_nxt_differential_robot-srv:light instead.")
  (light m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RbuttonStatus-response>) ostream)
  "Serializes a message object of type '<RbuttonStatus-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'left_pressed) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'right_pressed) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sonar)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sonar)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sonar)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sonar)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'light)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'light)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'light)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'light)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RbuttonStatus-response>) istream)
  "Deserializes a message object of type '<RbuttonStatus-response>"
    (cl:setf (cl:slot-value msg 'left_pressed) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'right_pressed) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sonar)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sonar)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sonar)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sonar)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'light)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'light)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'light)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'light)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RbuttonStatus-response>)))
  "Returns string type for a service object of type '<RbuttonStatus-response>"
  "lpmayos_ros_webots_epuck_nxt_differential_robot/RbuttonStatusResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RbuttonStatus-response)))
  "Returns string type for a service object of type 'RbuttonStatus-response"
  "lpmayos_ros_webots_epuck_nxt_differential_robot/RbuttonStatusResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RbuttonStatus-response>)))
  "Returns md5sum for a message object of type '<RbuttonStatus-response>"
  "3fcbc751b1d12b64a9eafc04beea4662")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RbuttonStatus-response)))
  "Returns md5sum for a message object of type 'RbuttonStatus-response"
  "3fcbc751b1d12b64a9eafc04beea4662")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RbuttonStatus-response>)))
  "Returns full string definition for message of type '<RbuttonStatus-response>"
  (cl:format cl:nil "bool left_pressed~%bool right_pressed~%uint32 sonar~%uint32 light~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RbuttonStatus-response)))
  "Returns full string definition for message of type 'RbuttonStatus-response"
  (cl:format cl:nil "bool left_pressed~%bool right_pressed~%uint32 sonar~%uint32 light~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RbuttonStatus-response>))
  (cl:+ 0
     1
     1
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RbuttonStatus-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RbuttonStatus-response
    (cl:cons ':left_pressed (left_pressed msg))
    (cl:cons ':right_pressed (right_pressed msg))
    (cl:cons ':sonar (sonar msg))
    (cl:cons ':light (light msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RbuttonStatus)))
  'RbuttonStatus-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RbuttonStatus)))
  'RbuttonStatus-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RbuttonStatus)))
  "Returns string type for a service object of type '<RbuttonStatus>"
  "lpmayos_ros_webots_epuck_nxt_differential_robot/RbuttonStatus")