;;; -*- Mode: Common-Lisp; Package: USER -*-

;; This software is Copyright (c) Marina Motion LLC, November 2001.
;; Marina Motion LLC grants you the rights to distribute
;; and use this software as governed by the terms
;; of the Lisp Lesser GNU Public License
;; (http://opensource.franz.com/preamble.html),
;; known as the LLGPL.

(in-package :user)

(defsystem :pgsql
    (:pretty-name "PostGreSQL Database Binding"
     :default-package :pg
     :default-pathname "/public/database/pgsql/")
  (:serial "pg-package"
	   "bind-libpq"
	   "sql"))



