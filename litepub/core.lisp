(in-package :clap-litepub)

(defclass litepub-object (clap-entities:ap-object)
  ((sensitive :accessor sensitive :initarg :sensitive) ;; as:sensitive
   (atom-uri :accessor atom-uri :initarg :atom-uri) ;; ostatus:atomUri
   (in-reply-to-atom-uri :accessor in-reply-to-atom-uri
			 :initarg :in-reply-to-atom-uri) ;; ostatus:inReplyToAtomUri
   (conversation :accessor conversation :initarg :conversation) ;; ostatus:conversation
   ))
