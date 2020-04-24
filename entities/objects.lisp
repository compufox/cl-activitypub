(in-package #:clap-entities)

(defclass relationship (ap-object)
  ((relationship-subject :accessor relationship-subject
                         :initarg :relationship-subject)
   (relationship-object :accessor relationship-object
                        :initarg :relationship-object)
   (type :reader object-type :initform "Relationship")))

(defclass article (ap-object)
  ((type :reader object-type :initform "Article")))

(defclass audio (ap-object)
  ((type :reader object-type :initform "Audio")))

(defclass document (ap-object)
  ((type :reader object-type :initform "Document")))

(defclass image (ap-object)
  ((type :reader object-type :initform "Image")))

(defclass video (ap-object)
  ((type :reader object-type :initform "Video")))

(defclass note (ap-object)
  ((type :reader object-type :initform "Note")))

(defclass page (document)
  ((type :reader object-type :initform "Page")))

(defclass event (ap-object)
  ((type :reader object-type :initform "Event")))

(defclass place (ap-object)
  ((accuracy :accessor accuracy :initarg :accuracy)
   (altitude :accessor altitude :initarg :altitude)
   (latitude :accessor latitude :initarg :latitude)
   (longitude :accessor longitude :initarg :longitude)
   (radius :accessor radius :initarg :radius)
   (units :accessor units :initarg :units)
   (type :reader object-type :initform "Place")))

(defclass profile (ap-object)
  ((describes :accessor describes :initarg :describes)
   (type :reader object-type :initform "Profile")))

(defclass tombstone (ap-object)
  ((former-type :accessor former-type :initarg :former-type)
   (deleted :accessor deleted :initarg :deleted)
   (type :reader object-type :initform "Tombstone")))

(defclass mention (link)
  ((type :reader object-type :initform "Mention")))
