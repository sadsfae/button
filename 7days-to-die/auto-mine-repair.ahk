; cycle through inventory of 8 items
; right click spam burn through each
; auto repair, create axe if iron selected
; in craft menu.
; credit: aathomas
#NoEnv
#MaxThreadsPerHotkey 4
Process,priority,,High 
#IfWinActive

$Mbutton::
if auto_attack
{
    auto_attack=0
    SetNumlockState, off
    return
}
auto_attack=1
    settimer, f_Loop, -100
    SetNumlockState, on
    return
f_Loop:

  send 1
    Sleep 500
  send +,w+,w

Loop 125 {
  send {click},{click}
    Sleep 800
}

  send `t
  MouseMove, 675,1025
    Sleep 200
  send {click},{click}
    Sleep 200
  MouseMove, 950,351
    Sleep 200
  send {click},{click}
  send `t
    Sleep 500

  send 2
    Sleep 500
  send +,w+,w

Loop 125 {
  send {click},{click}
    Sleep 800
}

  send `t
  MouseMove, 750,1025
    Sleep 200
  send {click},{click}
    Sleep 200
  MouseMove, 950,351
    Sleep 200
  send {click},{click}
  send `t
    Sleep 500

  send 3
    Sleep 500
  send +,w+,w

Loop 125 {
  send {click},{click}
    Sleep 800
}

  send `t
  MouseMove, 825,1025
    Sleep 200
  send {click},{click}
    Sleep 200
  MouseMove, 950,351
    Sleep 200
  send {click},{click}
  send `t
    Sleep 500
  send 4
    Sleep 500
  send +,w+,w

Loop 125 {
  send {click},{click}
    Sleep 800
}

  send `t
  MouseMove, 900,1025
    Sleep 200
  send {click},{click}
    Sleep 200
  MouseMove, 950,351
    Sleep 200
  send {click},{click}
  send `t
    Sleep 500
  send 5
    Sleep 500
  send +,w+,w

Loop 125 {
  send {click},{click}
    Sleep 800
}

  send `t
  MouseMove, 975,1025
    Sleep 200
  send {click},{click}
    Sleep 200
  MouseMove, 950,351
    Sleep 200
  send {click},{click}
  send `t
    Sleep 500
  send 6
    Sleep 500
  send +,w+,w

Loop 125 {
  send {click},{click}
    Sleep 800
}
  send `t
  MouseMove, 1025,1025
    Sleep 200
  send {click},{click}
    Sleep 200
  MouseMove, 950,351
    Sleep 200
  send {click},{click}
  send `t
    Sleep 500

  send 7
    Sleep 500
  send +,w+,w

Loop 125 {
  send {click},{click}
    Sleep 800
}

  send `t
  MouseMove, 1125,1025
    Sleep 200
  send {click},{click}
    Sleep 200
  MouseMove, 950,351
    Sleep 200
  send {click},{click}
  send `t
    Sleep 500

  send 8
    Sleep 500
  send +,w+,w

Loop 125 {
  send {click},{click}
    Sleep 800
}

  send `t
  MouseMove, 1200,1025
    Sleep 200
  send {click},{click}
    Sleep 200
  MouseMove, 950,351
    Sleep 200
  send {click},{click}
  send `t
    Sleep 500

  if auto_attack
    settimer, f_Loop, -100
return
$Xbutton1::
if kill_check
{
    kill_check=0
    SetNumlockState, off
    SetScrollLockState, off
    SetCapsLockState, off
    return
}
;Make the parsing loop no
Critical

kill_everything=1
  settimer, loop_kill, -100
  Reload
  SetNumlockState, off
  SetScrollLockState, off
  SetCapsLockState, off

loop_kill:
  if kill_everything
    settimer, loop_kill, -100
return
