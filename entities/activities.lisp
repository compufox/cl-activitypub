(in-package #:clap-entities)

(defclass accept (activity)
  ((object-type :reader object-type :initform "Accept")))

(defclass tentative-accept (accept)
  ((object-type :reader object-type :initform "TentativeAccept")))

(defclass invite (activity)
  ((object-type :reader object-type :initform "Invite")))

(defclass reject (activity)
  ((object-type :reader object-type :initform "Reject")))

(defclass tentative-reject (reject)
  ((object-type :reader object-type :initform "TentativeReject")))

(defclass travel (intransitive-activity)
  ((object-type :reader object-type :initform "Travel")))

(defclass arrive (intransitive-activity)
  ((object-type :reader object-type :initform "Arrive")))

(defclass create (activity)
  ((object-type :reader object-type :initform "Create")))

(defclass delete-activity (activity)
  ((object-type :reader object-type :initform "Delete")))

(defclass undo (activity)
  ((object-type :reader object-type :initform "Undo")))

(defclass update (activity)
  ((object-type :reader object-type :initform "Update")))

(defclass add (activity)
  ((object-type :reader object-type :initform "Add")))

(defclass remove-activity (activity)
  ((object-type :reader object-type :initform "Remove")))

(defclass move (activity)
  ((object-type :reader object-type :initform "Move")))

(defclass follow (activity)
  ((object-type :reader object-type :initform "Follow")))

(defclass ignore-activity (activity)
  ((object-type :reader object-type :initform "Ignore")))

(defclass like (activity)
  ((object-type :reader object-type :initform "Like")))

(defclass announce (activity)
  ((object-type :reader object-type :initform "Announce")))

(defclass block-activity (ignore-activity)
  ((object-type :reader object-type :initform "Block")))

(defclass flag (activity)
  ((object-type :reader object-type :initform "Flag")))

(defclass dislike (activity)
  ((object-type :reader object-type :initform "Dislike")))

(defclass join (activity)
  ((object-type :reader object-type :initform "Join")))

(defclass leave (activity)
  ((object-type :reader object-type :initform "Leave")))

(defclass view (activity)
  ((object-type :reader object-type :initform "View")))

(defclass listen-activity (activity)
  ((object-type :reader object-type :initform "Listen")))

(defclass read-activity (activity)
  ((object-type :reader object-type :initform "Read")))

(defclass question (intransitive-activity)
  ((one-of :accessor one-of :initarg :one-of)
   (any-of :accessor any-of :initarg :any-of)
   (closed :accessor closed :initarg :closed)
   (object-type :reader object-type :initform "Question")))
