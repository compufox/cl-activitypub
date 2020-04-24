(in-package #:clap-entities)

(defclass accept (activity)
  ((type :reader object-type :initform "Accept")))

(defclass tentative-accept (accept)
  ((type :reader object-type :initform "TentativeAccept")))

(defclass invite (activity)
  ((type :reader object-type :initform "Invite")))

(defclass reject (activity)
  ((type :reader object-type :initform "Reject")))

(defclass tentative-reject (reject)
  ((type :reader object-type :initform "TentativeReject")))

(defclass travel (intransitive-activity)
  ((type :reader object-type :initform "Travel")))

(defclass arrive (intransitive-activity)
  ((type :reader object-type :initform "Arrive")))

(defclass create (activity)
  ((type :reader object-type :initform "Create")))

(defclass delete-activity (activity)
  ((type :reader object-type :initform "Delete")))

(defclass undo (activity)
  ((type :reader object-type :initform "Undo")))

(defclass update (activity)
  ((type :reader object-type :initform "Update")))

(defclass add (activity)
  ((type :reader object-type :initform "Add")))

(defclass remove-activity (activity)
  ((type :reader object-type :initform "Remove")))

(defclass move (activity)
  ((type :reader object-type :initform "Move")))

(defclass follow (activity)
  ((type :reader object-type :initform "Follow")))

(defclass ignore-activity (activity)
  ((type :reader object-type :initform "Ignore")))

(defclass like (activity)
  ((type :reader object-type :initform "Like")))

(defclass announce (activity)
  ((type :reader object-type :initform "Announce")))

(defclass block-activity (ignore-activity)
  ((type :reader object-type :initform "Block")))

(defclass flag (activity)
  ((type :reader object-type :initform "Flag")))

(defclass dislike (activity)
  ((type :reader object-type :initform "Dislike")))

(defclass join (activity)
  ((type :reader object-type :initform "Join")))

(defclass leave (activity)
  ((type :reader object-type :initform "Leave")))

(defclass view (activity)
  ((type :reader object-type :initform "View")))

(defclass listen-activity (activity)
  ((type :reader object-type :initform "Listen")))

(defclass read-activity (activity)
  ((type :reader object-type :initform "Read")))

(defclass question (intransitive-activity)
  ((one-of :accessor one-of :initarg :one-of)
   (any-of :accessor any-of :initarg :any-of)
   (closed :accessor closed :initarg :closed)
   (type :reader object-type :initform "Question")))
