(in-package #:clap-entities)

(defclass application (actor)
  ((object-type :reader object-type :initform "Application")))

(defclass person (actor)
  ((object-type :reader object-type :initform "Person")))

(defclass group (actor)
  ((object-type :reader object-type :initform "Group")))

(defclass organization (actor)
  ((object-type :reader object-type :initform "Organization")))

(defclass service (actor)
  ((object-type :reader object-type :initform "Service")))
