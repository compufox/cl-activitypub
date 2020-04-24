(in-package :clap-litepub)

(defclass property-value (litepub-object)
  ((type :reader object-type :initform "PropertyValue")
   (value :reader property-value :initarg :value)))

(defclass emoji (litepub-object)
  ((type :reader object-type :initform "Emoji")))

(defclass public-key (litepub-object)
  ((id :reader id :initarg :id)
   (owner :reader public-key-owner :initarg :owner)
   (public-key-pem :reader public-key-pem :initarg :pem)))

(defclass note (litepub-object)
  ((type :reader object-type :initform "Note")))
