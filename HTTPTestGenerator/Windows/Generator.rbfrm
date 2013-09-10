#tag Window
Begin Window Generator
   BackColor       =   -256
   Backdrop        =   0
   CloseButton     =   True
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   HasBackColor    =   False
   Height          =   3.35e+2
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   True
   MinWidth        =   64
   Placement       =   2
   Resizeable      =   True
   Title           =   "HTTP Request Generator"
   Visible         =   True
   Width           =   7.47e+2
   Begin SSLSocket Sock
      CertificateFile =   ""
      CertificatePassword=   ""
      CertificateRejectionFile=   ""
      ConnectionType  =   2
      Height          =   32
      Index           =   -2147483648
      Left            =   799
      LockedInPosition=   False
      Scope           =   0
      Secure          =   ""
      TabPanelIndex   =   0
      Top             =   14
      Width           =   32
   End
   Begin Timer DataReceivedTimer
      Height          =   32
      Index           =   -2147483648
      Left            =   753
      LockedInPosition=   False
      Mode            =   0
      Period          =   200
      Scope           =   0
      TabPanelIndex   =   0
      Top             =   14
      Width           =   32
   End
   Begin RequestMain RequestMain1
      AcceptFocus     =   ""
      AcceptTabs      =   True
      AutoDeactivate  =   True
      BackColor       =   &hFFFFFF
      Backdrop        =   ""
      Enabled         =   True
      EraseBackground =   True
      HasBackColor    =   False
      Height          =   335
      HelpTag         =   ""
      InitialParent   =   ""
      Left            =   -1
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   26
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   0
      UseFocusRing    =   ""
      Visible         =   True
      Width           =   366
   End
   Begin Canvas Canvas1
      AcceptFocus     =   ""
      AcceptTabs      =   ""
      AutoDeactivate  =   True
      Backdrop        =   ""
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      Height          =   332
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   367
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   ""
      LockTop         =   True
      Scope           =   0
      TabIndex        =   27
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   0
      UseFocusRing    =   True
      Visible         =   True
      Width           =   8
   End
   Begin ResponseMain ResponseMain1
      AcceptFocus     =   ""
      AcceptTabs      =   True
      AutoDeactivate  =   True
      BackColor       =   16777215
      Backdrop        =   ""
      Enabled         =   True
      EraseBackground =   True
      HasBackColor    =   False
      Height          =   332
      HelpTag         =   ""
      InitialParent   =   ""
      Left            =   377
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   28
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   0
      UseFocusRing    =   ""
      Visible         =   True
      Width           =   370
   End
End
#tag EndWindow

