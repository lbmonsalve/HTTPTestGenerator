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
   Width           =   7.11e+2
   Begin TabPanel TabPanel1
      AutoDeactivate  =   True
      Bold            =   ""
      Enabled         =   True
      Height          =   332
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   347
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Panels          =   ""
      Scope           =   0
      SmallTabs       =   ""
      TabDefinition   =   "HTTP\rRaw"
      TabIndex        =   21
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   0
      Top             =   0
      Underline       =   ""
      Value           =   1
      Visible         =   True
      Width           =   364
      Begin TextArea OutputLog
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   True
         BackColor       =   &h00EFEFEF
         Bold            =   False
         Border          =   True
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   118
         HelpTag         =   ""
         HideSelection   =   True
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   358
         LimitText       =   0
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   False
         Mask            =   ""
         Multiline       =   True
         ReadOnly        =   True
         Scope           =   0
         ScrollbarHorizontal=   False
         ScrollbarVertical=   True
         Styled          =   True
         TabIndex        =   0
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   ""
         TextColor       =   &h00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   202
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   337
      End
      Begin HexViewer HexViewer1
         AcceptFocus     =   ""
         AcceptTabs      =   ""
         AutoDeactivate  =   True
         Backdrop        =   ""
         Bold            =   ""
         ByteBackgroundColor=   "&cFFFFFF00"
         ByteBackgroundColorAlt=   "&cC0C0C000"
         ByteColor       =   "&c0000FF00"
         DoubleBuffer    =   True
         Enabled         =   True
         EraseBackground =   False
         GutterColor     =   "&cFFFFFF00"
         GutterColorAlt  =   "&cC0C0C000"
         Height          =   295
         HelpTag         =   ""
         Hilight         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   ""
         Left            =   353
         LineNumbersColor=   "&c80000000"
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         ShowOffsets     =   True
         TabIndex        =   0
         TabPanelIndex   =   2
         TabStop         =   True
         TextBackGroundColor=   "&cFFFFFF00"
         TextBackGroundColorAlt=   "&cC0C0C000"
         TextSize        =   ""
         Top             =   30
         Underline       =   ""
         UseFocusRing    =   True
         Visible         =   True
         Width           =   336
      End
      Begin ScrollBar ScrollBar1
         AcceptFocus     =   true
         AutoDeactivate  =   True
         Enabled         =   True
         Height          =   295
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Left            =   689
         LineStep        =   1
         LiveScroll      =   ""
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Maximum         =   100
         Minimum         =   0
         PageStep        =   20
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   2
         TabStop         =   True
         Top             =   30
         Value           =   0
         Visible         =   True
         Width           =   16
      End
      Begin Listbox ResponseHeaders
         AutoDeactivate  =   True
         AutoHideScrollbars=   True
         Bold            =   False
         Border          =   True
         ColumnCount     =   2
         ColumnsResizable=   True
         ColumnWidths    =   ""
         DataField       =   ""
         DataSource      =   ""
         DefaultRowHeight=   -1
         Enabled         =   True
         EnableDrag      =   False
         EnableDragReorder=   False
         GridLinesHorizontal=   0
         GridLinesVertical=   0
         HasHeading      =   True
         HeadingIndex    =   -1
         Height          =   119
         HelpTag         =   ""
         Hierarchical    =   False
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         InitialValue    =   "Header Name	Header Value"
         Italic          =   False
         Left            =   358
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         RequiresSelection=   False
         Scope           =   0
         ScrollbarHorizontal=   False
         ScrollBarVertical=   True
         SelectionType   =   0
         TabIndex        =   1
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   52
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   337
         _ScrollWidth    =   -1
      End
      Begin PlacardButton ResponseHeaderView
         AcceptFocus     =   False
         AcceptTabs      =   ""
         AutoDeactivate  =   True
         Backdrop        =   ""
         Bold            =   False
         DoubleBuffer    =   False
         Enabled         =   False
         EraseBackground =   True
         Height          =   25
         HelpTag         =   "Expanded Header View"
         Hilight         =   ""
         Icon            =   1571842047
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   670
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   False
         Scope           =   0
         Sticky          =   ""
         TabIndex        =   5
         TabPanelIndex   =   1
         TabStop         =   True
         TextColor       =   "&c00000000"
         textColorDown   =   "&c000000"
         TextFont        =   "System"
         TextSize        =   0
         Top             =   173
         Underline       =   False
         UseFocusRing    =   True
         Value           =   False
         Visible         =   True
         Width           =   25
      End
      Begin PlacardButton CookiesButton
         AcceptFocus     =   False
         AcceptTabs      =   ""
         AutoDeactivate  =   True
         Backdrop        =   ""
         Bold            =   False
         DoubleBuffer    =   False
         Enabled         =   True
         EraseBackground =   True
         Height          =   25
         HelpTag         =   ""
         Hilight         =   ""
         Icon            =   17051647
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   644
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   False
         Scope           =   0
         Sticky          =   ""
         TabIndex        =   6
         TabPanelIndex   =   1
         TabStop         =   True
         TextColor       =   "&c00000000"
         textColorDown   =   "&c000000"
         TextFont        =   "System"
         TextSize        =   0
         Top             =   173
         Underline       =   False
         UseFocusRing    =   True
         Value           =   False
         Visible         =   False
         Width           =   25
      End
      Begin Label Label3
         AutoDeactivate  =   True
         Bold            =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   ""
         Left            =   361
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Multiline       =   ""
         Scope           =   0
         Selectable      =   False
         TabIndex        =   7
         TabPanelIndex   =   1
         Text            =   "Response Headers"
         TextAlign       =   1
         TextColor       =   &h000000
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   33
         Transparent     =   True
         Underline       =   ""
         Visible         =   True
         Width           =   324
      End
      Begin Label Code
         AutoDeactivate  =   True
         Bold            =   True
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   419
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   8
         TabPanelIndex   =   1
         Text            =   "000 No Error Code"
         TextAlign       =   0
         TextColor       =   "&cFF000000"
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   175
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   221
      End
      Begin Label Label2
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   361
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   9
         TabPanelIndex   =   1
         Text            =   "Status:"
         TextAlign       =   2
         TextColor       =   "&c00000000"
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   175
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   54
      End
   End
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
   Begin HeaderList RequestHeaders
      AutoDeactivate  =   True
      AutoHideScrollbars=   True
      Bold            =   False
      Border          =   True
      ColumnCount     =   3
      ColumnsResizable=   True
      ColumnWidths    =   "47%, 48%, *"
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   -1
      Enabled         =   True
      EnableDrag      =   False
      EnableDragReorder=   False
      GridLinesHorizontal=   0
      GridLinesVertical=   0
      HasHeading      =   True
      HeadingIndex    =   -1
      Height          =   245
      HelpTag         =   ""
      Hierarchical    =   False
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   "Header Name	Header Value	  "
      Italic          =   False
      Left            =   5
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      RequiresSelection=   False
      Scope           =   0
      ScrollbarHorizontal=   False
      ScrollBarVertical=   True
      SelectionType   =   1
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   52
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   337
      _ScrollWidth    =   -1
   End
   Begin ComboBox RequestMethod
      AutoComplete    =   True
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   "GET\r\nHEAD\r\nPOST\r\nTRACE\r\nDELETE\r\nPUT\r\nOPTIONS"
      Italic          =   False
      Left            =   5
      ListIndex       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   4
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   65
   End
   Begin HintTextField URL
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   False
      BackColor       =   "&cFFFFFF00"
      Bold            =   False
      Border          =   True
      CueText         =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      HasText         =   False
      Height          =   22
      HelpTag         =   ""
      HintText        =   "Request URL"
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   72
      LimitText       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Mask            =   ""
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   "&c00000000"
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   5
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   188
   End
   Begin ComboBox ProtocolVer
      AutoComplete    =   False
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   "HTTP/1.1\r\nHTTP/1.0"
      Italic          =   False
      Left            =   262
      ListIndex       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   4
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   79
   End
   Begin PushButton Sender
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   0
      Cancel          =   False
      Caption         =   "Send Request"
      Default         =   False
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   117
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   303
      Underline       =   False
      Visible         =   True
      Width           =   98
   End
   Begin PlacardButton EditCookies11
      AcceptFocus     =   False
      AcceptTabs      =   ""
      AutoDeactivate  =   True
      Backdrop        =   ""
      Bold            =   False
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      Height          =   25
      HelpTag         =   ""
      Hilight         =   ""
      Icon            =   17051647
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   284
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      Sticky          =   ""
      TabIndex        =   18
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   "&c00000000"
      textColorDown   =   "&c000000"
      TextFont        =   "System"
      TextSize        =   0
      Top             =   298
      Underline       =   False
      UseFocusRing    =   True
      Value           =   False
      Visible         =   True
      Width           =   25
   End
   Begin PlacardButton RequestHeaderView11
      AcceptFocus     =   False
      AcceptTabs      =   ""
      AutoDeactivate  =   True
      Backdrop        =   ""
      Bold            =   False
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      Height          =   25
      HelpTag         =   "Expanded Header View"
      Hilight         =   ""
      Icon            =   1571842047
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   310
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      Sticky          =   ""
      TabIndex        =   19
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   "&c00000000"
      textColorDown   =   "&c000000"
      TextFont        =   "System"
      TextSize        =   0
      Top             =   298
      Underline       =   False
      UseFocusRing    =   True
      Value           =   False
      Visible         =   True
      Width           =   25
   End
   Begin PlacardButton EditRaw11
      AcceptFocus     =   False
      AcceptTabs      =   ""
      AutoDeactivate  =   True
      Backdrop        =   ""
      Bold            =   False
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      Height          =   25
      HelpTag         =   ""
      Hilight         =   ""
      Icon            =   978827263
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   258
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      Sticky          =   ""
      TabIndex        =   20
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   "&c00000000"
      textColorDown   =   "&c000000"
      TextFont        =   "System"
      TextSize        =   0
      Top             =   298
      Underline       =   False
      UseFocusRing    =   True
      Value           =   False
      Visible         =   True
      Width           =   25
   End
   Begin Label Label1
      AutoDeactivate  =   True
      Bold            =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   11
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   True
      Multiline       =   ""
      Scope           =   0
      Selectable      =   False
      TabIndex        =   22
      TabPanelIndex   =   0
      Text            =   "Request Headers"
      TextAlign       =   1
      TextColor       =   &h000000
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   0
      Top             =   33
      Transparent     =   True
      Underline       =   ""
      Visible         =   True
      Width           =   324
   End
   Begin Label IPAddress
      AutoDeactivate  =   True
      Bold            =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   484
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   25
      TabPanelIndex   =   0
      Text            =   "000.000.000.000"
      TextAlign       =   2
      TextColor       =   "&c0000FF00"
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   0
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   221
   End
   Begin ProgressBar ProgressBar1
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   7
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   117
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   True
      Maximum         =   0
      Scope           =   0
      TabPanelIndex   =   0
      Top             =   325
      Value           =   0
      Visible         =   False
      Width           =   98
   End
