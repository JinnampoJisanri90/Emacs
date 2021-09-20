Index
    Configure
        To turn off backup
        To turn off autosave
        ERC server
        Customize-themes
        Clipboard
        Word wrap
    Misc.
        Line number
        ispell-complete-word
    New
    File
    Save/Save as
    Navigate
    Editing
        Indent
        Unindent
        New line
        Undo, redo
        Reload
        Select, copy, paste
        Find/search
        Substitution
        Execute
    Mode
        elpa-elpy
        org_mode
    Window
    Frame


Configure
    To turn off backup
        M_x customize-option RET make-backup-files RET

    To turn off autosave
        M_x customize-option RET auto-save-default RET

    Indent
        M_x customize-option RET indent-tabs-mode
        M_x customize-option RET tab-width

    ERC server
        M_x customize-option RET erc-server RET

    Customize-themes
        M_x customize-themes

    Clipboard
        M_x customize-option RET select-enable-clipboard RET

    Word wrap
        M_x customize-option RET truncate-lines RET

    (for temporary use
     M_x set-variable RET select-enable-clipboard RET t RET)


Misc.
    Line number
        M_x linum-mode(line numbers)

    ispell-complete-word
        CTRL_M_i


New
    CTRL_x b named_buffer <RET>

    Rename buffer
        M_x new_buffer_name


File
    CTRL_x CTRL_f

    dired
        M_dired


Save/Save as
    Save
        CTRL_x CTRL_s
        CTRL_x s

    Save as
        CTRL_x CTRL_w


Navigate
    move-beginning-of-line 
    beginning-of-line
        CTRL_a

    back-to-indentation(현재 줄의 글자 시작점으로 이동)
        M_m 

    Page down
        CTRL_v

    Page up
        M_v


Editing
    Indent
        CTRL_c SHIFT_>

    Unindent
        CTRL_c SHIFT_<

    New line
        cursor 와 함께 개행
            CTRL_j

        cursor 고정 아랫줄 개행
            CTRL_o

        line 끝에서 개행
            CTRL_e CTRL_m

    Undo, redo
        toggle undo/redo
            CTRL_r

        undo/redo
            CTRL_/

    Reload
        M-x revert-buffer

    Select, copy, paste
        Visual mode
            CTRL_SPACE CTRL_SPACE
            CTRL_@ CTRL_@

        Select all
            CTRL_x h

        Copy
            M_w

        Paste
            CTRL_y
            M_x yank
            SHIFT-INSERT

        Cut
            CTRL_w

        cua-selection-mode
            M_x cua-selection-mode
            M_x cua-set-rectangle-mark

    Find/search
        search forward
            C-s, M-x isearch-forward
            C-s to next
            C-r to previous

        search backward
            C-r, M-x isearch-backward
            C-s to next
            C-r to previous

        to stop
            RET

        search-string forward
            C-s RET search-string RET

        search-string backward
            C-r RET search-string RET


        커서가 위치한 단어를 탐색 문자열로 사용
            C-s C-w

        커서가 위치한 줄을 탐색 문자열로 사용
            C-s C-y

        탐색을 반복한다.
            C-s C-s


        search for regular expression forward
            ESC C-s

        search for regular expression backward
            ESC C-r

        incremental search
            ESC C-s

        incremental search backwards
            ESC C-r


    Substitution
        Query replace
            M_SHIFT_%
            Space || y      replace this occurence
            Del || n        skip
            .               replace current one and exit
            ,               replace and pause (resume with Space or y)
            !               replace all following occurences
            ^               back to previous match
            RET or q        quit

        Search and replace
            M-x query-replace-regexp


    Execute
        M_| cmd RET
        python RET


Mode
    To get the current major mode
        CTRL_h m

    elpa-elpy
        sudo apt install elpa-elpy
        sudo apt install python3-jedi black python3-autopep8 yapf3 python3-yapf

        elpy-enable

        elpy-shell-send-region-or-buffer
            CTRL_c CTRL_c

        elpy-shell-switch-to-shell
            CTRL_c CTRL_z

        elpy-doc
            CTRL_c CTRL_d

    org_mode
        M_x org-mode


Window
    split-window-horizontally
        CTRL_x 3

    split-window-vertically
        CTRL_x 2

    switching window
        CTRL_x o

    switching buffer
        CTRL_x (RELEASE CTRL) b or ibuffer
        CTRL_x_b
        CTRL_x <right> (next-buffer)
        CTRL_x <left>  (previous-buffer)

    resize
        resize vertical window
            to right
                CTRL_x }
                M_x enlarge-window-horizontally
                ex) CTRL_u 20 CTRL_x }  : 20번 크게

            to left
                CTRL_x {
                M_x shrink-window-horizontally
                ex) CTRL_u 20 CTRL_x {  : 20번 작게

        resize horizonal window
            enlarge-window
                CTRL_x ^

            shrink-window
                M_x

        balance-windows
            CTRL_x +


Frame
    make-frame-command
        CTRL_x 5 2

    find-file-other-frame
        CTRL_x 5 f

    other-frame
        CTRL_x 5 o

    close this frame
        CTRL_x 5 0


