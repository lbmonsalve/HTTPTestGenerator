#tag Window
Begin ContainerControl PictureView Implements Viewer
   AcceptFocus     =   ""
   AcceptTabs      =   True
   AutoDeactivate  =   True
   BackColor       =   16777215
   Backdrop        =   ""
   Enabled         =   True
   EraseBackground =   False
   HasBackColor    =   False
   Height          =   457
   HelpTag         =   ""
   InitialParent   =   ""
   Left            =   32
   LockBottom      =   True
   LockLeft        =   True
   LockRight       =   True
   LockTop         =   True
   TabIndex        =   0
   TabPanelIndex   =   0
   TabStop         =   True
   Top             =   32
   UseFocusRing    =   ""
   Visible         =   True
   Width           =   614
   Begin Canvas ImageView
      AcceptFocus     =   ""
      AcceptTabs      =   ""
      AutoDeactivate  =   True
      Backdrop        =   ""
      DoubleBuffer    =   True
      Enabled         =   True
      EraseBackground =   False
      Height          =   457
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   0
      UseFocusRing    =   True
      Visible         =   True
      Width           =   614
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Resized()
		  ImageView.Invalidate
		End Sub
	#tag EndEvent

	#tag Event
		Sub Resizing()
		  Pic = Nil
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h1
		Protected Function Scale(Source As Picture, Ratio As Double = 1.0) As Picture
		  //Returns a scaled version of the passed Picture object.
		  //A ratio of 1.0 is 100% (no change,) 0.5 is 50% (half size) and so forth.
		  //This function should be cross-platform safe.
		  
		  Dim wRatio, hRatio As Double
		  wRatio = (Ratio * Source.width)
		  hRatio = (Ratio * Source.Height)
		  If wRatio = Source.Width And hRatio = Source.Height Then Return Source
		  Dim photo As New Picture(wRatio, hRatio)
		  Photo.Graphics.DrawPicture(Source, 0, 0, Photo.Width, Photo.Height, 0, 0, Source.Width, Source.Height)
		  Return photo
		  
		Exception
		  Return Source
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ViewRaw(Message As String, Type As ContentType)
		  // Part of the Viewer interface.
		  
		  RawData = Message
		  MIMEType = Type
		  Image = Picture.FromData(RawData)
		  ImageView.Invalidate
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h1
		Protected Image As Picture
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected MIMEType As ContentType
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Pic As Picture
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected RawData As MemoryBlock
	#tag EndProperty


#tag EndWindowCode

#tag Events ImageView
	#tag Event
		Sub Paint(g As Graphics)
		  If Not App.UseGDIPlus Then App.UseGDIPlus = True
		  If g.Width <= 0 Or g.Height <= 0 Then Return
		  Dim buffer As New Picture(g.Width, g.Height)
		  If Image <> Nil Then
		    If Pic = Nil Then
		      Dim ratio As Double = 1.0
		      If g.Width < Image.Width Then
		        ratio = g.Width / Image.Width
		      End If
		      If g.Height < Image.Height Then
		        ratio = Min(g.Height / Image.Height, ratio)
		      End If
		      Pic = Scale(Image, ratio)
		      Self.Window.Title = "Message body - " + MIMEType.ToString + " (" + Format(ratio * 100, "##0.0#") + "%)"
		    End If
		    
		    For i As Integer = 0 To g.Width Step 5
		      For j As Integer = 0 To g.Height Step 5
		        If (i Mod 2 = 0) Xor (j Mod 2 = 0) Then
		          g.ForeColor = &c80808000
		        Else
		          g.ForeColor = &cC0C0C000
		        End If
		        g.FillRect(i, j, 5, 5)
		      Next
		    Next
		    Buffer.Graphics.DrawPicture(Pic, (g.Width - Pic.Width) / 2, (g.Height - Pic.Height) / 2)
		  Else
		    Dim s As String = "Unknown image format."
		    Dim gg As Graphics = buffer.Graphics
		    gg.ForeColor = &cC0C0C000
		    gg.FillRect(0, 0, g.Width, g.Height)
		    gg.ForeColor = &c00000000
		    gg.TextSize = 15
		    Dim w, h As Integer
		    w = g.StringWidth(s)
		    h = g.StringHeight(s, w)
		    w = (g.Width - w) / 2
		    h = (g.Height - h) / 2
		    gg.DrawString(s, w, h)
		  End If
		  g.DrawPicture(Buffer, 0, 0)
		End Sub
	#tag EndEvent
#tag EndEvents