VERSION 5.00
Object = "{EAB22AC0-30C1-11CF-A7EB-0000C05BAE0B}#1.1#0"; "ieframe.dll"
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "Mswinsck.ocx"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form iForm 
   BackColor       =   &H0000FFFF&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "@att Maker 1.5"
   ClientHeight    =   6600
   ClientLeft      =   -15
   ClientTop       =   1980
   ClientWidth     =   9930
   BeginProperty Font 
      Name            =   "Tahoma"
      Size            =   8.25
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "Form1.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   Picture         =   "Form1.frx":1D2A
   ScaleHeight     =   6600
   ScaleWidth      =   9930
   StartUpPosition =   2  'CenterScreen
   Begin VB.PictureBox MyPic 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   1050
      Left            =   9240
      Picture         =   "Form1.frx":B87E
      ScaleHeight     =   1050
      ScaleWidth      =   3150
      TabIndex        =   54
      Top             =   6600
      Visible         =   0   'False
      Width           =   3150
   End
   Begin VB.CheckBox iGen 
      BackColor       =   &H00DBDBDB&
      Caption         =   "Generate Random ID after make ID"
      Height          =   195
      Left            =   480
      TabIndex        =   9
      Top             =   5760
      Width           =   3135
   End
   Begin VB.CheckBox iCharge 
      BackColor       =   &H00DBDBDB&
      Caption         =   "Charge after Make ID"
      Height          =   195
      Left            =   480
      TabIndex        =   8
      Top             =   5450
      Value           =   1  'Checked
      Width           =   2175
   End
   Begin VB.PictureBox GoodProxy 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   960
      Left            =   560
      Picture         =   "Form1.frx":105D8
      ScaleHeight     =   960
      ScaleWidth      =   975
      TabIndex        =   51
      Top             =   3960
      Visible         =   0   'False
      Width           =   975
   End
   Begin VB.PictureBox DProxy 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   960
      Left            =   560
      Picture         =   "Form1.frx":1371C
      ScaleHeight     =   960
      ScaleWidth      =   975
      TabIndex        =   50
      Top             =   3960
      Width           =   975
   End
   Begin VB.PictureBox BadProxy 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   960
      Left            =   560
      Picture         =   "Form1.frx":16860
      ScaleHeight     =   960
      ScaleWidth      =   975
      TabIndex        =   49
      Top             =   3960
      Visible         =   0   'False
      Width           =   975
   End
   Begin VB.TextBox iLength 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   0  'None
      Height          =   230
      Left            =   3285
      TabIndex        =   0
      Text            =   "5"
      Top             =   1455
      Width           =   375
   End
   Begin VB.ListBox MadeIDs 
      Appearance      =   0  'Flat
      ForeColor       =   &H000040C0&
      Height          =   950
      IntegralHeight  =   0   'False
      ItemData        =   "Form1.frx":199A4
      Left            =   5880
      List            =   "Form1.frx":199A6
      TabIndex        =   18
      Top             =   5280
      Width           =   3180
   End
   Begin MSComDlg.CommonDialog cd 
      Left            =   120
      Top             =   5040
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.ListBox iProxy 
      Appearance      =   0  'Flat
      ForeColor       =   &H000040C0&
      Height          =   960
      IntegralHeight  =   0   'False
      Left            =   1560
      TabIndex        =   7
      Top             =   3960
      Width           =   2380
   End
   Begin ATTMaker.PictureButton iSetProxy 
      Height          =   450
      Left            =   2520
      TabIndex        =   36
      ToolTipText     =   "Set Selected Proxy"
      Top             =   4930
      Width           =   450
      _ExtentX        =   794
      _ExtentY        =   794
      Picture         =   "Form1.frx":199A8
      PictureHover    =   "Form1.frx":1A4C4
      PictureDown     =   "Form1.frx":1AFE0
   End
   Begin VB.PictureBox iCAPTCHA 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   1050
      Left            =   5880
      Picture         =   "Form1.frx":1BAFC
      ScaleHeight     =   1050
      ScaleWidth      =   3150
      TabIndex        =   35
      Top             =   3480
      Width           =   3150
   End
   Begin VB.TextBox Text8 
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   0  'None
      Height          =   230
      Left            =   5835
      TabIndex        =   16
      Top             =   3135
      Width           =   3255
   End
   Begin VB.TextBox Text7 
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   0  'None
      Height          =   230
      Left            =   5835
      TabIndex        =   14
      Top             =   2415
      Width           =   3255
   End
   Begin MSWinsockLib.Winsock ProxySocket 
      Left            =   11400
      Top             =   6000
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin VB.TextBox Text9 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   0  'None
      Height          =   230
      Left            =   5955
      TabIndex        =   17
      Top             =   4695
      Width           =   3070
   End
   Begin VB.TextBox Text6 
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   0  'None
      Height          =   230
      Left            =   1635
      TabIndex        =   6
      Text            =   "01234"
      Top             =   3480
      Width           =   2295
   End
   Begin VB.TextBox Text5 
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   0  'None
      Height          =   230
      Left            =   1635
      TabIndex        =   5
      Top             =   3135
      Width           =   2295
   End
   Begin VB.TextBox Text4 
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   0  'None
      Height          =   230
      Left            =   1635
      TabIndex        =   4
      Top             =   2775
      Width           =   2295
   End
   Begin VB.TextBox Text3 
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   0  'None
      Height          =   230
      Left            =   1635
      TabIndex        =   3
      Top             =   2415
      Width           =   2295
   End
   Begin VB.TextBox Text2 
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   0  'None
      Height          =   230
      Left            =   1635
      TabIndex        =   2
      Top             =   2055
      Width           =   2295
   End
   Begin VB.TextBox Text1 
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   0  'None
      Height          =   230
      Left            =   1635
      TabIndex        =   1
      Top             =   1695
      Width           =   2055
   End
   Begin VB.ComboBox Combo5 
      Height          =   315
      ItemData        =   "Form1.frx":20856
      Left            =   5760
      List            =   "Form1.frx":20872
      Style           =   2  'Dropdown List
      TabIndex        =   15
      Top             =   2760
      Width           =   3375
   End
   Begin VB.ComboBox Combo4 
      Height          =   315
      ItemData        =   "Form1.frx":20A00
      Left            =   5760
      List            =   "Form1.frx":20A1C
      Style           =   2  'Dropdown List
      TabIndex        =   13
      Top             =   2040
      Width           =   3375
   End
   Begin VB.ComboBox Combo3 
      Height          =   315
      Left            =   8280
      TabIndex        =   12
      Text            =   "1991"
      Top             =   1560
      Width           =   855
   End
   Begin VB.ComboBox Combo2 
      Height          =   315
      ItemData        =   "Form1.frx":20B6E
      Left            =   7080
      List            =   "Form1.frx":20B96
      TabIndex        =   11
      Text            =   "01"
      Top             =   1560
      Width           =   735
   End
   Begin VB.ComboBox Combo1 
      Height          =   315
      ItemData        =   "Form1.frx":20BCA
      Left            =   5760
      List            =   "Form1.frx":20C2B
      TabIndex        =   10
      Text            =   "01"
      Top             =   1560
      Width           =   735
   End
   Begin SHDocVwCtl.WebBrowser WebBrowser1 
      Height          =   6015
      Left            =   10080
      TabIndex        =   19
      Top             =   480
      Width           =   5175
      ExtentX         =   9128
      ExtentY         =   10610
      ViewMode        =   0
      Offline         =   0
      Silent          =   0
      RegisterAsBrowser=   0
      RegisterAsDropTarget=   1
      AutoArrange     =   0   'False
      NoClientEdge    =   0   'False
      AlignLeft       =   0   'False
      NoWebView       =   0   'False
      HideFileNames   =   0   'False
      SingleClick     =   0   'False
      SingleSelection =   0   'False
      NoFolders       =   0   'False
      Transparent     =   0   'False
      ViewID          =   "{0057D0E0-3573-11CF-AE69-08002B2E1262}"
      Location        =   "http:///"
   End
   Begin ATTMaker.PictureButton iCHKProxy 
      Height          =   450
      Left            =   3000
      TabIndex        =   37
      ToolTipText     =   "Check Selected Proxy"
      Top             =   4930
      Width           =   450
      _ExtentX        =   794
      _ExtentY        =   794
      Picture         =   "Form1.frx":20CAB
      PictureHover    =   "Form1.frx":217C7
      PictureDown     =   "Form1.frx":222E3
   End
   Begin ATTMaker.PictureButton iCAHRGE 
      Height          =   375
      Left            =   4320
      TabIndex        =   38
      Top             =   5520
      Width           =   1200
      _ExtentX        =   2117
      _ExtentY        =   661
      Picture         =   "Form1.frx":22DFF
      PictureHover    =   "Form1.frx":245C3
      PictureDown     =   "Form1.frx":25D87
   End
   Begin ATTMaker.PictureButton iMake 
      Height          =   375
      Left            =   4320
      TabIndex        =   39
      Top             =   5880
      Width           =   1200
      _ExtentX        =   2117
      _ExtentY        =   661
      Picture         =   "Form1.frx":2754B
      PictureHover    =   "Form1.frx":28D0F
      PictureDown     =   "Form1.frx":2A4D3
   End
   Begin ATTMaker.PictureButton iLoadProxy 
      Height          =   450
      Left            =   1560
      TabIndex        =   42
      ToolTipText     =   "Load Proxies"
      Top             =   4930
      Width           =   450
      _ExtentX        =   794
      _ExtentY        =   794
      Picture         =   "Form1.frx":2BC97
      PictureHover    =   "Form1.frx":2C7B3
      PictureDown     =   "Form1.frx":2D2CF
   End
   Begin ATTMaker.PictureButton PictureButton1 
      Height          =   450
      Left            =   9150
      TabIndex        =   43
      Top             =   5280
      Width           =   450
      _ExtentX        =   794
      _ExtentY        =   794
      Picture         =   "Form1.frx":2DDEB
      PictureHover    =   "Form1.frx":2E907
      PictureDown     =   "Form1.frx":2F423
   End
   Begin ATTMaker.PictureButton PictureButton2 
      Height          =   450
      Left            =   9150
      TabIndex        =   44
      Top             =   5760
      Width           =   450
      _ExtentX        =   794
      _ExtentY        =   794
      Picture         =   "Form1.frx":2FF3F
      PictureHover    =   "Form1.frx":30A5B
      PictureDown     =   "Form1.frx":31577
   End
   Begin ATTMaker.PictureButton ProxyList 
      Height          =   450
      Left            =   9075
      TabIndex        =   45
      ToolTipText     =   "Goto www.Proxy-List.org"
      Top             =   140
      Width           =   450
      _ExtentX        =   794
      _ExtentY        =   794
      Picture         =   "Form1.frx":32093
      PictureHover    =   "Form1.frx":32BAF
      PictureDown     =   "Form1.frx":336CB
   End
   Begin ATTMaker.PictureButton iRDN 
      Height          =   450
      Left            =   1560
      TabIndex        =   47
      ToolTipText     =   "Generate Random ID"
      Top             =   1230
      Width           =   450
      _ExtentX        =   794
      _ExtentY        =   794
      Picture         =   "Form1.frx":341E7
      PictureHover    =   "Form1.frx":34D03
      PictureDown     =   "Form1.frx":3581F
   End
   Begin ATTMaker.PictureButton iCLS2 
      Height          =   450
      Left            =   2040
      TabIndex        =   52
      Top             =   4930
      Width           =   450
      _ExtentX        =   794
      _ExtentY        =   794
      Picture         =   "Form1.frx":3633B
      PictureHover    =   "Form1.frx":36E57
      PictureDown     =   "Form1.frx":37973
   End
   Begin ATTMaker.PictureButton PictureButton3 
      Height          =   450
      Left            =   3480
      TabIndex        =   53
      ToolTipText     =   "Feel All Information"
      Top             =   4935
      Width           =   450
      _ExtentX        =   794
      _ExtentY        =   794
      Picture         =   "Form1.frx":3848F
      PictureHover    =   "Form1.frx":38FAB
      PictureDown     =   "Form1.frx":39AC7
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Random Length"
      Height          =   195
      Index           =   2
      Left            =   2060
      TabIndex        =   48
      Top             =   1440
      Width           =   1125
   End
   Begin VB.Shape iShape 
      BorderColor     =   &H0080C0FF&
      FillColor       =   &H00FFFFFF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   7
      Left            =   3240
      Top             =   1440
      Width           =   495
   End
   Begin VB.Label Label11 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "@att.net IDs"
      Height          =   195
      Index           =   1
      Left            =   5880
      TabIndex        =   46
      Top             =   5040
      Width           =   945
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "@att.net"
      Height          =   195
      Index           =   1
      Left            =   3780
      TabIndex        =   41
      Top             =   1725
      Width           =   660
   End
   Begin VB.Label iSTAT 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Silent Cry"
      Height          =   195
      Left            =   480
      TabIndex        =   40
      Top             =   6050
      Width           =   690
   End
   Begin VB.Shape iShape 
      BorderColor     =   &H0080C0FF&
      FillColor       =   &H00FFFFFF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   9
      Left            =   5760
      Top             =   3120
      Width           =   3375
   End
   Begin VB.Shape iShape 
      BorderColor     =   &H0080C0FF&
      FillColor       =   &H00FFFFFF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   8
      Left            =   5760
      Top             =   2400
      Width           =   3375
   End
   Begin VB.Label Label16 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Proxies"
      Height          =   195
      Left            =   1560
      TabIndex        =   34
      Top             =   3720
      Width           =   525
   End
   Begin VB.Shape iShape 
      BorderColor     =   &H0080C0FF&
      FillColor       =   &H00FFFFFF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   0
      Left            =   5880
      Top             =   4680
      Width           =   3180
   End
   Begin VB.Shape iShape 
      BorderColor     =   &H0080C0FF&
      FillColor       =   &H00FFFFFF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   6
      Left            =   1560
      Top             =   3465
      Width           =   2415
   End
   Begin VB.Shape iShape 
      BorderColor     =   &H0080C0FF&
      FillColor       =   &H00FFFFFF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   5
      Left            =   1560
      Top             =   3120
      Width           =   2415
   End
   Begin VB.Shape iShape 
      BorderColor     =   &H0080C0FF&
      FillColor       =   &H00FFFFFF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   4
      Left            =   1560
      Top             =   2760
      Width           =   2415
   End
   Begin VB.Shape iShape 
      BorderColor     =   &H0080C0FF&
      FillColor       =   &H00FFFFFF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   3
      Left            =   1560
      Top             =   2400
      Width           =   2415
   End
   Begin VB.Shape iShape 
      BorderColor     =   &H0080C0FF&
      FillColor       =   &H00FFFFFF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   2
      Left            =   1560
      Top             =   2040
      Width           =   2415
   End
   Begin VB.Shape iShape 
      BorderColor     =   &H0080C0FF&
      FillColor       =   &H00FFFFFF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   1
      Left            =   1560
      Top             =   1680
      Width           =   2175
   End
   Begin VB.Label Label15 
      BackStyle       =   0  'Transparent
      Caption         =   "Answer2"
      Height          =   195
      Left            =   4920
      TabIndex        =   33
      Top             =   3120
      Width           =   660
   End
   Begin VB.Label Label14 
      BackStyle       =   0  'Transparent
      Caption         =   "Qustion2"
      Height          =   195
      Left            =   4920
      TabIndex        =   32
      Top             =   2810
      Width           =   675
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "Answer1"
      Height          =   195
      Left            =   4920
      TabIndex        =   31
      Top             =   2400
      Width           =   660
   End
   Begin VB.Label Label12 
      BackStyle       =   0  'Transparent
      Caption         =   "Qustion1"
      Height          =   195
      Left            =   4920
      TabIndex        =   30
      Top             =   2055
      Width           =   675
   End
   Begin VB.Label Label11 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Captcha"
      Height          =   195
      Index           =   0
      Left            =   4920
      TabIndex        =   29
      Top             =   3480
      Width           =   600
   End
   Begin VB.Label Label9 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Year"
      Height          =   195
      Left            =   7920
      TabIndex        =   28
      Top             =   1605
      Width           =   330
   End
   Begin VB.Label Label8 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Month"
      Height          =   195
      Left            =   6600
      TabIndex        =   27
      Top             =   1605
      Width           =   450
   End
   Begin VB.Label Label7 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Day"
      Height          =   195
      Left            =   5280
      TabIndex        =   26
      Top             =   1605
      Width           =   285
   End
   Begin VB.Label Label6 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Zip:"
      Height          =   195
      Left            =   480
      TabIndex        =   25
      Top             =   3495
      Width           =   270
   End
   Begin VB.Label Label5 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Alt-Email"
      Height          =   195
      Left            =   480
      TabIndex        =   24
      Top             =   3165
      Width           =   615
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Last Name:"
      Height          =   195
      Left            =   480
      TabIndex        =   23
      Top             =   2760
      Width           =   810
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Frist Name"
      Height          =   195
      Left            =   480
      TabIndex        =   22
      Top             =   2400
      Width           =   765
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Pass:"
      Height          =   195
      Left            =   480
      TabIndex        =   21
      Top             =   2055
      Width           =   390
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "ID"
      Height          =   195
      Index           =   0
      Left            =   480
      TabIndex        =   20
      Top             =   1695
      Width           =   165
   End
