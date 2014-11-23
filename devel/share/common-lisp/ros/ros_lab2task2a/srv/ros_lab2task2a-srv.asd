
(cl:in-package :asdf)

(defsystem "ros_lab2task2a-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "RlightStatus" :depends-on ("_package_RlightStatus"))
    (:file "_package_RlightStatus" :depends-on ("_package"))
    (:file "RbuttonStatus" :depends-on ("_package_RbuttonStatus"))
    (:file "_package_RbuttonStatus" :depends-on ("_package"))
    (:file "RsonarStatus" :depends-on ("_package_RsonarStatus"))
    (:file "_package_RsonarStatus" :depends-on ("_package"))
  ))