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

    ; --- SIEMPRE ESTE BLOQUE ---
    coords2 := [508, 603, 705, 800, 890, 987]
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
    Loop, 4
    {
        Sleep, 200
        Send, {MButton}
        Sleep, 1000
        Send, {WheelDown}
    }



    ; ===============================
    ; BLOQUE 2: PESTAÑAS ABIERTAS
    ; ===============================
    
    Send, {WheelDown}
    Sleep, 1500
    Send, ^{Tab}          ; ir a la siguiente pestaña
    Sleep, 1500

    Loop 10
    {
        MouseMove, 1150, 177
        Click
        Sleep, 1000

        MouseMove, 698, 674
        Click
        Sleep, 2000

        Send, ^w
        Sleep, 1500
    }

    ; =============================== 
    ; BLOQUE 3: VOLVER AL PRINCIPIO 
    ; =============================== 
    Click
    MouseMove, 1190, 870 
    Click 
    Sleep, 2000
}
return
