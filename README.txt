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
        browse-url
        Font size
    New
    File
    File manager
    Save/SaveAs
    Navigate
    Editing
        elpy-enable
            Indent
            Unindent
        4 space indent/deindent
        Repeat
        Macro
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
        whitespace-mode
        read-only-mode
    Window
    Frame
    Help



Configure
    To turn off backup
        M_x customize-option RET make-backup-files RET

    To turn off autosave
        M_x customize-option RET auto-save-default RET

    Indent
        M_x customize-option RET indent-tabs-mode
        M_x customize-option RET tab-width
        M_x customize-option RET fill-prefix(set-fill-prefix)

    ERC server
        M_x customize-option RET erc-server RET

    Customize-themes
        M_x customize-themes

    Clipboard
        M_x customize-option RET select-enable-clipboard RET

    Word wrap
        M_x customize-option RET truncate-lines RET

    Browser
        M_x customize-variable RET browse-url-browser-function RET 

    (
    for temporary use
        M_x set-variable RET select-enable-clipboard RET t RET
    inline
        setq select-enable-clipboard t
    )


Misc.
    Line number
        M_x linum-mode(line numbers)

    ispell-complete-word
        CTRL_M_i

    browse-url
        M_x browse-url

    Font size
        C-x C--
        C-x C-S-+

New
    CTRL_x b named_buffer <RET>

    Rename buffer
        M_x rename-buffer


File
    CTRL_x CTRL_f


File manager
    M_dired
        R       Rename/move file
        D       Delete file
        +       Create DIR.
        q       Close
        C       Copy file
        Z       Compress/decompress the file by gzip

        m       Mark a file
        u       Unmark
        U       Unmark all marked
        %m      Mark by pattern (regex)

        g       Refresh listing
        ^       Go to parent dir


Save/SaveAs
    Save(Ask question)    
        CTRL_x s

    Save
        CTRL_x CTRL_s
        
    SaveAs
        CTRL_x CTRL_w


Navigate
    move-beginning-of-line 
    beginning-of-line
        CTRL_a

    back-to-indentation(현재 줄의 글자 시작점으로 이동)
        M_m 

    Beginning of statement
        M_a

    End of statement
        M_e

    Goto start of page
        M_SHIFT_<

    Goto end of page
        M_SHIFT_>

    Page down
        CTRL_v

    Page up
        M_v


Editing
    elpy-enable
        Indent
            CTRL_c SHIFT_>

        Unindent
            CTRL_c SHIFT_<

    4 space indent/deindent
        M_i
        
        Select, from the beginning of the line to the end, multiple lines
        Indent  : CTRL_u  4 CTRL_x TAB
        Unindent: CTRL_u -4 CTRL_x TAB

    Repeat
        C-x z
        Once you pressed it, just press only z after that and

    Macros
        F3 insert someting F4
        F4
        M_3 F4 for 3 times repeat

    New line
        line 끝에서 개행
            CTRL_e CTRL_m

        cursor와 함께 개행
            CTRL_j

        cursor 고정 아랫줄 개행
            CTRL_o


    Undo, redo
        toggle undo/redo
            CTRL_r

        undo/redo
            CTRL_/

    Reload
        M_x revert-buffer

    Select, copy, paste
        Visual mode
            CTRL_SPACE CTRL_SPACE
            CTRL_@ CTRL_@

        Select again
            CTRL_x CTRL_x
    
        Select all
            CTRL_x h

        Select paragraph
            M_h

        Select page
            CTRL_x CTRL_p

        Copy
            M_w

        Paste
            CTRL_y
            M_x yank
            SHIFT_INSERT

        Cut
            CTRL_w

        cua-selection-mode
            M_x cua-selection-mode
            M_x cua-set-rectangle-mark

    Find/search
        search forward
            CTRL_s, M_x isearch-forward
            CTRL_s to next
            CTRL_r to previous

        search backward
            CTRL_r, M_x isearch-backward
            CTRL_s to next
            CTRL_r to previous

        to stop
            RET

        search-string forward
            CTRL_s RET search-string RET

        search-string backward
            CTRL_r RET search-string RET


        커서가 위치한 단어를 탐색 문자열로 사용
            CTRL_s CTRL_w

        커서가 위치한 줄을 탐색 문자열로 사용
            CTRL_s CTRL_y

        탐색을 반복한다.
            CTRL_s CTRL_s


        search for regular expression forward
            ESC CTRL_s

        search for regular expression backward
            ESC CTRL_r

        incremental search
            ESC CTRL_s

        incremental search backwards
            ESC CTRL_r


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
            M_x query-replace-regexp


    Execute
        shell-command-on-region
            M_SHIFT_| cmd RET
            Run with region contents as input
            
        shell-command
            M_SHIFT_! cmd RET
            display the output

        replaces the region with the output
            CTRL_u M_| cmd RET
        

Mode
    To get the current major mode
        CTRL_h m

    M_x fundamental-mode
    M_x asm-mode
    M_x c-mode
    M_x c++-mode
    M_x css-mode
    M_x fortran-mode
    M_x java-mode
    M_x javascript-mode
    M_x lisp-mode
    M_x lisp-interaction-mode
    M_x python-mode
    M_x perl-mode
    M_x ruby-mode

    elpa-elpy
        sudo apt install elpa-elpy
        sudo apt install python3-jedi black python3-autopep8 yapf3 python3-yapf

        M_x elpy-enable

        elpy-shell-send-region-or-buffer
            CTRL_c CTRL_c

        elpy-shell-switch-to-shell
            CTRL_c CTRL_z

        elpy-doc
            CTRL_c CTRL_d

    org_mode
        M_x org-mode

        create table
            CTRL_c |

        insert new column
            | <TAB>

        insert new row
            CTRL_c <RET>

        insert column
            M_S-<left|right>

        move column
            M_<up|down|left|right>

        Escape pipe-character in org-mode
            \vert for the pipe.

        org-export-as-html-to-buffer
            CTRL_c CTRL_e h H
     
    white-space-mode
        white-space-mode
    
    read-only-mode
        CTRL_x CTRL_q


Window
    split-window-horizontally
        CTRL_x 3

    split-window-vertically
        CTRL_x 2

    close all but one
        CTRL_x 1

    switching window
        CTRL_x o

    switching buffer
        ibuffer
        
        Show 'Switch to buffer prompt'
             CTRL_x (RELEASE CTRL) b
        
        Open ibuffer in another window
             CTRL_x_b

        Rotate buffer in current window
            CTRL_x <right> (next-buffer)
            CTRL_x <left>  (previous-buffer)

        meaning of symbol
            %   읽기 전용
            *   수정
            D   삭제 표시

        in ibuffer(buffer list)
            update                  : g
            open in another window  : o
            open in current window  : f
            find buffer             : j
            mark/unmark             : m u
            mark kill and execute   : d x
            mark and kill           : m k
            mark and open all       : m v
            quit                    : q

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


Help
    index                               C-h i, C-h ?
    command                             C-h
    function                            C-h f
    describe key(short)                 C-h c
    describe key(full)                  C-h k <key>    e.g. C-h k C-h i 또는 C-h k C-x i
    tutorial                            C-h t
    where is command                    C-h w
    describe variable                   C-h v
    key translations                    C-h b
    find documentation for command      C-h F
    find packages by topic keyword      C-h p
    ...
    quit from help                      q

