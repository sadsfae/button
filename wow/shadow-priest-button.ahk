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
  send -
    sleep 1000
  send 2
    sleep 2000
  send 0
    Sleep 1000
  send 3
    sleep 2000
  send 5
    Sleep 3000
  send 5
    sleep 3000
  send 9
    sleep 2000
  send 2
    sleep 2000
  send 0
    Sleep 1000
  send 3
    sleep 2000
  send 5
    Sleep 3000
  send 5
    sleep 3000
  send 9
    sleep 1000
  send -
    sleep 1000
  send 2
    sleep 2000
  send 0
    Sleep 1000
  send 3
    sleep 2000
  send 5
    Sleep 3000
  send 5
    sleep 3000
  send -,6
    sleep 2000
  send 9
    sleep 1000
  if KeepWinZRunning1
    settimer, f_Loop, -100
return

;;; button between "$" and "::" ends loop
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