End
#tag EndWindow

#tag WindowCode
	#tag Method, Flags = &h21
		Private Sub Generate()
		  mTheURL = Nil
		  Me.Request = New HTTP.Request()
		  Me.Request.Method = HTTP.Method(Me.RequestMethod.Text)
		  If Me.Request.Method = HTTP.RequestMethod.InvalidMethod Then Me.Request.MethodName = Me.RequestMethod.Text
		  Me.Request.Path = theURL
		  If Me.Request.path.ServerPath = "" Then Me.Request.path.ServerPath = "/"
		  Me.Request.ProtocolVersion = CDbl(NthField(ProtocolVer.Text, "/", 2))
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
		  For i As Integer = 0 To RequestHeaders.ListCount - 1
		    Me.Request.SetHeader(RequestHeaders.Cell(i, 0)) = RequestHeaders.Cell(i, 1)
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
		  Code.Text = Str(Response.StatusCode) + " " + HTTP.CodeToMessage(Response.StatusCode)
		  Select Case Response.StatusCode
		  Case 200, 206
		    Code.TextColor = &c00808000
		  Case 301, 302, 304
		    Code.TextColor = &c00800000
		  Case 204, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 422, 426, 500, 501, 502, 503, 504, 505, 506, 509
		    Code.TextColor = &cFF000000
		    
		  End Select
		  ResponseHeaders.DeleteAllRows
		  For i As Integer = 0 To Response.Headers.Count - 1
		    Dim n, v As String
		    n = Response.Headers.Name(i)
		    v = Response.Headers.Value(n)
		    
		    ResponseHeaders.AddRow(n, v)
		  Next
		  CookiesButton.Visible = Response.Headers.CookieCount > 0
		  CookiesButton.Icon = cookie_icon_grey
		  CookiesButton.Invalidate(True)
		  CookiesButton.HelpTag = Str(Response.Headers.CookieCount) + " cookies"
		  ResponseHeaderView.Enabled = True
		  ResponseHeaderView.Icon = expand_icon
		  
		  If Sock.IsConnected Then
		    'IPAddress1.Text = "Open"
		    IPAddress.TextColor = &c00804000
		  Else
		    'IPAddress1.Text = "Closed by server"
		    'IPAddress1.TextColor = &c80808000
		    IPAddress.TextColor = &c80808000
		  End If
		  '#If HTTP.GZIPAvailable Then
		  'If Response.GetHeader("Content-Encoding") = "gzip" Then
		  'Me.Response.MessageBody = GZip.Uncompress(Me.Response.MessageBody, Me.Response.MessageBody.LenB^2)
		  'End If
		  '#endif
		  
		End Sub
	#tag EndMethod


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

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  If mTheURL = Nil Then
			    mTheURL = New HTTP.URI(URL.Text)
			  End If
			  return mTheURL
			End Get
		#tag EndGetter
		TheURL As HTTP.URI
	#tag EndComputedProperty


