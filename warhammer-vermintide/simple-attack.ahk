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
;;; for now just spam the attack button when loop is toggled
f_Loop:
  send {Click},{Click}
    Sleep 500
  if KeepWinZRunning1
    settimer, f_Loop, -100
return

;;; character between "$" and "::" stops the loop
$XButton2::
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