#tag WindowCode
	#tag Method, Flags = &h21
		Private Sub Generate()
		  mTheURL = Nil
		  Me.Request = New HTTP.Request()
		  Me.Request.Method = HTTP.Method(RequestMain1.RequestMethod.Text)
		  If Me.Request.Method = HTTP.RequestMethod.InvalidMethod Then Me.Request.MethodName = RequestMain1.RequestMethod.Text
		  Me.Request.Path = theURL
		  If Me.Request.path.ServerPath = "" Then Me.Request.path.ServerPath = "/"
		  Me.Request.ProtocolVersion = CDbl(NthField(RequestMain1.ProtocolVer.Text, "/", 2))
		  GenerateHeaders()
		  Me.Request.MessageBody = MessageBodyRaw
		  
		  
		  'If gziprequest.Value Then
		  'Me.Request.SetHeader("Accept-Encoding", "gzip")
		  'End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub GenerateHeaders()
		  If Request = Nil Then Generate()
		  For i As Integer = 0 To RequestMain1.RequestHeaders.ListCount - 1
		    Me.Request.SetHeader(RequestMain1.RequestHeaders.Cell(i, 0)) = RequestMain1.RequestHeaders.Cell(i, 1)
		  Next
		  
		  If Not Me.Request.HasHeader("Host") And Me.Request.ProtocolVersion >= 1.1 Then
		    Me.Request.SetHeader("Host") = theURL.FQDN
		  End If
		  
		  If Not Me.Request.HasHeader("Connection") And Me.Request.ProtocolVersion >= 1.1 Then
		    Me.Request.SetHeader("Connection") = "close"
		  End If
		  
		  If Me.Request.Headers.AcceptableTypes.Ubound <= -1 Then
		    Me.Request.SetHeader("Accept") = "*/*"
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Perform()
		  Output = ""
		  Generate()
		  Sock.Close
		  Sock.Address = theURL.FQDN
		  If Request.Path.Protocol = "https" Then
		    Sock.Secure = True
		  Else
		    Sock.Secure = False
		  End If
		  If theURL.Port <> 0 Then
		    Sock.Port = theURL.Port
		  ElseIf Sock.Secure Then
		    sock.Port = 443
		  Else
		    Sock.Port = 80
		  End If
		  
		  Sock.Connect()
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Update(Raw As String)
		  Response = New HTTP.Response(Raw)
		  Response.Path = TheURL
		  ResponseMain1.Code.Text = Str(Response.StatusCode) + " " + HTTP.CodeToMessage(Response.StatusCode)
		  Select Case Response.StatusCode
		  Case 200, 206
		    ResponseMain1.Code.TextColor = &c00808000
		  Case 301, 302, 304
		    ResponseMain1.Code.TextColor = &c00800000
		  Case 204, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 422, 426, 500, 501, 502, 503, 504, 505, 506, 509
		    ResponseMain1.Code.TextColor = &cFF000000
		    
		  End Select
		  ResponseMain1.ResponseHeaders.DeleteAllRows
		  For i As Integer = 0 To Response.Headers.Count - 1
		    Dim n, v As String
		    n = Response.Headers.Name(i)
		    v = Response.Headers.Value(n)
		    
		    ResponseMain1.ResponseHeaders.AddRow(n, v)
		  Next
		  ResponseMain1.CookiesButton.Visible = Response.Headers.CookieCount > 0
		  ResponseMain1.CookiesButton.Icon = cookie_icon_grey
		  ResponseMain1.CookiesButton.Invalidate(True)
		  ResponseMain1.CookiesButton.HelpTag = Str(Response.Headers.CookieCount) + " cookies"
		  ResponseMain1.ResponseHeaderView.Enabled = True
		  ResponseMain1.ResponseHeaderView.Icon = expand_icon
		  Self.Title = "HTTP Request Generator - Viewing '" + TheURL.ToString + "'"
		  If Sock.IsConnected Then
		    'ResponseMain1.IPAddress1.Text = "Open"
		    'ResponseMain1.IPAddress.TextColor = &c00804000
		  Else
		    'ResponseMain1.IPAddress1.Text = "Closed by server"
		    'ResponseMain1.IPAddress1.TextColor = &c80808000
		    'ResponseMain1.IPAddress.TextColor = &c80808000
		  End If
		  '#If HTTP.GZIPAvailable Then
		  'If Response.GetHeader("Content-Encoding") = "gzip" Then
		  'Me.Response.MessageBody = GZip.Uncompress(Me.Response.MessageBody, Me.Response.MessageBody.LenB^2)
		  'End If
		  '#endif
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private LastSplitterPos As Integer = &hFFFFFF
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mDown As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private MessageBodyRaw As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mTheURL As HTTP.URI
	#tag EndProperty

	#tag Property, Flags = &h0
		Output As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private RawText As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Request As HTTP.Request
	#tag EndProperty

	#tag Property, Flags = &h0
		RequestURL As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Response As HTTP.Response
	#tag EndProperty

	#tag Property, Flags = &h21
		Private SplitterThumb As Picture
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  If mTheURL = Nil Then
			    mTheURL = New HTTP.URI(RequestMain1.URL.Text)
			  End If
			  return mTheURL
			End Get
		#tag EndGetter
		TheURL As HTTP.URI
	#tag EndComputedProperty


#tag EndWindowCode