#tag EndWindowCode

#tag Events HexViewer1
	#tag Event
		Sub Open()
		  ' try to pick a fixed-width font
		  For i As Integer = 1 To FontCount - 1
		    Dim fontname As String = Font(i)
		    If Left(fontname, 1) <> "@" Then
		      If fontname = "Consolas" Then
		        Me.TextFont = fontname
		        Exit For
		      End If
		      If InStr(fontname, " mono") > 0 Or InStr(fontname, " fixed") > 0 Then
		        Me.TextFont = fontname
		      End If
		    End If
		  Next
		  
		  Dim bs As New BinaryStream("NO DATA TO DISPLAY ")
		  Me.ShowData(bs)
		End Sub
	#tag EndEvent
	#tag Event
		Function Scrolled(LinesDelta As Integer, BytesDelta As Integer) As Boolean
		  #pragma Unused BytesDelta
		  ScrollBar1.Value = ScrollBar1.Value + LinesDelta
		  ScrollBar1.Maximum = Me.LineCount
		  Return True ' Since we're updating the offset in ScrollBar1.ValueChanged, we return true to prevent the HexViewer from updating it too.
		End Function
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  Dim i As Integer = Me.OffsetFromXY(X, Y)
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events ScrollBar1
	#tag Event
		Sub ValueChanged()
		  HexViewer1.Offset = Me.Value * HexViewer1.LineLength
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ResponseHeaderView
	#tag Event
		Sub ValueChanged()
		  HeaderViewer.ShowHeaders(Response.Headers)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CookiesButton
	#tag Event
		Sub Open()
		  Me.Icon = cookie_icon_grey
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  Me.Icon = cookie_icon
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  Me.Icon = cookie_icon_grey
		End Sub
	#tag EndEvent
	#tag Event
		Sub ValueChanged()
		  Dim allcookies() As Cookie
		  For i As Integer = 0 To Response.Headers.CookieCount - 1
		    allcookies.Append(Response.Headers.Cookie(i))
		  Next
		  CookieViewer.ShowCookies(AllCookies)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Code
	#tag Event
		Sub Open()
		  Me.Text = ""
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Sock
	#tag Event
		Sub Connected()
		  Output = ""
		  IPAddress.Text = Me.RemoteAddress
		  IPAddress.TextColor = &c00804000
		  'IPAddress1.Text = "Connected"
		  IPAddress.TextColor = &c00804000
		  Me.Write(Request.ToString)
		  URL.AddItem(URL.Text)
		End Sub
	#tag EndEvent
	#tag Event
		Sub DataAvailable()
		  'IPAddress1.Text = "Receiving"
		  IPAddress.TextColor = &c00804000
		  Output = Output + Me.ReadAll
		  RawText = Self.Request.ToString
		  OutputLog.Text = "-----------Request-----------" + CRLF + RawText + CRLF _
		  + "-----------Response-----------" + CRLF + OutPut + CRLF
		  Dim bs As New BinaryStream(RawText + CRLF + CRLF + Output)
		  HexViewer1.ShowData(bs)
		  ScrollBar1.Value = 0
		  ScrollBar1.Maximum = HexViewer1.LineCount
		  
		  DataReceivedTimer.Mode = Timer.ModeSingle
		End Sub
	#tag EndEvent
	#tag Event
		Sub Error()
		  Select Case Me.LastErrorCode
		  Case 102
		    'IPAddress.Text = "Closed by host"
		    IPAddress.TextColor = &c80808000
		    
		  Case 103
		    Code.Text = SocketErrorMessage(Me.LastErrorCode)
		    ResponseHeaders.DeleteAllRows
		    IPAddress.TextColor = &cFF000000
		    IPAddress.Text = "Unable to connect"
		    OutputLog.Text = ""
		    
		  Else
		    IPAddress.Text = "Unable to connect"
		    IPAddress.TextColor = &cFF000000
		    OutputLog.Text = ""
		    Code.TextColor = &cFF000000
		    Code.Text = SocketErrorMessage(Me.LastErrorCode)
		  End Select
		  Sender.Enabled = True
		  Sender.Caption = "Send Request"
		  ProgressBar1.Visible = False
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
		      URL.Text = u.ToString
		      Perform()
		    End If
		  End If
		  Self.Refresh
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RequestHeaders
	#tag Event
		Sub AddNew()
		  Dim p As Pair = HeaderEdit.GetHeader()
		  If p <> Nil Then
		    If p.Right IsA Date Then
		      RequestHeaders.AddRow(p.Left, HTTPDate(p.Right.DateValue), "")
		      'RequestHeaders.CellType(RequestHeaders.LastIndex, 0) = Listbox.TypeEditable
		      'RequestHeaders.EditCell(RequestHeaders.LastIndex, 0)
		    Else
		      RequestHeaders.AddRow(p.Left, p.Right, "")
		      'RequestHeaders.CellType(RequestHeaders.LastIndex, 0) = Listbox.TypeEditable
		      'RequestHeaders.EditCell(RequestHeaders.LastIndex, 0)
		    End If
		    RequestHeaders.RowTag(RequestHeaders.LastIndex) = p
		  End If
		  GenerateHeaders()
		End Sub
	#tag EndEvent
	#tag Event
		Sub Remove(Row As Integer)
		  If MsgBox("Remove this header?", 52, "Confirm removal") = 6 Then
		    Me.RemoveRow(row)
		    GenerateHeaders()
		  End If
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub DoubleClick()
		  If Me.ListIndex > -1 Then
		    Dim data As Object = Me.RowTag(Me.ListIndex)
		    If data = Nil Then Return
		    If data IsA HTTPParse.Cookie Then
		      Dim p As HTTPParse.Cookie = HTTPParse.Cookie(data)
		      p = CookieEdit.GetCookie(p)
		      If p <> Nil Then
		        Me.Cell(Me.ListIndex, 0) = "Cookie"
		        Me.Cell(Me.ListIndex, 1) = p.Name + "=" + p.Value
		        Me.RowTag(Me.ListIndex) = p
		      End If
		    ElseIf data IsA Pair Then
		      Dim p As Pair = Pair(data)
		      p = HeaderEdit.GetHeader(p)
		      If p <> Nil Then
		        Me.Cell(Me.ListIndex, 0) = p.Left
		        If p.Right IsA Date Then
		          Me.Cell(Me.ListIndex, 1) = HTTPDate(p.Right.DateValue)
		        Else
		          Me.Cell(Me.ListIndex, 1) = p.Right
		        End If
		        Me.RowTag(Me.ListIndex) = p
		      End If
		    End If
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.AddRow("Connection", "close")
		  Me.RowTag(Me.LastIndex) = "Connection":"close"
		  Me.AddRow("Accept", "text/html,*/*;q=0.8")
		  Me.RowTag(Me.LastIndex) = "Accept":"text/html,*/*;q=0.8"
		  Me.HeaderType(2) = Listbox.HeaderTypes.NotSortable
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events URL
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  If Asc(key) = &h0D Or Asc(key) = &h03 Then
		    Perform()
		  End If
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events Sender
	#tag Event
		Sub Action()
		  Sender.Enabled = False
		  Sender.Caption = "Sending..."
		  ProgressBar1.Visible = True
		  Self.Refresh
		  Perform()
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditCookies11
	#tag Event
		Sub Open()
		  Me.Icon = cookie_icon_grey
		  Me.HelpTag = "Add a cookie to request"
		End Sub
	#tag EndEvent
	#tag Event
		Sub ValueChanged()
		  Dim c As Cookie
		  Dim editindex As Integer = -1
		  
		  If RequestHeaders.ListIndex > -1 And RequestHeaders.Cell(RequestHeaders.ListIndex, 0) = "Cookie" Then
		    Dim n, v As String
		    n = NthField(RequestHeaders.Cell(RequestHeaders.ListIndex, 1), "=", 1)
		    v = NthField(RequestHeaders.Cell(RequestHeaders.ListIndex, 1), "=", 2)
		    c = New Cookie(n, v)
		    editindex = RequestHeaders.ListIndex
		  End If
		  c = CookieEdit.GetCookie(c)
		  If c <> Nil Then
		    If editindex > -1 Then
		      RequestHeaders.Cell(editindex, 1) = c.Name + "=" + c.Value
		      RequestHeaders.RowTag(editindex) = c
		    Else
		      RequestHeaders.AddRow("Cookie", c.Name + "=" + c.Value, "")
		      RequestHeaders.RowTag(RequestHeaders.LastIndex) = c
		    End If
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  Me.Icon = cookie_icon
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  Me.Icon = cookie_icon_grey
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RequestHeaderView11
	#tag Event
		Sub ValueChanged()
		  GenerateHeaders()
		  HeaderViewer.ShowHeaders(Request.Headers)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditRaw11
	#tag Event
		Sub Open()
		  Me.HelpTag = "Edit HTTP request body"
		End Sub
	#tag EndEvent
	#tag Event
		Sub ValueChanged()
		  Dim mnu As New MenuItem("EditRawMenu")
		  mnu.Append(New MenuItem("HTML form output"))
		  mnu.Append(New MenuItem("Edit raw"))
		  Dim res As MenuItem = mnu.PopUp
		  If res <> Nil Then
		    If Self.Request = Nil Then Generate()
		    Select Case res.Text
		    Case "HTML form output"
		      Dim formgen As New FormGenerator
		      Dim olddata As Dictionary = DecodeFormData(MessageBodyRaw)
		      Dim data As Dictionary = formgen.SetFormData(olddata)
		      If Data <> Nil Then
		        MessageBodyRaw = EncodeFormData(data)
		        
		        For i As Integer = RequestHeaders.ListCount - 1 DownTo 0
		          If RequestHeaders.Cell(i, 0) = "Content-Type" Then
		            RequestHeaders.RemoveRow(i)
		          End If
		        Next
		        For i As Integer = RequestHeaders.ListCount - 1 DownTo 0
		          If RequestHeaders.Cell(i, 0) = "Content-Length" Then
		            RequestHeaders.RemoveRow(i)
		          End If
		        Next
		        RequestHeaders.AddRow("Content-Type", "application/x-www-form-URLEncoded", "")
		        RequestHeaders.RowTag(RequestHeaders.LastIndex) = "Content-Type":"application/x-www-form-URLEncoded"
		        RequestHeaders.AddRow("Content-Length", Str(LenB(MessageBodyRaw)), "")
		        RequestHeaders.RowTag(RequestHeaders.LastIndex) = "Content-Length":Str(LenB(MessageBodyRaw))
		      End If
		    Case "Edit raw"
		      Dim raw As String = RawEditor.EditRaw(MessageBodyRaw)
		      If raw.Trim = "" Then Return
		      For i As Integer = RequestHeaders.ListCount - 1 DownTo 0
		        If RequestHeaders.Cell(i, 0) = "Content-Length" Then
		          RequestHeaders.RemoveRow(i)
		        End If
		      Next
		      MessageBodyRaw = raw
		      RequestHeaders.AddRow("Content-Length", Str(LenB(MessageBodyRaw)), "")
		      RequestHeaders.RowTag(RequestHeaders.LastIndex) = "Content-Length":Str(LenB(MessageBodyRaw))
		      
		    End Select
		  End If
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events IPAddress
	#tag Event
		Sub Open()
		  Me.Text = "No response pending."
		  Me.TextColor = &c80808000
		End Sub
	#tag EndEvent
#tag EndEvents
