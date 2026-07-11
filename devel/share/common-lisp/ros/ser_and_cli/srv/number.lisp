; Auto-generated. Do not edit!


(cl:in-package ser_and_cli-srv)


;//! \htmlinclude number-request.msg.html

(cl:defclass <number-request> (roslisp-msg-protocol:ros-message)
  ((num1
    :reader num1
    :initarg :num1
    :type cl:integer
    :initform 0)
   (num2
    :reader num2
    :initarg :num2
    :type cl:integer
    :initform 0))
)

(cl:defclass number-request (<number-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <number-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'number-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ser_and_cli-srv:<number-request> is deprecated: use ser_and_cli-srv:number-request instead.")))

(cl:ensure-generic-function 'num1-val :lambda-list '(m))
(cl:defmethod num1-val ((m <number-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ser_and_cli-srv:num1-val is deprecated.  Use ser_and_cli-srv:num1 instead.")
  (num1 m))

(cl:ensure-generic-function 'num2-val :lambda-list '(m))
(cl:defmethod num2-val ((m <number-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ser_and_cli-srv:num2-val is deprecated.  Use ser_and_cli-srv:num2 instead.")
  (num2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <number-request>) ostream)
  "Serializes a message object of type '<number-request>"
  (cl:let* ((signed (cl:slot-value msg 'num1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'num2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <number-request>) istream)
  "Deserializes a message object of type '<number-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num1) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num2) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<number-request>)))
  "Returns string type for a service object of type '<number-request>"
  "ser_and_cli/numberRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'number-request)))
  "Returns string type for a service object of type 'number-request"
  "ser_and_cli/numberRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<number-request>)))
  "Returns md5sum for a message object of type '<number-request>"
  "4781436a0c2affec8025955a6041e481")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'number-request)))
  "Returns md5sum for a message object of type 'number-request"
  "4781436a0c2affec8025955a6041e481")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<number-request>)))
  "Returns full string definition for message of type '<number-request>"
  (cl:format cl:nil "int32 num1~%int32 num2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'number-request)))
  "Returns full string definition for message of type 'number-request"
  (cl:format cl:nil "int32 num1~%int32 num2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <number-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <number-request>))
  "Converts a ROS message object to a list"
  (cl:list 'number-request
    (cl:cons ':num1 (num1 msg))
    (cl:cons ':num2 (num2 msg))
))
;//! \htmlinclude number-response.msg.html

(cl:defclass <number-response> (roslisp-msg-protocol:ros-message)
  ((sum
    :reader sum
    :initarg :sum
    :type cl:integer
    :initform 0))
)

(cl:defclass number-response (<number-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <number-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'number-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ser_and_cli-srv:<number-response> is deprecated: use ser_and_cli-srv:number-response instead.")))

(cl:ensure-generic-function 'sum-val :lambda-list '(m))
(cl:defmethod sum-val ((m <number-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ser_and_cli-srv:sum-val is deprecated.  Use ser_and_cli-srv:sum instead.")
  (sum m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <number-response>) ostream)
  "Serializes a message object of type '<number-response>"
  (cl:let* ((signed (cl:slot-value msg 'sum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <number-response>) istream)
  "Deserializes a message object of type '<number-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sum) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<number-response>)))
  "Returns string type for a service object of type '<number-response>"
  "ser_and_cli/numberResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'number-response)))
  "Returns string type for a service object of type 'number-response"
  "ser_and_cli/numberResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<number-response>)))
  "Returns md5sum for a message object of type '<number-response>"
  "4781436a0c2affec8025955a6041e481")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'number-response)))
  "Returns md5sum for a message object of type 'number-response"
  "4781436a0c2affec8025955a6041e481")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<number-response>)))
  "Returns full string definition for message of type '<number-response>"
  (cl:format cl:nil "int32 sum~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'number-response)))
  "Returns full string definition for message of type 'number-response"
  (cl:format cl:nil "int32 sum~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <number-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <number-response>))
  "Converts a ROS message object to a list"
  (cl:list 'number-response
    (cl:cons ':sum (sum msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'number)))
  'number-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'number)))
  'number-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'number)))
  "Returns string type for a service object of type '<number>"
  "ser_and_cli/number")