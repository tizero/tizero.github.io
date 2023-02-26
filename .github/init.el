;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(setq org-publish-project-alist
      '(
        ("content"
         :base-directory "./content"
         :publishing-directory "./public"
         :recursive t
         :publishing-function org-html-publish-to-html
         )
        ("static"
         :base-directory "./content"
         :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf"
         :publishing-directory "./public"
         :recursive t
         :publishing-function org-publish-attachment
         )
        ("org-site" :components ("content" "static"))
        ))
