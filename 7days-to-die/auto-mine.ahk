; cycle through inventory of 8 items
; right click spam burn through each
; usage: mindless mining
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
  send +,w
    Sleep 500
Loop 131 {
  send {click},{click}
    Sleep 800
}
  send 2
  send +,w
    Sleep 500
Loop 131 {
  send {click},{click}
    Sleep 800
}
  send 3
  send +,w
    Sleep 500
Loop 131 {
  send {click},{click}
    Sleep 800
}
  send 4
  send +,w
    Sleep 500
Loop 131 {
  send {click},{click}
    Sleep 800
}
  send 5
  send +,w
    Sleep 500
Loop 131 {
  send {click},{click}
    Sleep 800
}
  send 6
  send +,w
    Sleep 500
Loop 131 {
  send {click},{click}
    Sleep 800
}
  send 7
  send +,w
    Sleep 500
Loop 131 {
  send {click},{click}
    Sleep 800
}
  send 8
  send +,w
    Sleep 500
Loop 131 {
  send {click},{click}
    Sleep 800
}
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
