#tag Window
Begin Window FormGenerator
   BackColor       =   -256
   Backdrop        =   0
   CloseButton     =   True
   Composite       =   False
   Frame           =   1
   FullScreen      =   False
   HasBackColor    =   False
   Height          =   270
   ImplicitInstance=   False
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   False
   MaxWidth        =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   True
   MinWidth        =   64
   Placement       =   1
   Resizeable      =   False
   Title           =   "Edit HTTP Form"
   Visible         =   True
   Width           =   561
   Begin PushButton PushButton2
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   0
      Cancel          =   False
      Caption         =   "-"
      Default         =   False
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   27
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   242
      Underline       =   False
      Visible         =   True
      Width           =   20
   End
   Begin PushButton PushButton1
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   0
      Cancel          =   False
      Caption         =   "+"
      Default         =   False
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   6
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   242
      Underline       =   False
      Visible         =   True
      Width           =   20
   End
   Begin PushButton PushButton3
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   0
      Cancel          =   False
      Caption         =   "OK"
      Default         =   False
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   283
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   244
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin PushButton PushButton4
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   0
      Cancel          =   False
      Caption         =   "Cancel"
      Default         =   False
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   199
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
      Top             =   244
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin Listbox HTTPForm
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
      Height          =   232
      HelpTag         =   ""
      Hierarchical    =   False
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   "Form Element	Value"
      Italic          =   False
      Left            =   1
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      RequiresSelection=   False
      Scope           =   0
      ScrollbarHorizontal=   False
      ScrollBarVertical=   True
      SelectionType   =   0
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   0
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   560
      _ScrollWidth    =   -1
   End
   Begin RadioButton FormType
      AutoDeactivate  =   True
      Bold            =   ""
      Caption         =   "Multipart"
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   463
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   True
      Scope           =   0
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   0
      Top             =   252
      Underline       =   ""
      Value           =   ""
      Visible         =   True
      Width           =   100
   End
   Begin RadioButton FormType1
      AutoDeactivate  =   True
      Bold            =   ""
      Caption         =   "URL-Encoded"
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   463
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   True
      Scope           =   0
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   0
      Top             =   233
      Underline       =   ""
      Value           =   True
      Visible         =   True
      Width           =   100
   End
   Begin PushButton FileAdd
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   0
      Cancel          =   False
      Caption         =   "File"
      Default         =   False
      Enabled         =   False
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   49
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   242
      Underline       =   False
      Visible         =   True
      Width           =   36
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  Me.Left = Generator.Left + (Generator.Width - Me.Width) / 2
		  Me.Top = Generator.Top + (Generator.Height - Me.Height) / 2
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Function SetFormData(OldForm As HTTP.FormInterface) As HTTP.FormInterface
		  Me.Form = Nil
		  HTTPForm.DeleteAllRows
		  If OldForm <> Nil Then
		    Form = OldForm
		    If OldForm IsA HTTP.URLEncodedForm Then ' URLEncoded
		      FormType1.Value = True
		    Else ' MultipartForm
		      FormType.Value = True
		    End If
		    
		    For i As Integer = 0 To OldForm.Count - 1
		      Dim n As String
		      Dim v As Variant
		      n = OldForm.Name(i)
		      v = OldForm.Element(n)
		      If v IsA FolderItem Then
		        Dim f As FolderItem = v
		        HTTPForm.AddRow(n, f.AbsolutePath)
		        HTTPForm.RowTag(HTTPForm.LastIndex) = f
		      Else
		        HTTPForm.AddRow(n, v)
		      End If
		      HTTPForm.CellType(HTTPForm.LastIndex, 0) = Listbox.TypeEditable
		      HTTPForm.CellType(HTTPForm.LastIndex, 1) = Listbox.TypeEditable
		    Next
		  End If
		  
		  Self.ShowModal()
		  Return Form
		End Function
	#tag EndMethod


	#tag Property, Flags = &h1
		Protected Form As HTTP.FormInterface
	#tag EndProperty


#tag EndWindowCode

#tag Events PushButton2
	#tag Event
		Sub Action()
		  If HTTPForm.ListIndex > -1 And MsgBox("Remove this form element?", 4 + 48, "Confirm removal") = 6 Then
		    HTTPForm.RemoveRow(HTTPForm.ListIndex)
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton1
	#tag Event
		Sub Action()
		  HTTPForm.AddRow("New-Form-Element", "New-Form-Value", "")
		  HTTPForm.CellType(HTTPForm.LastIndex, 0) = Listbox.TypeEditable
		  HTTPForm.EditCell(HTTPForm.LastIndex, 0)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton3
	#tag Event
		Sub Action()
		  If FormType1.Value Then
		    Form = New HTTP.URLEncodedForm("")
		  Else
		    Form = New MultipartForm
		  End If
		  For i As Integer = 0 To HTTPForm.ListCount - 1
		    If HTTPForm.RowTag(i) <> Nil And HTTPForm.RowTag(i) IsA FolderItem Then
		      Dim f As FolderItem = HTTPForm.RowTag(i)
		      If Form IsA MultipartForm Then
		        Form.Element(HTTPForm.Cell(i, 0)) = f
		      Else
		        Form.Element(HTTPForm.Cell(i, 0)) = f.AbsolutePath
		        MsgBox("File element '" + f.AbsolutePath + "' has been stripped.")
		      End If
		    Else
		      Form.Element(HTTPForm.Cell(i, 0)) = HTTPForm.Cell(i, 1)
		    End If
		  Next
		  
		  Self.Close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton4
	#tag Event
		Sub Action()
		  Form = Nil
		  Self.Close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events HTTPForm
	#tag Event
		Function CellClick(row as Integer, column as Integer, x as Integer, y as Integer) As Boolean
		  #pragma Unused x
		  #pragma Unused y
		  Me.EditCell(row, column)
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events FormType
	#tag Event
		Sub Action()
		  FileAdd.Enabled = Me.Value
		  Form = New MultipartForm
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events FormType1
	#tag Event
		Sub Action()
		  FileAdd.Enabled = Not Me.Value
		  Form = New HTTP.URLEncodedForm("")
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events FileAdd
	#tag Event
		Sub Action()
		  Dim f As FolderItem = GetOpenFolderItem("")
		  If f <> Nil Then
		    HTTPForm.AddRow(f.Name, f.AbsolutePath, "")
		    HTTPForm.RowTag(HTTPForm.LastIndex) = f
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents