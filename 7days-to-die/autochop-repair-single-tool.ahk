; utilize any primary mining/chopping item in slot 1
; continually chop/hack/mine, etc.
; auto repair the item after 100 swipes.
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
Loop 100 {
  send {click},{click}
    Sleep 500
}

  send `t
    Sleep 500
  MouseMove, 680,1145
  send {click},{click}
    Sleep 500
  MouseMove, 950,394
    Sleep 500
  send {click},{click}
    Sleep 500
  send `t
    Sleep 500
  send +,w+,w
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
