; Auto-generated. Do not edit!


(cl:in-package ros_webots_epuck_nxt_differential_robot-srv)


;//! \htmlinclude RlightStatus-request.msg.html

(cl:defclass <RlightStatus-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass RlightStatus-request (<RlightStatus-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RlightStatus-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RlightStatus-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_webots_epuck_nxt_differential_robot-srv:<RlightStatus-request> is deprecated: use ros_webots_epuck_nxt_differential_robot-srv:RlightStatus-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RlightStatus-request>) ostream)
  "Serializes a message object of type '<RlightStatus-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RlightStatus-request>) istream)
  "Deserializes a message object of type '<RlightStatus-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RlightStatus-request>)))
  "Returns string type for a service object of type '<RlightStatus-request>"
  "ros_webots_epuck_nxt_differential_robot/RlightStatusRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RlightStatus-request)))
  "Returns string type for a service object of type 'RlightStatus-request"
  "ros_webots_epuck_nxt_differential_robot/RlightStatusRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RlightStatus-request>)))
  "Returns md5sum for a message object of type '<RlightStatus-request>"
  "8f99383af733f309421c5e214d94595a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RlightStatus-request)))
  "Returns md5sum for a message object of type 'RlightStatus-request"
  "8f99383af733f309421c5e214d94595a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RlightStatus-request>)))
  "Returns full string definition for message of type '<RlightStatus-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RlightStatus-request)))
  "Returns full string definition for message of type 'RlightStatus-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RlightStatus-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RlightStatus-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RlightStatus-request
))
;//! \htmlinclude RlightStatus-response.msg.html

(cl:defclass <RlightStatus-response> (roslisp-msg-protocol:ros-message)
  ((light
    :reader light
    :initarg :light
    :type cl:integer
    :initform 0))
)

(cl:defclass RlightStatus-response (<RlightStatus-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RlightStatus-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RlightStatus-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_webots_epuck_nxt_differential_robot-srv:<RlightStatus-response> is deprecated: use ros_webots_epuck_nxt_differential_robot-srv:RlightStatus-response instead.")))

(cl:ensure-generic-function 'light-val :lambda-list '(m))
(cl:defmethod light-val ((m <RlightStatus-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_webots_epuck_nxt_differential_robot-srv:light-val is deprecated.  Use ros_webots_epuck_nxt_differential_robot-srv:light instead.")
  (light m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RlightStatus-response>) ostream)
  "Serializes a message object of type '<RlightStatus-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'light)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'light)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'light)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'light)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RlightStatus-response>) istream)
  "Deserializes a message object of type '<RlightStatus-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'light)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'light)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'light)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'light)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RlightStatus-response>)))
  "Returns string type for a service object of type '<RlightStatus-response>"
  "ros_webots_epuck_nxt_differential_robot/RlightStatusResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RlightStatus-response)))
  "Returns string type for a service object of type 'RlightStatus-response"
  "ros_webots_epuck_nxt_differential_robot/RlightStatusResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RlightStatus-response>)))
  "Returns md5sum for a message object of type '<RlightStatus-response>"
  "8f99383af733f309421c5e214d94595a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RlightStatus-response)))
  "Returns md5sum for a message object of type 'RlightStatus-response"
  "8f99383af733f309421c5e214d94595a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RlightStatus-response>)))
  "Returns full string definition for message of type '<RlightStatus-response>"
  (cl:format cl:nil "uint32 light~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RlightStatus-response)))
  "Returns full string definition for message of type 'RlightStatus-response"
  (cl:format cl:nil "uint32 light~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RlightStatus-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RlightStatus-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RlightStatus-response
    (cl:cons ':light (light msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RlightStatus)))
  'RlightStatus-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RlightStatus)))
  'RlightStatus-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RlightStatus)))
  "Returns string type for a service object of type '<RlightStatus>"
  "ros_webots_epuck_nxt_differential_robot/RlightStatus")