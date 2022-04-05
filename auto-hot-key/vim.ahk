; 映射关系
; # -> win
; ! -> alt
; ^ -> ctrl
; + -> shift
; < -> 左边的
; > -> 右边的

; 关闭capslock键
SetCapsLockState, AlwaysOff
return

;方向映射
CapsLock & h::Send {Left}
CapsLock & l::Send {Right}
CapsLock & j::Send {Down}
CapsLock & k::Send {Up}


; left shift backspace -> delete
<+Backspace::Send {DEL}

; right alt esc -> `
>!Esc::Send,``
; right ctr esc -> ~
>^Esc::Send,~

;cap lock -> ctr
; CapsLock::Control




; esc自动切换成英文

#Persistent ;一直运行
~esc::

Send, {ESC}

; 下方代码可只保留一个
; SwitchIME(0x04090409) ; 英语(美国) 美式键盘
SwitchIME(0x08040804) ; 中文(中国) 简体中文-美式键盘
return


SwitchIME(dwLayout){
    HKL:=DllCall("LoadKeyboardLayout", Str, dwLayout, UInt, 1)
    ControlGetFocus,ctl,A
    SendMessage,0x50,0,HKL,%ctl%,A
}

