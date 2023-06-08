(require 'autothemer)

(autothemer-deftheme
 plastic "A simple syntax and UI theme."

 ((((class color) (min-colors #xFFFFFF))) ;; We're only concerned with graphical Emacs.

  ;; Define the Plastic color palette.
  ;; Syntax
  (plastic-sunglo             "#E06C75") ;; Keywords
  (plastic-fountain-blue      "#56B6C2") ;; Constants
  (plastic-cornflower-blue    "#61AFEF") ;; Storage
  (plastic-olivine            "#98C379") ;; String Literals
  (plastic-whiskey            "#D19A66") ;; Attributes & Props
  (plastic-harvest-gold       "#E5C07B") ;; Tags & Types
  (plastic-lavender           "#B57EDC") ;; Function Names
  (plastic-shuttle-gray       "#5F6672") ;; Comments
  (plastic-cadet-blue         "#A9B2C3") ;; Text & Punctuation
  (plastic-ghost              "#C6CCD7") ;; Variables

  ;; User Interface
  (plastic-bunker             "#0D1117") ;; Borders
  (plastic-woodsmoke          "#181A1F") ;; Background
  (plastic-shark              "#21252B") ;; Workspace
  (plastic-dodger-blue        "#1085FF") ;; Information
  (plastic-rob-roy            "#E9D16C") ;; Warning
  (plastic-valencia           "#D74E42") ;; Error

  ;; ANSI
  (plastic-ansi-black         "#5F6672") ;; plastic-shuttle-gray
  (plastic-ansi-red           "#E06C75") ;; plastic-sunglo
  (plastic-ansi-green         "#98C379") ;; plastic-olivine
  (plastic-ansi-yellow        "#E5C07B") ;; plastic-harvest-gold
  (plastic-ansi-blue          "#61AFEF") ;; plastic-cornflower-blue
  (plastic-ansi-magenta       "#B57EDC") ;; plastic-lavender
  (plastic-ansi-cyan          "#56B6C2") ;; plastic-fountain-blue
  (plastic-ansi-white         "#A9B2C3") ;; plastic-cadet-blue
  )

 ;; Customize faces
 ;; ((default                   (:foreground plastic-white :background plastic-black))
 ;;  (cursor                    (:background plastic-dk-orange))
 ;;  (region                    (:background plastic-dk-purple))
 ;;  (mode-line                 (:background plastic-dk-purple))
 ;;  (font-lock-keyword-face    (:foreground plastic-purple))
 ;;  (font-lock-constant-face   (:foreground plastic-green))
 ;;  (font-lock-string-face     (:foreground plastic-orange))
 ;;  (font-lock-builtin-face    (:foreground plastic-green))

 ;; (org-level-1               (:foreground plastic-orange))))

 ;; Core

 ((default                                   (:background plastic-woodsmoke :foreground plastic-cadet-blue))
  (cursor                                    (:background plastic-dodger-blue))
  (mode-line                                 (:background plastic-bunker))
  (mode-line-inactive                        (:background plastic-woodsmoke))
  (fringe                                    (:background plastic-woodsmoke))
  (hl-line                                   (:background plastic-woodsmoke))
  ;; (region                                    (:background gruvbox-dark2)) ;;selection
  ;; (secondary-selection                       (:background gruvbox-dark1))
  ;; (minibuffer-prompt                         (:foreground gruvbox-bright_green :bold t))
  ;; (vertical-border                           (:foreground gruvbox-dark2))
  ;; (internal-border                           (:background gruvbox-dark2))
  ;; (window-divider                            (:foreground gruvbox-dark2))
  ;; (link                                      (:foreground gruvbox-faded_blue :underline t))
  ;; (shadow                                    (:foreground gruvbox-dark4))

  ;;; Built-in syntax

  (font-lock-builtin-face                            (:foreground plastic-whiskey))
  (font-lock-constant-face                           (:foreground plastic-fountain-blue))
  (font-lock-comment-face                            (:foreground plastic-shuttle-gray))
  (font-lock-function-name-face                      (:foreground plastic-lavender))
  (font-lock-keyword-face                            (:foreground plastic-sunglo))
  (font-lock-string-face                             (:foreground plastic-olivine))
  (font-lock-number-face                             (:foreground plastic-fountain-blue))
  (font-lock-variable-name-face                      (:foreground plastic-ghost))
  (font-lock-type-face                               (:foreground plastic-harvest-gold))
  (font-lock-property-face                           (:foreground plastic-whiskey))
  (font-lock-warning-face                            (:foreground plastic-rob-roy :bold t))

  ;;; Basic faces
  (error                                             (:foreground plastic-valencia :bold t))
  (success                                           (:foreground plastic-olivine :bold t))
  (warning                                           (:foreground plastic-rob-roy :bold t))
  ;; (alert-low-face                                    (:foreground plastic-bright_blue))
  ;; (trailing-whitespace                               (:background plastic-bright_red))
  ;; (escape-glyph                                      (:foreground plastic-bright_aqua))
  ;; (header-line                                       (:background plastic-dark0 :foreground plastic-light3 :box nil :inherit nil))
  (highlight                                         (:background plastic-shuttle-gray :foreground plastic-ghost))
  ;; (homoglyph                                         (:foreground plastic-bright_yellow))
  ;; (match                                             (:foreground plastic-dark0 :background plastic-bright_blue))


   ;;; org-mode

  (org-hide                                  (:foreground plastic-shuttle-gray))
  (org-level-1                               (:foreground plastic-sunglo))
  (org-level-2                               (:foreground plastic-olivine))
  (org-level-3                               (:foreground plastic-harvest-gold))
  (org-level-4                               (:foreground plastic-cornflower-blue))
  (org-level-5                               (:foreground plastic-lavender))
  (org-level-6                               (:foreground plastic-fountain-blue))
  (org-level-7                               (:foreground plastic-cadet-blue))
  (org-level-8                               (:foreground plastic-shuttle-gray))
  (org-special-keyword                       (:inherit 'font-lock-comment-face))
  ;; (org-drawer                                (:inherit 'font-lock-function-name-face))
  ;; (org-column                                (:background plastic-dark0))
  ;; (org-column-title                          (:background plastic-dark0 :underline t :weight 'bold))
  (org-warning                               (:inherit 'font-lock-warning-face))
  ;; (org-archived                              (:foreground plastic-light0 :weight 'bold))
  ;; (org-link                                  (:foreground plastic-faded_aqua :underline t))
  ;; (org-footnote                              (:foreground plastic-bright_aqua :underline t))
  ;; (org-ellipsis                              (:foreground plastic-light4))
  ;; (org-date                                  (:foreground plastic-bright_blue :underline t))
  ;; (org-sexp-date                             (:foreground plastic-faded_blue :underline t))
  (org-tag                                   (:inherit 'font-lock-type-face))
  ;; (org-list-dt                               (:bold t :weight 'bold))
  (org-todo                                  (:foreground plastic-sunglo :weight 'bold :bold t))
  (org-done                                  (:foreground plastic-olivine :weight 'bold :bold t))
  ;; (org-agenda-done                           (:foreground plastic-bright_aqua))
  ;; (org-headline-done                         (:foreground plastic-bright_aqua))
  ;; (org-table                                 (:foreground plastic-bright_blue))
  ;; (org-block                                 (:background plastic-dark0_soft))
  ;; (org-block-begin-line                      (:background plastic-dark1))
  ;; (org-block-end-line                        (:background plastic-dark1))
  ;; (org-formula                               (:foreground plastic-bright_yellow))
  (org-document-title                        (:foreground plastic-cornflower-blue))
  (org-document-info                         (:foreground plastic-cornflower-blue))
  ;; (org-agenda-structure                      (:inherit 'font-lock-comment-face))
  ;; (org-agenda-date-today                     (:foreground plastic-light0 :weight 'bold :italic t))
  ;; (org-scheduled                             (:foreground plastic-bright_yellow))
  ;; (org-scheduled-today                       (:foreground plastic-bright_blue))
  ;; (org-scheduled-previously                  (:foreground plastic-faded_red))
  ;; (org-upcoming-deadline                     (:inherit 'font-lock-keyword-face))
  ;; (org-deadline-announce                     (:foreground plastic-faded_red))
  ;; (org-time-grid                             (:foreground plastic-faded_orange))
  ;; (org-latex-and-related                     (:foreground plastic-bright_blue))
 )

 (provide-theme 'plastic))
