(defpackage :clap.actors
  (:use :cl :json-mop :clap.core)
  (:export application
           person
           group
           organization))

(in-package :clap.actors)

(defclass application (clap.core:object) ())
(defclass person (clap.core:object) ())
(defclass group (clap.core:object) ())
(defclass organization (clap.core:object) ())