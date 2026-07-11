;; Auto-generated. Do not edit!


(when (boundp 'ser_and_cli::number)
  (if (not (find-package "SER_AND_CLI"))
    (make-package "SER_AND_CLI"))
  (shadow 'number (find-package "SER_AND_CLI")))
(unless (find-package "SER_AND_CLI::NUMBER")
  (make-package "SER_AND_CLI::NUMBER"))
(unless (find-package "SER_AND_CLI::NUMBERREQUEST")
  (make-package "SER_AND_CLI::NUMBERREQUEST"))
(unless (find-package "SER_AND_CLI::NUMBERRESPONSE")
  (make-package "SER_AND_CLI::NUMBERRESPONSE"))

(in-package "ROS")





(defclass ser_and_cli::numberRequest
  :super ros::object
  :slots (_num1 _num2 ))

(defmethod ser_and_cli::numberRequest
  (:init
   (&key
    ((:num1 __num1) 0)
    ((:num2 __num2) 0)
    )
   (send-super :init)
   (setq _num1 (round __num1))
   (setq _num2 (round __num2))
   self)
  (:num1
   (&optional __num1)
   (if __num1 (setq _num1 __num1)) _num1)
  (:num2
   (&optional __num2)
   (if __num2 (setq _num2 __num2)) _num2)
  (:serialization-length
   ()
   (+
    ;; int32 _num1
    4
    ;; int32 _num2
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _num1
       (write-long _num1 s)
     ;; int32 _num2
       (write-long _num2 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _num1
     (setq _num1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _num2
     (setq _num2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass ser_and_cli::numberResponse
  :super ros::object
  :slots (_sum ))

(defmethod ser_and_cli::numberResponse
  (:init
   (&key
    ((:sum __sum) 0)
    )
   (send-super :init)
   (setq _sum (round __sum))
   self)
  (:sum
   (&optional __sum)
   (if __sum (setq _sum __sum)) _sum)
  (:serialization-length
   ()
   (+
    ;; int32 _sum
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _sum
       (write-long _sum s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _sum
     (setq _sum (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass ser_and_cli::number
  :super ros::object
  :slots ())

(setf (get ser_and_cli::number :md5sum-) "4781436a0c2affec8025955a6041e481")
(setf (get ser_and_cli::number :datatype-) "ser_and_cli/number")
(setf (get ser_and_cli::number :request) ser_and_cli::numberRequest)
(setf (get ser_and_cli::number :response) ser_and_cli::numberResponse)

(defmethod ser_and_cli::numberRequest
  (:response () (instance ser_and_cli::numberResponse :init)))

(setf (get ser_and_cli::numberRequest :md5sum-) "4781436a0c2affec8025955a6041e481")
(setf (get ser_and_cli::numberRequest :datatype-) "ser_and_cli/numberRequest")
(setf (get ser_and_cli::numberRequest :definition-)
      "int32 num1
int32 num2
---
int32 sum
")

(setf (get ser_and_cli::numberResponse :md5sum-) "4781436a0c2affec8025955a6041e481")
(setf (get ser_and_cli::numberResponse :datatype-) "ser_and_cli/numberResponse")
(setf (get ser_and_cli::numberResponse :definition-)
      "int32 num1
int32 num2
---
int32 sum
")



(provide :ser_and_cli/number "4781436a0c2affec8025955a6041e481")


