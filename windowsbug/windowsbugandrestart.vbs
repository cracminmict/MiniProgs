box1 = MsgBox("Windows a rencontre un probleme. Pour resoudre le probleme, cliquez sur OK",1 + 16 + 4096,"Plantage de Windows")
    If box1 = 1 Then
        box2 = MsgBox("Un redemarrage est necessaire pour resoudre le probleme. Cliquez sur OK pour continuer, ou sur Annuler pour revenir en arriere.",1 + 48 + 4096,"Redemarrage necessaire")
    End If

    If box2 = 1 Then
        Set oShell = WScript.CreateObject("WSCript.shell")
        oShell.run "shutdown /r /t 5"
    End If

    If box2 = 2 Then
        relaunchpp = "relaunchpwbanr.bat"
        CreateObject("wscript.shell").run """" + relaunchpp + """",1,False
    End If

    If box1 = 2 Then
        WScript.Sleep(2000)
        relaunchpp = "relaunchpwbanr.bat"
        CreateObject("wscript.shell").run """" + relaunchpp + """",1,False
    End If