End
Attribute VB_Name = "iForm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim mamad1 As Integer
Dim mamad2 As Integer
Private Declare Function URLDownloadToFile Lib "urlmon" Alias "URLDownloadToFileA" (ByVal pCaller As Long, ByVal szURL As String, ByVal szFileName As String, ByVal dwReserved As Long, ByVal lpfnCB As Long) As Long






Private Sub Form_Load()
WebBrowser1.Navigate "about:blank"
Combo4.Text = "What is the last name of the most famous person you've ever met?"
Combo5.Text = "Who is a famous person you'd most like to meet (living/dead)?"
For mamad1 = 1 To 30
Combo1.AddItem mamad1
Next mamad1
For mamad2 = 1940 To 1995
Combo3.AddItem mamad2
Next mamad2
End Sub

Sub Code()
On Error Resume Next
Dim mamad As String
If InStr(Me.WebBrowser1.Document.body.innertext, "Get an AT&T Member ID") Then
mamad = WebBrowser1.Document.GetElementById("captcha_image").src
Call iCode
MsgBox "A"
End If
End Sub


Private Sub iCAHRGE_Click()
iSTAT.Caption = "Please Wait - Charging..."
WebBrowser1.Navigate "http://entertainment.att.net/registration"
End Sub

Private Sub iCHKProxy_Click()
On Error Resume Next
If Not iProxy.ListCount = 0 Then
aa = Split(iProxy.Text, ":")(0)
pp = Split(iProxy.Text, ":")(1)
ProxySocket.Connect aa, pp
End If
End Sub