#tag Events Sock
	#tag Event
		Sub Connected()
		  Output = ""
		  Self.Title = "HTTP Request Generator - connected to: " + Me.RemoteAddress
		  Me.Write(Request.ToString)
		  RequestMain1.URL.AddItem(RequestMain1.URL.Text)
		End Sub
	#tag EndEvent
	#tag Event
		Sub DataAvailable()
		  Output = Output + Me.ReadAll
		  RawText = Self.Request.ToString
		  ResponseMain1.OutputLog.Text = "-----------Request-----------" + CRLF + RawText + CRLF _
		  + "-----------Response-----------" + CRLF + OutPut + CRLF
		  Dim bs As New BinaryStream(RawText + CRLF + CRLF + Output)
		  ResponseMain1.HexViewer1.ShowData(bs)
		  ResponseMain1.ScrollBar1.Value = 0
		  ResponseMain1.ScrollBar1.Maximum = ResponseMain1.HexViewer1.LineCount
		  
		  DataReceivedTimer.Mode = Timer.ModeSingle
		End Sub
	#tag EndEvent
	#tag Event
		Sub Error()
		  Select Case Me.LastErrorCode
		  Case 102
		    'ResponseMain1.IPAddress.Text = "Closed by host"
		    'ResponseMain1.IPAddress.TextColor = &c80808000
		    
		  Case 103
		    ResponseMain1.Code.Text = SocketErrorMessage(Me.LastErrorCode)
		    ResponseMain1.ResponseHeaders.DeleteAllRows
		    Self.Title = "HTTP Request Generator - Unable to connect!"
		    ResponseMain1.OutputLog.Text = ""
		    
		  Else
		    Self.Title = "HTTP Request Generator - Unable to connect!"
		    ResponseMain1.OutputLog.Text = ""
		    ResponseMain1.Code.TextColor = &cFF000000
		    ResponseMain1.Code.Text = SocketErrorMessage(Me.LastErrorCode)
		  End Select
		  RequestMain1.Sender.Enabled = True
		  RequestMain1.Sender.Caption = "Send Request"
		  RequestMain1.ProgressBar1.Visible = False
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events DataReceivedTimer
	#tag Event
		Sub Action()
		  Update(Output)
		  If Response.StatusCode = 301 Or Response.StatusCode = 302 Then
		    Dim redir As String = Response.GetHeader("Location")
		    Dim u As New HTTP.URI(redir)
		    If u.FQDN = "" Then
		      u = New HTTP.URI(TheURL)
		      u.ServerPath = redir
		    End If
		    If MsgBox("Response redirects to: " + u.ToString + ". Follow redirection?", 4 + 32, "HTTP Redirect") = 6 Then
		      RequestMain1.URL.Text = u.ToString
		      Perform()
		    End If
		  End If
		  Self.Refresh
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RequestMain1
	#tag Event
		Function GetMessageData() As String
		  Return MessageBodyRaw
		End Function
	#tag EndEvent
	#tag Event
		Function GetRequest() As HTTP.Request
		  Return Request
		End Function
	#tag EndEvent
	#tag Event
		Function GetResponse() As HTTP.Response
		  Return Response
		End Function
	#tag EndEvent
	#tag Event
		Sub SetMessageData(Data As String)
		  MessageBodyRaw = Data
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  #If TargetWin32 Then
		    Me.DoubleBuffer = True
		    Me.EraseBackground = False
		  #endif
		End Sub
	#tag EndEvent
	#tag Event
		Sub Perform()
		  RequestMain1.Sender.Enabled = False
		  RequestMain1.Sender.Caption = "Sending..."
		  RequestMain1.ProgressBar1.Visible = True
		  Perform()
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Canvas1
	#tag Event
		Sub MouseEnter()
		  Me.MouseCursor = System.Cursors.SplitterEastWest
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  Me.MouseCursor = System.Cursors.StandardPointer
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  #pragma Unused X
		  #pragma Unused Y
		  #If TargetWin32 Then
		    'Dim mb As New MemoryBlock(1)
		    'mb.BooleanValue(0) = False
		    'Call SendMessage(RequestMain1.Handle, WM_SETREDRAW, mb, Nil)
		  #endif
		  mDown = True
		  Return True
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseDrag(X As Integer, Y As Integer)
		  #pragma Unused X
		  #pragma Unused Y
		  If Self.MouseX > 376 Then
		    If Self.Width <= 747 Then Return
		    Dim tpL, tpW As Integer
		    tpL = Me.Left + Me.Width + 4
		    tpW = Self.Width - RequestMain1.Width - Me.Width
		    
		    'If tpW < 377 Then Return
		    'If Self.Width - tpL < 377 Then Return
		    If LastSplitterPos > Self.MouseX Then ' move right
		      If Self.Width - tpL <= 377 Then Return
		    Else ' move left
		      If tpL <= 383 Then Return
		    End If
		    Me.Left = Self.MouseX
		    LastSplitterPos = Me.Left
		    ResponseMain1.Left = tpL
		    ResponseMain1.Width = tpW
		    RequestMain1.Width = Me.Left
		    'Me.Refresh(False)
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub Paint(g As Graphics)
		  If SplitterThumb = Nil Then SplitterThumb = New Picture(g.Width, g.Height, 24)
		  If SplitterThumb.Width <> g.Width Or SplitterThumb.Height <> g.Height Then SplitterThumb = New Picture(g.Width, g.Height, 24)
		  If Not mDown Then
		    SplitterThumb.Graphics.ForeColor = &cF0F0F000
		  Else
		    SplitterThumb.Graphics.ForeColor = &cC0C0C000
		  End If
		  SplitterThumb.Graphics.FillRect(0, 0, g.Width, g.Height)
		  If Not mDown Then
		    SplitterThumb.Graphics.ForeColor = &cC0C0C000
		  Else
		    SplitterThumb.Graphics.ForeColor = &cF0F0F000
		  End If
		  SplitterThumb.Graphics.DrawRect(0, 0, g.Width, g.Height)
		  
		  SplitterThumb.Graphics.ForeColor = &c80808000
		  SplitterThumb.Graphics.DrawLine(g.Width * 0.25, 0.25 * g.Height, g.Width * 0.25, 0.75 * g.Height)
		  SplitterThumb.Graphics.DrawLine(g.Width * 0.75, 0.25 * g.Height, g.Width * 0.75, 0.75 * g.Height)
		  g.DrawPicture(SplitterThumb, 0, 0)
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseUp(X As Integer, Y As Integer)
		  #pragma Unused X
		  #pragma Unused Y
		  mDown = False
		  #If TargetWin32 Then
		    'Dim mb As New MemoryBlock(1)
		    'mb.BooleanValue(0) = True
		    'Call SendMessage(RequestMain1.Handle, WM_SETREDRAW, mb, Nil)
		    'RequestMain1.Refresh
		  #endif
		  Me.Invalidate
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ResponseMain1
	#tag Event
		Sub Open()
		  #If TargetWin32 Then
		    Me.DoubleBuffer = True
		    Me.EraseBackground = False
		  #endif
		End Sub
	#tag EndEvent
	#tag Event
		Function GetRequest() As HTTP.Request
		  Return Request
		End Function
	#tag EndEvent
	#tag Event
		Function GetResponse() As HTTP.Response
		  Return Response
		End Function
	#tag EndEvent
#tag EndEvents
