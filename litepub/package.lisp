(in-package :cl-user)
(defpackage clap-litepub
  (:use :cl :clap-entities)
  (:export litepub-object litepub-actor
	   person application
	   group organization service

	   note emoji public-key
	   property-value))

;; this imports all symbols from clap-entities so that
;;  classes defined here do not generate warnings because
;;  of symbol clashes
(let ((clap (find-package :clap-entities)))
  (do-symbols (sym clap)
    (multiple-value-bind (_ place) (find-symbol (symbol-name sym) clap)
      (declare (ignore _))
      (when (and (eql place :internal)
		 (not (find-symbol (symbol-name sym) (find-package :clap-litepub))))
	(import sym :clap-litepub)))))