Private Sub iCLS2_Click()
iProxy.Clear
End Sub

Private Sub iLoadProxy_Click()
Dim MTX As String
cd.FileName = ""
cd.Filter = "*.txt|*.txt"
cd.ShowOpen
If cd.FileName = "" Then Exit Sub
iProxy.Clear
Open cd.FileName For Input As #1
Do Until EOF(1) = True
Line Input #1, MTX
iProxy.AddItem MTX
DoEvents
Loop
iProxy.ListIndex = 0
Close #1
End Sub

Private Sub iMake_Click()
On Error Resume Next
WebBrowser1.Document.GetElementById("memberID").innertext = LCase(Text1.Text)
WebBrowser1.Document.GetElementById("password_new_1").innertext = Text2.Text
WebBrowser1.Document.GetElementById("password_new_2").innertext = Text2.Text
WebBrowser1.Document.GetElementById("firstName").innertext = Text3.Text
WebBrowser1.Document.GetElementById("lastName").innertext = Text4.Text
WebBrowser1.Document.GetElementById("altEmail").innertext = Text5.Text
WebBrowser1.Document.GetElementById("dob_day").Value = Combo1.Text
WebBrowser1.Document.GetElementById("dob_year").innertext = Combo3.Text
WebBrowser1.Document.GetElementById("zipcode").innertext = Text6.Text
WebBrowser1.Document.GetElementById("online_Ans10").innertext = Text7.Text
WebBrowser1.Document.GetElementById("online_Ans20").innertext = Text8.Text
WebBrowser1.Document.GetElementById("online_Ques10").Value = Combo4.Text
WebBrowser1.Document.GetElementById("online_Ques20").Value = Combo5.Text
WebBrowser1.Document.GetElementById("captcha").Value = Text9.Text
WebBrowser1.Document.GetElementById("dob_month").Value = Combo2.Text
WebBrowser1.Document.GetElementById("gender").Checked = True

