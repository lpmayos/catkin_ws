
(cl:in-package :asdf)

(defsystem "ros_lab2task2-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Rbutton" :depends-on ("_package_Rbutton"))
    (:file "_package_Rbutton" :depends-on ("_package"))
    (:file "Rmotor" :depends-on ("_package_Rmotor"))
    (:file "_package_Rmotor" :depends-on ("_package"))
    (:file "Rrobot" :depends-on ("_package_Rrobot"))
    (:file "_package_Rrobot" :depends-on ("_package"))
    (:file "Rencoder" :depends-on ("_package_Rencoder"))
    (:file "_package_Rencoder" :depends-on ("_package"))
    (:file "Rsimulation" :depends-on ("_package_Rsimulation"))
    (:file "_package_Rsimulation" :depends-on ("_package"))
  ))