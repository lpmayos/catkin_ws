; Auto-generated. Do not edit!


(cl:in-package ros_lab2task2a-srv)


;//! \htmlinclude RsonarStatus-request.msg.html

(cl:defclass <RsonarStatus-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass RsonarStatus-request (<RsonarStatus-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RsonarStatus-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RsonarStatus-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_lab2task2a-srv:<RsonarStatus-request> is deprecated: use ros_lab2task2a-srv:RsonarStatus-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RsonarStatus-request>) ostream)
  "Serializes a message object of type '<RsonarStatus-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RsonarStatus-request>) istream)
  "Deserializes a message object of type '<RsonarStatus-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RsonarStatus-request>)))
  "Returns string type for a service object of type '<RsonarStatus-request>"
  "ros_lab2task2a/RsonarStatusRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RsonarStatus-request)))
  "Returns string type for a service object of type 'RsonarStatus-request"
  "ros_lab2task2a/RsonarStatusRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RsonarStatus-request>)))
  "Returns md5sum for a message object of type '<RsonarStatus-request>"
  "b2cb89f922c5d07784b533cfabb72389")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RsonarStatus-request)))
  "Returns md5sum for a message object of type 'RsonarStatus-request"
  "b2cb89f922c5d07784b533cfabb72389")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RsonarStatus-request>)))
  "Returns full string definition for message of type '<RsonarStatus-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RsonarStatus-request)))
  "Returns full string definition for message of type 'RsonarStatus-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RsonarStatus-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RsonarStatus-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RsonarStatus-request
))
;//! \htmlinclude RsonarStatus-response.msg.html

(cl:defclass <RsonarStatus-response> (roslisp-msg-protocol:ros-message)
  ((distance
    :reader distance
    :initarg :distance
    :type cl:integer
    :initform 0))
)

(cl:defclass RsonarStatus-response (<RsonarStatus-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RsonarStatus-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RsonarStatus-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_lab2task2a-srv:<RsonarStatus-response> is deprecated: use ros_lab2task2a-srv:RsonarStatus-response instead.")))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <RsonarStatus-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_lab2task2a-srv:distance-val is deprecated.  Use ros_lab2task2a-srv:distance instead.")
  (distance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RsonarStatus-response>) ostream)
  "Serializes a message object of type '<RsonarStatus-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'distance)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'distance)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'distance)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'distance)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RsonarStatus-response>) istream)
  "Deserializes a message object of type '<RsonarStatus-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'distance)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'distance)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'distance)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'distance)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RsonarStatus-response>)))
  "Returns string type for a service object of type '<RsonarStatus-response>"
  "ros_lab2task2a/RsonarStatusResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RsonarStatus-response)))
  "Returns string type for a service object of type 'RsonarStatus-response"
  "ros_lab2task2a/RsonarStatusResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RsonarStatus-response>)))
  "Returns md5sum for a message object of type '<RsonarStatus-response>"
  "b2cb89f922c5d07784b533cfabb72389")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RsonarStatus-response)))
  "Returns md5sum for a message object of type 'RsonarStatus-response"
  "b2cb89f922c5d07784b533cfabb72389")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RsonarStatus-response>)))
  "Returns full string definition for message of type '<RsonarStatus-response>"
  (cl:format cl:nil "uint32 distance~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RsonarStatus-response)))
  "Returns full string definition for message of type 'RsonarStatus-response"
  (cl:format cl:nil "uint32 distance~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RsonarStatus-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RsonarStatus-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RsonarStatus-response
    (cl:cons ':distance (distance msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RsonarStatus)))
  'RsonarStatus-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RsonarStatus)))
  'RsonarStatus-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RsonarStatus)))
  "Returns string type for a service object of type '<RsonarStatus>"
  "ros_lab2task2a/RsonarStatus")