Pause 1.5
WebBrowser1.Document.GetElementById("notify").Click
End Sub

Private Sub iRDN_Click()
Text1.Text = GenerateCode
End Sub

Private Sub iSetProxy_Click()
SetProxy iProxy.Text
End Sub

Private Sub PictureButton1_Click()
SaveList cd, MadeIDs
End Sub

Private Sub PictureButton2_Click()
MadeIDs.Clear
End Sub

Private Sub PictureButton3_Click()
Text3.Text = "Moien"
Text4.Text = "Ahoora"
Text5.Text = "A@Yahoo.com"
Text6.Text = "01234"
Combo4.Text = "What is your dream job?"
Text7.Text = "Programing"
Combo5.Text = "What was your first job?"
Text8.Text = "Coding"
End Sub

Private Sub ProxyList_Click()
GotoSite "http://www.proxy-list.org/en/index.php"
End Sub

Private Sub ProxySocket_Connect()
BadProxy.Visible = True
DProxy.Visible = False
GoodProxy.Visible = True
ProxySocket.Close
End Sub

Private Sub ProxySocket_Error(ByVal Number As Integer, Description As String, ByVal Scode As Long, ByVal Source As String, ByVal HelpFile As String, ByVal HelpContext As Long, CancelDisplay As Boolean)
BadProxy.Visible = True
DProxy.Visible = False
GoodProxy.Visible = False
End Sub

