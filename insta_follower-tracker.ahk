#Persistent
#SingleInstance Force

; Atajo para iniciar (Ctrl+Alt+U)
^!u::
Loop 50   ; Número de veces que quieres repetir todo el proceso
{
    ; ===============================
    ; BLOQUE 1: PANTALLA PRINCIPAL
    ; ===============================
    Sleep, 1000
    if (A_Index = 1) {
        ; --- PRIMERA VEZ ---
        MouseMove, 1370, 280
        Send, ^{Click}
        Sleep, 1000

        coords := [379, 474, 574, 670, 766, 862, 959]
        for each, y in coords
        {
            MouseMove, 1370, y
            Send, ^{Click}
            Sleep, 1000
        }

        ; Scroll + Ctrl+Click
        Send, {WheelDown}
        Sleep, 1000
        Send, ^{Click}
        Sleep, 1000

        ; Scroll + Ctrl+Click
        Send, {WheelDown}
        Sleep, 1000
        Send, ^{Click}
        Sleep, 1000
    }
    else {
        ; --- SIGUIENTES VECES ---
        coords2 := [508, 603, 705, 800, 890, 993]
        for each, y in coords2
        {
            MouseMove, 1370, y
            Sleep, 200
            Send, {MButton}       ; clic de rueda más fiable
            Sleep, 1000
        }

        ; Scroll + clic de rueda (3 veces)
        Send, {WheelDown}
        Sleep, 1000
        Loop, 3
        {
            Sleep, 200
            Send, {MButton}
            Sleep, 1000
	    Send, {WheelDown}
        }
	
	Send, {WheelDown}
    }

    ; ===============================
    ; BLOQUE 2: PESTAÑAS ABIERTAS
    ; ===============================
    
    Send, ^{Tab}          ; ir a la siguiente pestaña
    Sleep, 1500

    Loop 9
    {
        MouseMove, 1150, 177
        Click
        Sleep, 1000

        MouseMove, 698, 674
        Click
        Sleep, 1000

        Send, ^w
        Sleep, 1500
    }

    ; BLOQUE 3: VOLVER AL PRINCIPIO
    if (A_Index = 1) {
        MouseMove, 1150, 1037
    } else {
        MouseMove, 1190, 1037  ; coordenadas para las repeticiones posteriores
}
Click
Sleep, 2000


}
return
