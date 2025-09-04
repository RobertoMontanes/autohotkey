#Persistent
#SingleInstance Force

SetTimer, ShowCoords, 100   ; Actualiza cada 100 ms
return

ShowCoords:
MouseGetPos, xpos, ypos
ToolTip, X: %xpos%  Y: %ypos%
return
