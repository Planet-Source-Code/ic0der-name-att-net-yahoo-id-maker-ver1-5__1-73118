Attribute VB_Name = "Module1"
Sub Pause(interval)
Dim atime
    atime = Timer
 Do While Timer - atime < Val(interval)
    DoEvents
 Loop
End Sub
Sub GotoSite(URL As String)
On Error GoTo someerror
    If Left(LCase(URL), 4) = "www." Then URL = "http://" + URL
        Shell ("explorer.exe " + URL), vbNormalFocus
    Exit Sub
someerror:
    Beep
    Exit Sub
End Sub
Public Function SaveList(cd As CommonDialog, List As ListBox)
cd.DialogTitle = "Save @att.net IDs"
cd.Filter = "Text File|*.txt"
cd.ShowSave
Dim xt As Long
On Error Resume Next
Open cd.FileName For Append As #1
For xt = 0 To 10000
Print #1, List.List(i)
i = i + 1
Next xt
Close #1
Exit Function
End Function
