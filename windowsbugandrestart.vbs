box1 = MsgBox("Windows a rencontré un problème. Pour résoudre le problème, cliquez sur OK",1 + 16 + 4096,"Plantage de Windows")
    If box1 = 1 Then
        box2 = MsgBox("Redémarrage nécessaire",1 + 48 + 4096,"Un redémarrage est nécessaire pour résoudre le problème. Cliquez sur 'OK' pour continuer, ou sur 'Annuler' pour revenir en arrière.")
    End If

    If box2 = 1 Then
        Set oShell = WScript.CreateObject("WSCript.shell")
        oShell.run "shutdown /r /t 5"
    End If

    If box2 = 2 Then
        WScript.Sleep(2000)
        restartprogcommande = "windowsbugandrestart.vbs"
        CreateObject("wscript.shell").run """" + restartprogcommande + """",1,False
    End If

    If box1 = 2 Then
        WScript.Sleep(2000)
        commanderestartp = "windowsbugandrestart.vbs"
        CreateObject("wscript.shell").run """" + commanderestartp + """",1,False
    End If