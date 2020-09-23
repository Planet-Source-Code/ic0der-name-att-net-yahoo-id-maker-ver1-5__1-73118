Attribute VB_Name = "ProxyMod"
Option Explicit

Public Type INTERNET_PROXY_INFO
dwAccessType As Long
lpszProxy As String
lpszProxyBypass As String
End Type

Public Const ERROR_INSUFFICIENT_BUFFER = 122
Public Const INTERNET_OPTION_PROXY = 38
Public Const INTERNET_OPEN_TYPE_DIRECT = 1
Public Const INTERNET_OPEN_TYPE_PROXY As Long = 3

Public Declare Function InternetSetOption Lib "wininet.dll" _
Alias "InternetSetOptionA" ( _
ByVal hInternet As Long, _
ByVal dwOption As Long, _
ByRef lpBuffer As Any, _
ByVal dwBufferLength As Long) As Long

'On form add a command1 button
Public Sub SetProxy(iProxy As String)
Dim MyProx As String
If iProxy = "" Then Exit Sub
Dim iRet As Long
Dim ProxyInfo As INTERNET_PROXY_INFO


ProxyInfo.dwAccessType = INTERNET_OPEN_TYPE_PROXY
ProxyInfo.lpszProxy = "http=" & MyProx
ProxyInfo.lpszProxyBypass = "<local>"


iRet = InternetSetOption(0&, INTERNET_OPTION_PROXY, ProxyInfo, LenB(ProxyInfo))
'
End Sub
