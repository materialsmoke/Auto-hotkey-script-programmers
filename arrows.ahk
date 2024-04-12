#NoEnv  						; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input 					; Recommended for new scripts due to its superior speed and reliability.

SetCapsLockState, alwaysoff

$~*Capslock::
return

capslock & j::
Send,{left}
return

capslock & i::
Send,{up}
return

capslock & k::
Send,{down}
return

capslock & l::
Send,{right}
return

capslock & o::
Send,{end}
return

capslock & u::
Send,{home}
return

capslock & h::
Send,{backspace}
return

capslock & n::
Send,{esc}
return

capslock & s::
Send,^{left}
return

capslock & f::
Send,^{right}
return

capslock & d::
Send,^{d}
return

capslock & y::
Send,^{backspace}
return

capslock & enter::
Send,{esc}{end}{enter}
return

capslock & g::
Send,{delete}
return

capslock & q::
Send,^+{up}
return

capslock & w::
Send,^+{down}
return

capslock & e::
Send,!{up}
return

capslock & r::
Send,!{down}
return

capslock & t::
Send,^{delete}
return

AppsKey::SendInput, {Ctrl Down}
AppsKey Up::SendInput, {Ctrl Up}
