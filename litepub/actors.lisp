(in-package :clap-litepub)

(defclass litepub-actor (clap-entities:actor)
  ((endpoints :reader actor-endpoints
	      :initarg :endpoints)
   (public-key :reader actor-public-key
	       :initarg :public-key)
   (discoverable :reader actor-discoverable
		 :initarg :discoverable)
   (preferred-username :reader actor-preferred-username
		       :initarg :preferred-username)
   (manually-approves-followers :reader actor-manually-approves-followers
				:initarg :manually-approves-followers))
  (:documentation "provides more of the default slots that litepub actors provide"))

(defclass application (litepub-actor)
  ((type :reader object-type :initform "Application")))

(defclass person (litepub-actor)
  ((type :reader object-type :initform "Person")))

(defclass group (litepub-actor)
  ((type :reader object-type :initform "Group")))

(defclass organization (litepub-actor)
  ((type :reader object-type :initform "Organization")))

(defclass service (litepub-actor)
  ((type :reader object-type :initform "Service")))