Private Sub Text9_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
iCAPTCHA.Picture = MyPic.Picture
Call iMake_Click
End If
End Sub

Private Sub WebBrowser1_DocumentComplete(ByVal pDisp As Object, URL As Variant)
If InStr(Me.WebBrowser1.Document.body.innertext, "Congratulations, you are a new AT&T Member!") Then
Pause 1.5
WebBrowser1.Document.GetElementById("registerationLink").Click
End If
If InStr(Me.WebBrowser1.Document.body.innertext, "Get an AT&T Member ID") Then
iSTAT.Caption = "Charging Complete"
Code
WebBrowser1.Document.GetElementById("TOS").Checked = True
End If
If InStr(Me.WebBrowser1.Document.body.innertext, "You have successfully created an AT&T") Then
MadeIDs.AddItem Text1.Text + "@att.net:" + Text2.Text
Label11(1).Caption = Str(MadeIDs.ListCount) + " @att.net IDs"
If iCharge.Value = 1 Then
Logout
End If
If iGen.Value = 1 Then
Text1.Text = GenerateCode
End If
End If
If InStr(Me.WebBrowser1.Document.body.innertext, "You must have a U.S. based IP") Then
iSTAT.Caption = "You must have a U.S. based IP"
End If

If InStr(Me.WebBrowser1.Document.body.innertext, "Required.") Then
iSTAT.Caption = "Required.PLZ Check Your Info."
End If

