#NoEnv
#MaxThreadsPerHotkey 4
Process,priority,,High 
#IfWinActive
;
;
;First rotational case-like statement
$MButton::
if KeepWinZRunning1
{
    KeepWinZRunning1=0
    SetNumlockState, off
    return
}
KeepWinZRunning1=1
    settimer, f2_Loop, -100
    SetNumlockState, on
    return
f2_Loop:
  send ?
  send 6
    sleep 20000
  send ?
  send 9
    Sleep 25000
  send ?
  send 6
    Sleep 20000
  send ?
  send 4
    sleep 15000
  send ?
  send 9
    Sleep 15000
  send ?
  send 6
    Sleep 20000
  send ?
  send 4
    sleep 15000
  send ?
  send 9
    Sleep 20000
  send ?
  send 6
    Sleep 20000
  send ?
  send 4
    sleep 15000
  send ?
  send 9
    Sleep 15000
  send ?
  send 7
    Sleep 5000
  send 6
    Sleep 20000
  send ?
  send 8
    sleep 5000
  send ?
  send 1
  sleep 20000
  send ?
  send 9
    Sleep 10000
  if KeepWinZRunning1
    settimer, f2_Loop, -100
return

$.::
if KeepWinZRunning4
{
    KeepWinZRunning4=0
    SetNumlockState, off
    SetScrollLockState, off
    SetCapsLockState, off
    return
}
Critical
KeepWinZRunning4=2
  settimer, loop4, -100
  Reload
  SetNumlockState, off
  SetScrollLockState, off
  SetCapsLockState, off
  return
loop4:
  if KeepWinZRunning4
    settimer, loop4, -100
return