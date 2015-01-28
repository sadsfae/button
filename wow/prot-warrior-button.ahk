#NoEnv
#MaxThreadsPerHotkey 4
Process,priority,,High 
#IfWinActive
;;; button between "$" and "::" starts loop
$Mbutton::
if KeepWinZRunning1
{
    KeepWinZRunning1=0
    return
}
KeepWinZRunning1=1
    settimer, f_Loop, -100
    return
f_Loop:
  send 3
    Sleep 1500
  send 6,8
    sleep 1500
  send .
    sleep 1000
  send 7,2
    Sleep 1000
  send 9,4
    sleep 1000
  send 4,0,2
    sleep 1000
  send 7,6,.
    Sleep 1000
  send 6,4
    sleep 1000
  send 2,7,9
    Sleep 1000
  send 4,0,.
    sleep 1000
  send 6,4,0
    Sleep 1000
  send 9,6,2
    sleep 1000 
  send 4,0,9
    sleep 1000
  send 6,4
    Sleep 2000
  send 7,2,.,4
    Sleep 1000
  send 9,6,8
    sleep 1000
  send 0,4
    sleep 1000
  send 6,4,2
    Sleep 1000
  send 4,0,.,8
    sleep 1000
  send 6,0
    Sleep 1000
  send 7,3,.
    Sleep 1000
  send 2,4,6
    sleep 1000
  send 0,4,9
    sleep 1000
  send 7,4,0
    Sleep 2000
  send 6,4,0,6
    Sleep 2000
  if KeepWinZRunning1
    settimer, f_Loop, -100
return

;;; character between "$" and "::" stops the loop
$`::
if KeepWinZRunning2
{
    KeepWinZRunning2=0
    SetScrollLockState, off
    SetCapsLockState, off
    return
}
Critical
KeepWinZRunning4=1
  settimer, loop4, -100
  Reload
  SetScrollLockState, off
  SetCapsLockState, off
  return
loop4:
  if KeepWinZRunning4
    settimer, loop4, -100
return