If InStr(Me.WebBrowser1.Document.body.innertext, "Not Valid.") Then
iSTAT.Caption = "Not Valid. PLZ Check Your Info."
End If
If InStr(Me.WebBrowser1.Document.body.innertext, "The page cannot be displayed") Then
iSTAT.Caption = "The page cannot be displayed."
End If

If InStr(Me.WebBrowser1.Document.body.innertext, "You must enter the Code Word.") Then
iSTAT.Caption = "You Must Enter The Code Word."
End If

End Sub
Public Function iCode()
On Error Resume Next
Dim n As String
n = WebBrowser1.Document.GetElementById("captcha_image").src
DoEvents
Call URLDownloadToFile(0, n, App.Path & "\Captcha.jpg", 0, 0)
iCAPTCHA.Picture = LoadPicture(App.Path & "\Captcha.jpg")
End Function
Public Function GenerateCode()
   strInputString = "abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz0123456789"
   
   intLength = Len(strInputString)
   
   intNameLength = iLength.Text
   
   Randomize
   
   strName = ""
   
   For intStep = 1 To intNameLength
       intRnd = Int((intLength * Rnd) + 1)
   
       strName = strName & Mid(strInputString, intRnd, 1)
   Next
   GenerateCode = strName
End Function
Private Sub Logout()
    WebBrowser1.Navigate "https://login.yahoo.com/config/login?logout=1&.direct"
    iSTAT.Caption = "Please Wait - Charging..."
WebBrowser1.Navigate "http://entertainment.att.net/registration"
End Sub
