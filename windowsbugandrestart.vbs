Rem #dabet61 Production#

box1 = MsgBox("Windows a rencontré un problème. Pour résoudre le problème, cliquez sur OK",1+16+4096,"Plantage de Windows")
Rem Première boîte (box1)
    If box1 = 1 Then
        Rem Click 'OK' première boîte = Launch box2 (seconde boîte)
        box2 = MsgBox("Redémarrage nécessaire",1+48+4096,"Un redémarrage est nécessaire pour résoudre le problème. Cliquez sur 'OK' pour continuer, ou sur 'Annuler' pour revenir en arrière.")
    End If

        If box2 = 1 Then
            Set oShell = WScript.CreateObject("WSCript.shell")
            oShell.run "shutdown /s /t 60 /c YourPC messageXXtpprepa" "
        End If

        If box2 = 2 Then
            WScript.Sleep(3000)
            restartprogcommande = "windowsbugandrestart.vbs"
            createobject("wscript.shell").run """"+restartprogcommande+"""",1,false
        End If
        
    If box1 = 2 Then
        Rem Click 'Annuler' première boîte = relancer le script
        commanderestartp = "windowsbugandrestart.vbs"
        createobject("wscript.shell").run """"+commanderestartp+"""",1,false
    End If