;; Auto-generated. Do not edit!


(when (boundp 'light_robot::WordCount)
  (if (not (find-package "LIGHT_ROBOT"))
    (make-package "LIGHT_ROBOT"))
  (shadow 'WordCount (find-package "LIGHT_ROBOT")))
(unless (find-package "LIGHT_ROBOT::WORDCOUNT")
  (make-package "LIGHT_ROBOT::WORDCOUNT"))
(unless (find-package "LIGHT_ROBOT::WORDCOUNTREQUEST")
  (make-package "LIGHT_ROBOT::WORDCOUNTREQUEST"))
(unless (find-package "LIGHT_ROBOT::WORDCOUNTRESPONSE")
  (make-package "LIGHT_ROBOT::WORDCOUNTRESPONSE"))

(in-package "ROS")





(defclass light_robot::WordCountRequest
  :super ros::object
  :slots (_words ))

(defmethod light_robot::WordCountRequest
  (:init
   (&key
    ((:words __words) "")
    )
   (send-super :init)
   (setq _words (string __words))
   self)
  (:words
   (&optional __words)
   (if __words (setq _words __words)) _words)
  (:serialization-length
   ()
   (+
    ;; string _words
    4 (length _words)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _words
       (write-long (length _words) s) (princ _words s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _words
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _words (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass light_robot::WordCountResponse
  :super ros::object
  :slots (_count ))

(defmethod light_robot::WordCountResponse
  (:init
   (&key
    ((:count __count) 0)
    )
   (send-super :init)
   (setq _count (round __count))
   self)
  (:count
   (&optional __count)
   (if __count (setq _count __count)) _count)
  (:serialization-length
   ()
   (+
    ;; uint32 _count
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _count
       (write-long _count s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _count
     (setq _count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass light_robot::WordCount
  :super ros::object
  :slots ())

(setf (get light_robot::WordCount :md5sum-) "58903d21a3264f3408d79ba79e9f7c7e")
(setf (get light_robot::WordCount :datatype-) "light_robot/WordCount")
(setf (get light_robot::WordCount :request) light_robot::WordCountRequest)
(setf (get light_robot::WordCount :response) light_robot::WordCountResponse)

(defmethod light_robot::WordCountRequest
  (:response () (instance light_robot::WordCountResponse :init)))

(setf (get light_robot::WordCountRequest :md5sum-) "58903d21a3264f3408d79ba79e9f7c7e")
(setf (get light_robot::WordCountRequest :datatype-) "light_robot/WordCountRequest")
(setf (get light_robot::WordCountRequest :definition-)
      "string words
---
uint32 count

")

(setf (get light_robot::WordCountResponse :md5sum-) "58903d21a3264f3408d79ba79e9f7c7e")
(setf (get light_robot::WordCountResponse :datatype-) "light_robot/WordCountResponse")
(setf (get light_robot::WordCountResponse :definition-)
      "string words
---
uint32 count

")



(provide :light_robot/WordCount "58903d21a3264f3408d79ba79e9f7c7e")


