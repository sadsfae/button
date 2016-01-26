;; .d8b.  db    db d888888b  .d88b.   .o88b. db   db  .d88b.  d8888b. 
;; d8' `8b 88    88 `~~88~~' .8P  Y8. d8P  Y8 88   88 .8P  Y8. 88  `8D 
;; 88ooo88 88    88    88    88    88 8P      88ooo88 88    88 88oodD' 
;; 88~~~88 88    88    88    88    88 8b      88~~~88 88    88 88~~~   
;; 88   88 88b  d88    88    `8b  d8' Y8b  d8 88   88 `8b  d8' 88      
;; YP   YP ~Y8888P'    YP     `Y88P'   `Y88P' YP   YP  `Y88P'  88      
;;                                                                     
;; ----- What does it do? -----
;; utilize any primary mining/chopping item in slot 1
;; continually chop/hack/mine, etc.
;; auto repair the item after 100 swipes.
;; note: leave inventory full when in use
;; credit: @aa-thomas 
#NoEnv
#MaxThreadsPerHotkey 4
Process,priority,,High 
#IfWinActive
;; middle mouse button starts
$Mbutton::
if auto_attack
{
    auto_attack=0
    SetNumlockState, off
    return
}
;; swing item 1 100 times
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
;; auto repair item 1 after 100 swings
;; `t hits tab
  send `t
    Sleep 500
  MouseMove, 680,1145
    Sleep 500
  send {click},{click}
    Sleep 500
  MouseMove, 950,394
    Sleep 500
  send {click},{click}
    Sleep 500
  send `t
    Sleep 500
;; inch forward slightly
  send +,w+,w
    Sleep 500
if auto_attack
    settimer, f_Loop, -100
return
;; mouse side button 1 stops things
$Xbutton1::
if kill_check
{
    kill_check=0
    SetNumlockState, off
    SetScrollLockState, off
    SetCapsLockState, off
    return
}
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
