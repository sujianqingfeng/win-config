;方向映射
<!h::Send {Left}
<!l::Send {Right}
<!j::Send {Down}
<!k::Send {Up}

; left shift backspace -> delete
<+Backspace::Send {DEL}

; right alt esc -> `
>!Esc::Send,``
; right ctr esc -> ~
>^Esc::Send,~

;cap lock -> ctr
CapsLock::Control