(in-package :clap-litepub)

(defclass litepub-object (clap-entities:ap-object)
  ((@context :accessor atcontext
	     :initarg :atcontext
	     :initform "https://litepub.social/litepub/context.jsonld")
   (sensitive :accessor sensitive :initarg :sensitive) ;; as:sensitive
   (atom-uri :accessor atom-uri :initarg :atom-uri) ;; ostatus:atomUri
   (in-reply-to-atom-uri :accessor in-reply-to-atom-uri
			 :initarg :in-reply-to-atom-uri) ;; ostatus:inReplyToAtomUri
   (conversation :accessor conversation :initarg :conversation) ;; ostatus:conversation
   ))
