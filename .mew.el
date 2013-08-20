(setq mew-use-master-passwd t)
(setq mew-summary-form
      '(type (8 date) " " (20 from) "\t\t|\t" t (0 subj)))
(setq mew-summary-form-extract-rule '(name))
(setq mew-fcc "+sent")
(setq mew-demo-picture t)
(setq mew-pop-size 0)
;;(setq mew-imap-prefix-list '("#mh/" "#mhinbox"))
(setq mew-auto-get t)
(setq toolbar-mail-reader 'Mew)
(setq mew-use-cached-passwd t)
(setq mew-passwd-timer-unit 999)
(setq mew-passwd-lifetime 999)
(set-default 'mew-decode-quoted 't)  
(setq mew-prog-pgp "gpg")
(setq mew-pop-delete nil)
(setq mew-config-alist 
      ;;Gmail
      '(("default"
         ("name"		. "QIN Jian")
         ("user"		. "qinjian")
         ("mail-domain"	. "mapbar.com")
         ("proto"	. "+")
         ("pop-ssl"	. nil)
         ("pop-ssl-port"	. "110")
         ("pop-auth"	. pass)
         ("pop-user"	. "qinjian@mapbar.com")
         ("pop-server"	. "mail.mapbar.com")
         ("smtp-ssl"	. nil)
         ("smtp-ssl-port". "25")
         ("smtp-auth-list" . ("PLAIN" "LOGIN" "CRAM-MD5"))
         ("smtp-user"	. "qinjian@mapbar.com")
         ("smtp-server"	. "mail.mapbar.com"))))
(setq mew-ssl-verify-level 0)
(setq mew-prog-ssl "/usr/bin/mewstunnel")



;;Biff
(setq mew-use-biff t) ;; nil
(setq mew-use-biff-bell t) ;; nil
(setq mew-pop-biff-interval 30) ;; 5 (minutes)

;;Reply
(setq mew-reply-sender-alist
      '(("Reply-To:"
         ("To:" "Reply-To:" "From:"))
        (t
         ("To:" "From:"))))
(setq mew-reply-all-alist
      '((("Followup-To:" "poster")
         ("To:" "From:"))
        ("Followup-To:"
         ("Newsgroups:" "Followup-To:"))
        ("Newsgroups:"
         ("Newsgroups:" "Newsgroups:"))
        ("Reply-To:"
         ("To:" "Reply-To:"))
        (t
         ("To:" "From:")
         ("Cc:" "To:" "Cc:" "Apparently-To:"))))


;;cite
(setq mew-summary-reply-with-citation-position 'body)
(setq mew-cite-fields '("Date:" "From:"))
(setq mew-cite-format "\n\nOn %s %s wrote:\n")
(add-hook 'mew-before-cite-hook 'mew-header-goto-body)
(defvar mew-cite-prefix "> ")

(setq mew-refile-guess-alist
      '(("To:"
         ("swarm-agents@googlegroups.com" . "+swarm-agents")
         ("lisp-cn@googlegroups.com" . "+lisp-cn")
         ("shlug@googlegroups.com" . "+shlug")
         ("@hadoop.apache.org"  . "+hadoop")
         ("cn-clojure@googlegroups.com" . "+cn-clojure")
         ("jianqin_bbp@googlegroups.com"      . "+bbp")
         ("hellogcc@freelists.org" . "+hellogcc")
         ("clojure@googlegroups.com" . "+clojure"))
        ("From:"
         ("@plus.google.com" . "+google-plus")
         ("@godaddy.com" . "+godaddy")
         ("@amazon.cn" . "+amazon")
         ("qinjian@mapbar.com" . "+mapbar")
         ("vpngate-daily@vpngate.net" . "+vpn"))
        ("Cc:"
         ("qinjian@mapbar.com" . "+mapbar")
         ("vpngate-daily@vpngate.net" . "+vpn")
         ("lisp-cn@googlegroups.com" . "+lisp-cn")
         ("shlug@googlegroups.com" . "+shlug")
         ("@hadoop.apache.org"  . "+hadoop")
         ("cn-clojure@googlegroups.com" . "+cn-clojure")
         ("jianqin_bbp@googlegroups.com"      . "+bbp")
         ("hellogcc@freelists.org" . "+hellogcc")
         ("clojure@googlegroups.com" . "+clojure"))
        (nil . "+inbox")))

;;signature
;;(setq mew-signature-file "~/.signature")
;;(setq mew-signature-insert-last t)

;;Thread
(setq mew-prog-imls-arg-list '("--thread=yes" "--indent=2"))
(setq mew-use-fancy-thread t)
(setq mew-fancy-thread-indent-strings  [" +" " +" " |" "  "] )
(setq mew-use-thread-separator nil)
(setq mew-thread-separator "--")

;;Sort
(setq mew-sort-default-key-alist
      '(("+inbox" . "date")
        ("+xiyoulinux". "subject")
        ("+zh-kernel". "subject")
        ("+zeuux". "subject")
        ("+lkml" . "subject")))

;;Forward
(setq mew-field-delete-for-forwarding '("Received:" "Return-Path:"))

(setq mew-ssl-verify-level 0)
(setq mew-use-cached-passwd t)

