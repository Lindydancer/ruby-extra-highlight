;;; ruby-extra-highlight-test-setup.el --- Setup and execute tests.  -*- lexical-binding: t; -*-

;; Copyright (C) 2017 Anders Lindgren

;; Author: Anders Lindgren
;; Keywords: faces languages

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; This package sets up a suitable enviroment for testing
;; ruby-extra-highlight, and executes the tests.
;;
;; Usage:
;;
;;   emacs -q -l ruby-extra-highlight-test-setup.el
;;
;; Note that this package assumes that some packages are located in
;; specific locations.

;;; Code:

(setq inhibit-startup-screen t)
(prefer-coding-system 'utf-8)

(defvar ruby-extra-highlight-test-setup-dir
  (if load-file-name
      (file-name-directory load-file-name)
    default-directory))

(dolist (dir '("." ".." "../../faceup"))
  (add-to-list 'load-path (concat ruby-extra-highlight-test-setup-dir dir)))

(require 'ruby-extra-highlight)
(require 'ruby-extra-highlight-test-files)

(ert t)

;;; ruby-extra-highlight-test-setup.el ends here
