(in-package #:clap-entities)

(defclass application (actor)
  ((type :reader object-type :initform "Application")))

(defclass person (actor)
  ((type :reader object-type :initform "Person")))

(defclass group (actor)
  ((type :reader object-type :initform "Group")))

(defclass organization (actor)
  ((type :reader object-type :initform "Organization")))

(defclass service (actor)
  ((type :reader object-type :initform "Service")))
