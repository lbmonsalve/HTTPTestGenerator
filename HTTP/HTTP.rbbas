#tag Module
Protected Module HTTP
	#tag Method, Flags = &h1
		Protected Function CodeToMessage(Code As Integer) As String
		  Select Case Code
		  Case 100
		    Return "Continue"
		    
		  Case 101
		    Return "Switching Protocols"
		    
		  Case 102
		    Return "Processing"
		    
		  Case 200
		    Return "OK"
		    
		  Case 201
		    Return "Created"
		    
		  Case 202
		    Return "Accepted"
		    
		  Case 203
		    Return "Non-Authoritative Information"
		    
		  Case 204
		    Return "No Content"
		    
		  Case 205
		    Return "Reset Content"
		    
		  Case 206
		    Return "Partial Content"
		    
		  Case 207
		    Return "Multi-Status"
		    
		  Case 208
		    Return "Already Reported"
		    
		  Case 226
		    Return "IM Used"
		    
		  Case 300
		    Return "Multiple Choices"
		    
		  Case 301
		    Return "Moved Permanently"
		    
		  Case 302
		    Return "Found"
		    
		  Case 303
		    Return "See Other"
		    
		  Case 304
		    Return "Not Modified"
		    
		  Case 305
		    Return "Use Proxy"
		    
		  Case 306
		    ' This status code is deprecated by http://tools.ietf.org/html/rfc7231#section-6.4.6
		    Return "Switch Proxy"
		    
		  Case 307
		    Return "Temporary Redirect" ' http://tools.ietf.org/html/rfc7231#section-6.4.7
		    
		  Case 308 ' https://tools.ietf.org/html/draft-reschke-http-status-308-07
		    Return "Permanent Redirect"
		    
		  Case 400
		    Return "Bad Request"
		    
		  Case 401
		    Return "Unauthorized"
		    
		  Case 402
		    Return "Payment Required" ' http://tools.ietf.org/html/rfc7231#section-6.5.2
		    
		  Case 403
		    Return "Forbidden"
		    
		  Case 404
		    Return "Not Found"
		    
		  Case 405
		    Return "Method Not Allowed"
		    
		  Case 406
		    Return "Not Acceptable"
		    
		  Case 407
		    Return "Proxy Authentication Required"
		    
		  Case 408
		    Return "Request Timeout"
		    
		  Case 409
		    Return "Conflict"
		    
		  Case 410
		    Return "Gone"
		    
		  Case 411
		    Return "Length Required"
		    
		  Case 412
		    Return "Precondition Failed"
		    
		  Case 413
		    Return "Request Entity Too Large"
		    
		  Case 414
		    Return "Request-URI Too Long"
		    
		  Case 415
		    Return "Unsupported Media Type"
		    
		  Case 416
		    Return "Requested Range Not Satisfiable"
		    
		  Case 417
		    Return "Expectation Failed"
		    
		  Case 418
		    Return "I'm a teapot" ' https://tools.ietf.org/html/rfc2324
		    
		  Case 420
		    Return "Enhance Your Calm" 'Nonstandard, from Twitter API
		    
		  Case 422
		    Return "Unprocessable Entity"
		    
		  Case 423
		    Return "Locked"
		    
		  Case 424
		    Return "Failed Dependency"
		    
		  Case 425
		    Return "Unordered Collection" 'Draft, https://tools.ietf.org/html/rfc3648
		    
		  Case 426
		    Return "Upgrade Required"
		    
		  Case 428
		    Return "Precondition Required"
		    
		  Case 429
		    Return "Too Many Requests"
		    
		  Case 431
		    Return "Request Header Fields Too Large"
		    
		  Case 444
		    Return "No Response" 'Nginx
		    
		  Case 449
		    Return "Retry With" 'Nonstandard, from Microsoft http://msdn.microsoft.com/en-us/library/dd891478.aspx
		    
		  Case 450
		    Return "Blocked By Windows Parental Controls" 'Nonstandard, from Microsoft
		    
		  Case 451
		    Return "Unavailable For Legal Reasons" 'Draft, https://tools.ietf.org/html/draft-tbray-http-legally-restricted-status-00
		    
		  Case 463
		    Return "Restricted Client" ' non-standard, used by CDNs
		    
		  Case 494
		    Return "Request Header Too Large" 'nginx
		    
		  Case 495
		    Return "Cert Error" 'nginx
		    
		  Case 496
		    Return "No Cert" 'nginx
		    
		  Case 497
		    Return "HTTP to HTTPS" 'nginx
		    
		  Case 499
		    Return "Client Closed Request" 'nginx
		    
		  Case 500
		    Return "Internal Server Error"
		    
		  Case 501
		    Return "Not Implemented"
		    
		  Case 502
		    Return "Bad Gateway"
		    
		  Case 503
		    Return "Service Unavailable"
		    
		  Case 504
		    Return "Gateway Timeout"
		    
		  Case 505
		    Return "HTTP Version Not Supported"
		    
		  Case 506
		    Return "Variant Also Negotiates" 'WEBDAV https://tools.ietf.org/html/rfc2295
		    
		  Case 507
		    Return "Insufficient Storage" 'WEBDAV https://tools.ietf.org/html/rfc4918
		    
		  Case 508
		    Return "Loop Detected" 'WEBDAV https://tools.ietf.org/html/rfc5842
		    
		  Case 509
		    Return "Bandwidth Limit Exceeded" 'Apache, others
		    
		  Case 510
		    Return "Not Extended"  'https://tools.ietf.org/html/rfc2774
		    
		  Case 511
		    Return "Network Authentication Required" 'https://tools.ietf.org/html/rfc6585
		    
		  Else
		    Return "Unknown Status Code"
		  End Select
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CRLF() As String
		  Return EndOfLine.Windows
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function DateString(d As Date) As String
		  Dim dt As String
		  d.GMTOffset = 0
		  Select Case d.DayOfWeek
		  Case 1
		    dt = dt + "Sun, "
		  Case 2
		    dt = dt + "Mon, "
		  Case 3
		    dt = dt + "Tue, "
		  Case 4
		    dt = dt + "Wed, "
		  Case 5
		    dt = dt + "Thu, "
		  Case 6
		    dt = dt + "Fri, "
		  Case 7
		    dt = dt + "Sat, "
		  End Select
		  
		  dt = dt  + Format(d.Day, "00") + " "
		  
		  Select Case d.Month
		  Case 1
		    dt = dt + "Jan "
		  Case 2
		    dt = dt + "Feb "
		  Case 3
		    dt = dt + "Mar "
		  Case 4
		    dt = dt + "Apr "
		  Case 5
		    dt = dt + "May "
		  Case 6
		    dt = dt + "Jun "
		  Case 7
		    dt = dt + "Jul "
		  Case 8
		    dt = dt + "Aug "
		  Case 9
		    dt = dt + "Sep "
		  Case 10
		    dt = dt + "Oct "
		  Case 11
		    dt = dt + "Nov "
		  Case 12
		    dt = dt + "Dec "
		  End Select
		  
		  dt = dt  + Format(d.Year, "0000") + " " + Format(d.Hour, "00") + ":" + Format(d.Minute, "00") + ":" + Format(d.Second, "00") + " GMT"
		  Return dt
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function DateString(Data As String) As Date
		  
		  'Sat, 29 Oct 1994 19:43:31 GMT
		  Data = ReplaceAll(Data, "-", " ")
		  Dim d As Date
		  Dim members() As String = Split(Data, " ")
		  If UBound(members) = 5 Then
		    Dim dom, mon, year, h, m, s, tz As Integer
		    
		    dom = Val(members(1))
		    
		    Select Case members(2)
		    Case "Jan"
		      mon = 1
		    Case "Feb"
		      mon = 2
		    Case "Mar"
		      mon = 3
		    Case "Apr"
		      mon = 4
		    Case "May"
		      mon = 5
		    Case "Jun"
		      mon = 6
		    Case "Jul"
		      mon = 7
		    Case "Aug"
		      mon = 8
		    Case "Sep"
		      mon = 9
		    Case "Oct"
		      mon = 10
		    Case "Nov"
		      mon = 11
		    Case "Dec"
		      mon = 12
		    End Select
		    
		    year = Val(members(3))
		    
		    Dim time As String = members(4)
		    h = Val(NthField(time, ":", 1))
		    m = Val(NthField(time, ":", 2))
		    s = Val(NthField(time, ":", 3))
		    tz = Val(members(5))
		    
		    
		    
		    d = New Date(year, mon, dom, h, m, s, tz)
		  End If
		  Return d
		End Function
	#tag EndMethod

	#tag DelegateDeclaration, Flags = &h1
		Protected Delegate Sub DebugMessage(Message As Variant, Level As Integer)
	#tag EndDelegateDeclaration

	#tag Method, Flags = &h1
		Protected Function DecodeChunkedData(Data As MemoryBlock) As MemoryBlock
		  Dim instream As Readable = New BinaryStream(Data)
		  Dim output As New MemoryBlock(0)
		  Dim outstream As New BinaryStream(output)
		  Dim chunk As ChunkedStream = ChunkedStream.Open(instream)
		  Do Until chunk.EOF
		    outstream.Write(chunk.Read(64))
		  Loop
		  outstream.Close
		  Return output
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function DecompressData(Data As MemoryBlock, AllegedType As String, DebugOutput As HTTP.DebugMessage = Nil) As MemoryBlock
		  Dim out As MemoryBlock
		  #pragma BreakOnExceptions Off
		  If DebugOutput = Nil Then DebugOutput = AddressOf DevNull
		  Try
		    out = zlib.GUnZip(Data)
		    If out <> Nil And AllegedType <> "gzip" Then 
		      DebugOutput.Invoke("Alert: The message claims to be compressed using " + AllegedType + ", but is actually using gzip.", -1)
		    End If
		  Catch
		  End Try
		  
		  If out = Nil Then
		    Try
		      out = zlib.Inflate(Data)
		      If out <> Nil And AllegedType <> "deflate" Then 
		        DebugOutput.Invoke("Alert: The message claims to be compressed using " + AllegedType + ", but is actually using deflate.", -1)
		      End If
		    Catch
		    End Try
		  End If
		  
		  If out = Nil Then
		    Try
		      out = zlib.Inflate(Data, Nil, zlib.RAW_ENCODING)
		      If DebugOutput <> Nil Then
		        If out = Nil Then
		          DebugOutput.Invoke("Warning: The message claims to be compressed but does not appear to be in a standard compression format.", -1)
		        Else
		          DebugOutput.Invoke("Alert: The message is a raw deflate stream. Inflation was successful anyway, but this is non-standard.", -1)
		        End If
		      End If
		    Catch
		    End Try
		  End If
		  
		  If out = Nil And InStrB(Left(Data, 11), CRLF) > 0 Then
		    ' decompression failed, maybe it's chunked
		    out = DecompressData(DecodeChunkedData(Data), AllegedType, DebugOutput)
		  ElseIf out = Nil And DebugOutput <> Nil Then
		    If AllegedType = "deflate" Then
		      DebugOutput.Invoke("Alert: The message claims to be deflated but it does not appear to contain valid deflate data.", -1)
		    ElseIf AllegedType = "gzip" Then
		      DebugOutput.Invoke("Alert: The message claims to be gzipped but it does not appear to contain valid gzip data.", -1)
		    Else
		      DebugOutput.Invoke("Warning: The message claims to be compressed using an unknown, non-standard encoding ('" + AllegedType + "').", -1)
		    End If
		  End If
		  
		  Return out
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden ) Private Sub DevNull(Message As Variant, Level As Integer)
		  #pragma Unused Message
		  #pragma Unused Level
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function ErrorPage(ErrorNumber As Integer, RedirectLink As String = "") As HTTP.Response
		  Static ErrorPages As Dictionary
		  If ErrorPages = Nil Then
		    ErrorPages = New Dictionary
		    For error As Integer = 100 To 599
		      Dim page As String = BlankErrorPage
		      Dim msg As String = CodeToMessage(error)
		      page = ReplaceAll(page, "%HTTPERROR%", Str(error) + " " + msg)
		      
		      Select Case error
		      Case 100
		        page = ReplaceAll(page, "%DOCUMENT%", "You may now send the next part of your request.")
		        
		      Case 101
		        page = ReplaceAll(page, "%DOCUMENT%", "Your request to change protocols is accepted.")
		        
		      Case 200
		        page = ReplaceAll(page, "%DOCUMENT%", "Your request was processed successfully.")
		        
		      Case 201
		        page = ReplaceAll(page, "%DOCUMENT%", "This resource was created successfully.")
		        
		      Case 202
		        page = ReplaceAll(page, "%DOCUMENT%", "Your request was accepted for processing.")
		        
		      Case 204
		        page = ReplaceAll(page, "%DOCUMENT%", "This resource is intentionally blank.")
		        
		      Case 301, 308
		        page = ReplaceAll(page, "%DOCUMENT%", "This resource has permanently moved; please update your links. <a href=""%REDIR_LINK%"">Click here</a> if you are not automatically redirected.")
		        
		      Case 302, 307
		        page = ReplaceAll(page, "%DOCUMENT%", "This resource has temporarily moved. <a href=""%REDIR_LINK%"">Click here</a> if you are not automatically redirected.")
		        
		      Case 303
		        page = ReplaceAll(page, "%DOCUMENT%", "Refer to the resource <a href=""%REDIR_LINK%"">here</a> to fulfill your request.")
		        
		      Case 304
		        page = ReplaceAll(page, "%DOCUMENT%", "This resource has not been recently modified.")
		        
		      Case 400
		        page = ReplaceAll(page, "%DOCUMENT%", "The server did not understand your request.")
		        
		      Case 402
		        page = ReplaceAll(page, "%DOCUMENT%", "Access to this resource requires payment. <a href=""%REDIR_LINK%"">Click here</a> to purchase access.")
		        
		      Case 403, 401
		        page = ReplaceAll(page, "%DOCUMENT%", "Permission to access this resource is denied.")
		        
		      Case 404
		        page = ReplaceAll(page, "%DOCUMENT%", "This resource could not be found.")
		        
		      Case 405
		        page = ReplaceAll(page, "%DOCUMENT%", "That request method is not allowed for this resource.")
		        
		      Case 406
		        page = ReplaceAll(page, "%DOCUMENT%", "Your browser did not specify an acceptable Content-Type that is compatible with this resource.")
		        
		      Case 410
		        page = ReplaceAll(page, "%DOCUMENT%", "This resource has been removed.")
		        
		      Case 411
		        page = ReplaceAll(page, "%DOCUMENT%", "Your browser did not specify the length of the request payload.")
		        
		      Case 413
		        page = ReplaceAll(page, "%DOCUMENT%", "The request payload is too large.")
		        
		      Case 414
		        page = ReplaceAll(page, "%DOCUMENT%", "The request URL is too long.")
		        
		      Case 415
		        page = ReplaceAll(page, "%DOCUMENT%", "The request payload is of an unknown or unsupported type.")
		        
		      Case 416
		        page = ReplaceAll(page, "%DOCUMENT%", "This resource does not contain the requested range.")
		        
		      Case 418
		        page = ReplaceAll(page, "%DOCUMENT%", "I'm a little teapot, short and stout; here is my handle, here is my spout.")
		        
		      Case 426
		        page = ReplaceAll(page, "%DOCUMENT%", "This resource is not available via the current network protocol.")
		        
		      Case 429, 420
		        page = ReplaceAll(page, "%DOCUMENT%", "Your browser has made too many requests of this server.")
		        
		      Case 451
		        page = ReplaceAll(page, "%DOCUMENT%", "This resource is unavailable as a result of a <a href=""%REDIR_LINK%"">legal demand</a>.")
		        
		      Case 500
		        page = ReplaceAll(page, "%DOCUMENT%", "An error ocurred while processing your request.")
		        
		      Case 501
		        page = ReplaceAll(page, "%DOCUMENT%", "Your browser used a request method that is not implemented by this server.")
		        
		      Case 503
		        page = ReplaceAll(page, "%DOCUMENT%", "This server is currently unavailable to process your requst.")
		        
		      Case 505
		        page = ReplaceAll(page, "%DOCUMENT%", "Your browser specified an HTTP version that is not supported by this server.")
		        
		      Case 509
		        page = ReplaceAll(page, "%DOCUMENT%", "The bandwidth limit for this server has been exceeded.")
		        
		      Else
		        page = ReplaceAll(page, "%DOCUMENT%", "No further information is available.")
		      End Select
		      
		      page = ReplaceAll(page, "%SIGNATURE%", "<em>Powered By " + DaemonVersion + "</em><br />")
		      
		      If page.LenB < 512 Then
		        page = page + "<!--"
		        Do
		          page = page + " padding to make IE happy. "
		        Loop Until page.LenB >= 512
		        page = page + "-->"
		      End If
		      ErrorPages.Value(error) = page
		    Next
		  End If
		  Dim errpage As HTTP.Response = ""
		  errpage.StatusCode = ErrorNumber
		  errpage.MessageBody = ErrorPages.Value(ErrorNumber).StringValue
		  If RedirectLink <> "" Then
		    errpage.MessageBody = ReplaceAll(errpage.MessageBody, "%REDIR_LINK%", RedirectLink)
		    errpage.Header("Location") = RedirectLink
		  End If
		  errpage.Header("Content-Length") = Str(errpage.MessageBody.LenB)
		  errpage.Header("Content-Type") = "text/html"
		  Return errpage
		  
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function FindFile(RootDirectory As FolderItem, FilePath As String) As FolderItem
		  Dim out As FolderItem = RootDirectory
		  Dim rootpath As String = RootDirectory.AbsolutePath
		  
		  For i As Integer = 1 To CountFields(FilePath, "/")
		    Dim element As String = DecodeURLComponent(NthField(FilePath, "/", i))
		    If element = "" Then Continue
		    Select Case element.Trim
		    Case ".." ' up one
		      If out.Parent = Nil Then Return Nil ' cannot go up from the volume root
		      Dim pp As String = out.Parent.AbsolutePath
		      If Left(pp, rootpath.Len) <> rootpath Then Return Nil ' not contained within root
		      out = out.Parent
		    Case ".", "" ' current
		      out = out ' No-op
		    Case Else
		      out = out.Child(element)
		      If Not out.Exists Then Return Nil
		    End Select
		  Next
		  Return out
		  
		Exception
		  Return Nil
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function FormatBytes(bytes As UInt64, precision As Integer = 2) As String
		  'Converts raw byte counts into SI formatted strings. 1KB = 1024 bytes.
		  'Optionally pass an integer representing the number of decimal places to return. The default is two decimal places. You may specify
		  'between 0 and 16 decimal places. Specifying more than 16 will append extra zeros to make up the length. Passing 0
		  'shows no decimal places and no decimal point.
		  
		  Const kilo = 1024
		  Static mega As UInt64 = kilo * kilo
		  Static giga As UInt64 = kilo * mega
		  Static tera As UInt64 = kilo * giga
		  Static peta As UInt64 = kilo * tera
		  Static exab As UInt64 = kilo * peta
		  
		  Dim suffix, precisionZeros As String
		  Dim strBytes As Double
		  
		  
		  If bytes < kilo Then
		    strbytes = bytes
		    suffix = "bytes"
		  ElseIf bytes >= kilo And bytes < mega Then
		    strbytes = bytes / kilo
		    suffix = "KB"
		  ElseIf bytes >= mega And bytes < giga Then
		    strbytes = bytes / mega
		    suffix = "MB"
		  ElseIf bytes >= giga And bytes < tera Then
		    strbytes = bytes / giga
		    suffix = "GB"
		  ElseIf bytes >= tera And bytes < peta Then
		    strbytes = bytes / tera
		    suffix = "TB"
		  ElseIf bytes >= tera And bytes < exab Then
		    strbytes = bytes / peta
		    suffix = "PB"
		  ElseIf bytes >= exab Then
		    strbytes = bytes / exab
		    suffix = "EB"
		  End If
		  
		  
		  While precisionZeros.Len < precision
		    precisionZeros = precisionZeros + "0"
		  Wend
		  If precisionZeros.Trim <> "" Then precisionZeros = "." + precisionZeros
		  
		  Return Format(strBytes, "#,###0" + precisionZeros) + suffix
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function FormatSocketError(ErrorCode As Integer) As String
		  Dim err As String = "Socket error: "
		  Select Case ErrorCode
		  Case 102
		    err = err + "Disconnected."
		  Case 100
		    err = err + "Failed to create the socket."
		  Case 103
		    err = err + "The host name cannot be resolved."
		  Case 105
		    err = err + "The port number is already in use."
		  Case 106
		    err = err + "The socket is not ready for that command."
		  Case 107
		    err = err + "The port number is invalid or restricted."
		  Case 108
		    err = err + "Out of memory."
		  Else
		    err = err + "Unknown error: number " + Str(ErrorCode)
		  End Select
		  
		  Return err
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function IsRobotBlocked(robotstxt As String, UserAgent As String, Path As String, ByRef RetValue As Pair, DebugOutput As HTTP.DebugMessage) As Boolean
		  'Parses a robots.txt file and returns a Pair containing the UserAgent:Path in the robots.txt that matches the UserAgent and Path, if any.
		  'If not disallowed (i.e. allowed) then returns NIL.
		  
		  Const AllBots = "*"
		  robotstxt = ReplaceLineEndings(robotstxt, EndOfLine.Windows)
		  Dim records() As String = robotstxt.Split(EndOfLine.Windows + EndOfLine.Windows) 'Robots.txt is broken into records by CRLF+CRLF
		  
		  'First parse the raw robots.txt
		  For i As Integer = 0 To UBound(records)
		    Dim UA(), paths(), lines() As String
		    lines = Split(records(i), EndOfLine.Windows) 'Each record is broken into members by CRLF
		    For Each line As String In lines
		      
		      line = Left(line, line.Len - InStr(line, "#"))
		      If line.Trim = "" Or Left(line, 1) = "#" Then Continue 'comment lines are ignored
		      
		      Dim field, value As String
		      'Each member is broken into halves by a colon (:)
		      field = NthField(line, ":", 1).Trim
		      value = NthField(line, ":", 2).Trim
		      
		      Select Case field.Trim
		      Case "User-Agent"
		        UA.Append(value)
		        
		      Case "Disallow"
		        If value.Trim = "" Then Continue ' disallows nothing
		        paths.Append(value)
		        
		      Case "Sitemap", "Crawl-delay", "Allow"
		        Continue 'Sometimes used (not an error), but not interesting to us
		        
		      Else
		        If DebugOutput <> Nil Then DebugOutput.Invoke("Alert: This website does not have a valid robots.txt file (probably got an error page.)", -1)
		        Return False
		        
		      End Select
		    Next
		    
		    'Then check to see if we're blocked
		    For Each Agent As String In UA
		      If Agent = UserAgent Or Agent.Trim = AllBots Then
		        For Each URL As String In paths
		          If InStr(URL, AllBots) > 1 Then
		            Dim l, r As String
		            l = NthField(URL, AllBots, 1)
		            r = NthField(URL, AllBots, 2)
		            If Left(path, l.Len) = l And Right(path, r.Len) = r Then RetValue = Agent:URL 'We're blocked!
		          Else ' URL = NthField(URL, AllBots, 1) 'wildcard. we don't support complex patterns, just the *
		            If Left(path, URL.Len) = URL Then RetValue = Agent:URL 'We're blocked!
		          End If
		          If RetValue <> Nil Then Return True
		        Next
		      End If
		    Next
		  Next
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Method(Method As String) As RequestMethod
		  Select Case Method
		  Case "GET"
		    Return RequestMethod.GET
		  Case "HEAD"
		    Return RequestMethod.HEAD
		  Case "DELETE"
		    Return RequestMethod.DELETE
		  Case "POST"
		    Return RequestMethod.POST
		  Case "PUT"
		    Return RequestMethod.PUT
		  Case "TRACE"
		    Return RequestMethod.TRACE
		  Case "OPTIONS"
		    Return RequestMethod.OPTIONS
		  Case "PATCH"
		    Return RequestMethod.PATCH
		  Case "CONNECT"
		    Return RequestMethod.CONNECT
		  Else
		    Return RequestMethod.InvalidMethod
		  End Select
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function MimeType(File As FolderItem) As String
		  Return MimeType(NthField(File.Name, ".", CountFields(File.Name, ".")))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function MimeType(FileExtension As String) As String
		  Return MIMETypes.Lookup(FileExtension, "application/octet-stream")
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function SchemeToPort(Scheme As String) As Integer
		  Static mPorts As Dictionary
		  If mPorts = Nil Then
		    mPorts = New Dictionary( _
		    "http":80, _
		    "https":443, _
		    "ftp":21, _
		    "ssh":22, _
		    "telnet":23, _
		    "smtp":25, _
		    "smtps":25, _
		    "pop2":109, _
		    "pop3":110, _
		    "ident":113, _
		    "auth":113, _
		    "sftp":115, _
		    "nntp":119, _
		    "ntp":123, _
		    "irc":6667)
		  End If
		  
		  Return mPorts.Lookup(Scheme, -1)
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  Static MIME As Dictionary
			  If MIME = Nil Then
			    MIME = New Dictionary( _
			    "http":"message/http", _
			    "ez":"application/andrew-inset", _
			    "aw":"application/applixware", _
			    "atom":"application/atom+xml", _
			    "atomcat":"application/atomcat+xml", _
			    "atomsvc":"application/atomsvc+xml", _
			    "ccxml":"application/ccxml+xml", _
			    "cdmia":"application/cdmi-capability", _
			    "cdmic":"application/cdmi-container", _
			    "cdmid":"application/cdmi-domain", _
			    "cdmio":"application/cdmi-object", _
			    "cdmiq":"application/cdmi-queue", _
			    "cu":"application/cu-seeme", _
			    "davmount":"application/davmount+xml", _
			    "daa":"application/x-daa", _
			    "dssc":"application/dssc+der", _
			    "xdssc":"application/dssc+xml", _
			    "ecma":"application/ecmascript", _
			    "emma":"application/emma+xml", _
			    "epub":"application/epub+zip", _
			    "exi":"application/exi", _
			    "pfr":"application/font-tdpfr", _
			    "stk":"application/hyperstudio", _
			    "ipfix":"application/ipfix", _
			    "jar":"application/java-archive", _
			    "ser":"application/java-serialized-object", _
			    "class":"application/java-vm", _
			    "js":"application/javascript", _
			    "json":"application/json", _
			    "lostxml":"application/lost+xml", _
			    "hqx":"application/mac-binhex40", _
			    "cpt":"application/mac-compactpro", _
			    "mads":"application/mads+xml", _
			    "mrc":"application/marc", _
			    "mrcx":"application/marcxml+xml", _
			    "ma":"application/mathematica", _
			    "nb":"application/mathematica", _
			    "mb":"application/mathematica", _
			    "mathml":"application/mathml+xml", _
			    "mbox":"application/mbox", _
			    "mscml":"application/mediaservercontrol+xml", _
			    "meta4":"application/metalink4+xml", _
			    "mets":"application/mets+xml", _
			    "mods":"application/mods+xml", _
			    "m21":"application/mp21", _
			    "mp21":"application/mp21", _
			    "mp4s":"application/mp4", _
			    "doc":"application/msword", _
			    "dot":"application/msword", _
			    "mxf":"application/mxf", _
			    "asc":"application/pgp-signature", _
			    "sig":"application/pgp-signature", _
			    "prf":"application/pics-rules", _
			    "p10":"application/pkcs10", _
			    "p7m":"application/pkcs7-mime", _
			    "p7c":"application/pkcs7-mime", _
			    "p7s":"application/pkcs7-signature", _
			    "p8":"application/pkcs8", _
			    "ac":"application/pkix-attr-cert", _
			    "cer":"application/pkix-cert", _
			    "crl":"application/pkix-crl", _
			    "pkipath":"application/pkix-pkipath", _
			    "pki":"application/pkixcmp", _
			    "pls":"application/pls+xml", _
			    "ai":"application/postscript", _
			    "eps":"application/postscript", _
			    "ps":"application/postscript", _
			    "cww":"application/prs.cww", _
			    "pskcxml":"application/pskc+xml", _
			    "rdf":"application/rdf+xml", _
			    "rif":"application/reginfo+xml", _
			    "rnc":"application/relax-ng-compact-syntax", _
			    "rl":"application/resource-lists+xml", _
			    "rld":"application/resource-lists-diff+xml", _
			    "rs":"application/rls-services+xml", _
			    "rsd":"application/rsd+xml", _
			    "rss":"application/rss+xml", _
			    "rtf":"application/rtf", _
			    "sbml":"application/sbml+xml", _
			    "scq":"application/scvp-cv-request", _
			    "scs":"application/scvp-cv-response", _
			    "spq":"application/scvp-vp-request", _
			    "spp":"application/scvp-vp-response", _
			    "sdp":"application/sdp", _
			    "setpay":"application/set-payment-initiation", _
			    "setreg":"application/set-registration-initiation", _
			    "shf":"application/shf+xml", _
			    "smi":"application/smil+xml", _
			    "smil":"application/smil+xml", _
			    "rq":"application/sparql-query", _
			    "srx":"application/sparql-results+xml", _
			    "gram":"application/srgs", _
			    "grxml":"application/srgs+xml", _
			    "sru":"application/sru+xml", _
			    "ssml":"application/ssml+xml", _
			    "tei":"application/tei+xml", _
			    "teicorpus":"application/tei+xml", _
			    "tfi":"application/thraud+xml", _
			    "tsd":"application/timestamped-data", _
			    "plb":"application/vnd.3gpp.pic-bw-large", _
			    "psb":"application/vnd.3gpp.pic-bw-small", _
			    "pvb":"application/vnd.3gpp.pic-bw-var", _
			    "tcap":"application/vnd.3gpp2.tcap", _
			    "pwn":"application/vnd.3m.post-it-notes", _
			    "aso":"application/vnd.accpac.simply.aso", _
			    "imp":"application/vnd.accpac.simply.imp", _
			    "acu":"application/vnd.acucobol", _
			    "atc":"application/vnd.acucorp", _
			    "acutc":"application/vnd.acucorp", _
			    "air":"application/vnd.adobe.air-application-installer-package+zip", _
			    "fxp":"application/vnd.adobe.fxp", _
			    "fxpl":"application/vnd.adobe.fxp", _
			    "xdp":"application/vnd.adobe.xdp+xml", _
			    "xfdf":"application/vnd.adobe.xfdf", _
			    "ahead":"application/vnd.ahead.space", _
			    "azf":"application/vnd.airzip.filesecure.azf", _
			    "azs":"application/vnd.airzip.filesecure.azs", _
			    "azw":"application/vnd.amazon.ebook", _
			    "acc":"application/vnd.americandynamics.acc", _
			    "ami":"application/vnd.amiga.ami", _
			    "apk":"application/vnd.android.package-archive", _
			    "cii":"application/vnd.anser-web-certificate-issue-initiation", _
			    "fti":"application/vnd.anser-web-funds-transfer-initiation", _
			    "atx":"application/vnd.antix.game-component", _
			    "mpkg":"application/vnd.apple.installer+xml", _
			    "m3u8":"application/vnd.apple.mpegurl", _
			    "swi":"application/vnd.aristanetworks.swi", _
			    "aep":"application/vnd.audiograph", _
			    "mpm":"application/vnd.blueice.multipass", _
			    "bmi":"application/vnd.bmi", _
			    "rep":"application/vnd.businessobjects", _
			    "cdxml":"application/vnd.chemdraw+xml", _
			    "mmd":"application/vnd.chipnuts.karaoke-mmd", _
			    "cdy":"application/vnd.cinderella", _
			    "cla":"application/vnd.claymore", _
			    "rp9":"application/vnd.cloanto.rp9", _
			    "c4g":"application/vnd.clonk.c4group", _
			    "c4d":"application/vnd.clonk.c4group", _
			    "c4f":"application/vnd.clonk.c4group", _
			    "c4p":"application/vnd.clonk.c4group", _
			    "c4u":"application/vnd.clonk.c4group", _
			    "c11amc":"application/vnd.cluetrust.cartomobile-config", _
			    "c11amz":"application/vnd.cluetrust.cartomobile-config-pkg", _
			    "csp":"application/vnd.commonspace", _
			    "cdbcmsg":"application/vnd.contact.cmsg", _
			    "cmc":"application/vnd.cosmocaller", _
			    "clkx":"application/vnd.crick.clicker", _
			    "clkk":"application/vnd.crick.clicker.keyboard", _
			    "clkp":"application/vnd.crick.clicker.palette", _
			    "clkt":"application/vnd.crick.clicker.template", _
			    "clkw":"application/vnd.crick.clicker.wordbank", _
			    "wbs":"application/vnd.criticaltools.wbs+xml", _
			    "pml":"application/vnd.ctc-posml", _
			    "ppd":"application/vnd.cups-ppd", _
			    "car":"application/vnd.curl.car", _
			    "pcurl":"application/vnd.curl.pcurl", _
			    "rdz":"application/vnd.data-vision.rdz", _
			    "uvf":"application/vnd.dece.data", _
			    "uvvf":"application/vnd.dece.data", _
			    "uvd":"application/vnd.dece.data", _
			    "uvvd":"application/vnd.dece.data", _
			    "uvt":"application/vnd.dece.ttml+xml", _
			    "uvvt":"application/vnd.dece.ttml+xml", _
			    "uvx":"application/vnd.dece.unspecified", _
			    "uvvx":"application/vnd.dece.unspecified", _
			    "fe_launch":"application/vnd.denovo.fcselayout-link", _
			    "dna":"application/vnd.dna", _
			    "mlp":"application/vnd.dolby.mlp", _
			    "dpg":"application/vnd.dpgraph", _
			    "dfac":"application/vnd.dreamfactory", _
			    "ait":"application/vnd.dvb.ait", _
			    "svc":"application/vnd.dvb.service", _
			    "geo":"application/vnd.dynageo", _
			    "mag":"application/vnd.ecowin.chart", _
			    "nml":"application/vnd.enliven", _
			    "esf":"application/vnd.epson.esf", _
			    "msf":"application/vnd.epson.msf", _
			    "qam":"application/vnd.epson.quickanime", _
			    "slt":"application/vnd.epson.salt", _
			    "ssf":"application/vnd.epson.ssf", _
			    "es3":"application/vnd.eszigno3+xml", _
			    "et3":"application/vnd.eszigno3+xml", _
			    "ez2":"application/vnd.ezpix-album", _
			    "ez3":"application/vnd.ezpix-package", _
			    "fdf":"application/vnd.fdf", _
			    "mseed":"application/vnd.fdsn.mseed", _
			    "seed":"application/vnd.fdsn.seed", _
			    "dataless":"application/vnd.fdsn.seed", _
			    "gph":"application/vnd.flographit", _
			    "ftc":"application/vnd.fluxtime.clip", _
			    "fm":"application/vnd.framemaker", _
			    "frame":"application/vnd.framemaker", _
			    "maker":"application/vnd.framemaker", _
			    "book":"application/vnd.framemaker", _
			    "fnc":"application/vnd.frogans.fnc", _
			    "ltf":"application/vnd.frogans.ltf", _
			    "fsc":"application/vnd.fsc.weblaunch", _
			    "oas":"application/vnd.fujitsu.oasys", _
			    "oa2":"application/vnd.fujitsu.oasys2", _
			    "oa3":"application/vnd.fujitsu.oasys3", _
			    "fg5":"application/vnd.fujitsu.oasysgp", _
			    "bh2":"application/vnd.fujitsu.oasysprs", _
			    "ddd":"application/vnd.fujixerox.ddd", _
			    "xdw":"application/vnd.fujixerox.docuworks", _
			    "xbd":"application/vnd.fujixerox.docuworks.binder", _
			    "fzs":"application/vnd.fuzzysheet", _
			    "txd":"application/vnd.genomatix.tuxedo", _
			    "ggb":"application/vnd.geogebra.file", _
			    "ggt":"application/vnd.geogebra.tool", _
			    "gex":"application/vnd.geometry-explorer", _
			    "gre":"application/vnd.geometry-explorer", _
			    "gxt":"application/vnd.geonext", _
			    "g2w":"application/vnd.geoplan", _
			    "g3w":"application/vnd.geospace", _
			    "gmx":"application/vnd.gmx", _
			    "kml":"application/vnd.google-earth.kml+xml", _
			    "kmz":"application/vnd.google-earth.kmz", _
			    "gqf":"application/vnd.grafeq", _
			    "gqs":"application/vnd.grafeq", _
			    "gac":"application/vnd.groove-account", _
			    "ghf":"application/vnd.groove-help", _
			    "gim":"application/vnd.groove-identity-message", _
			    "grv":"application/vnd.groove-injector", _
			    "gtm":"application/vnd.groove-tool-message", _
			    "tpl":"application/vnd.groove-tool-template", _
			    "vcg":"application/vnd.groove-vcard", _
			    "hal":"application/vnd.hal+xml", _
			    "zmm":"application/vnd.handheld-entertainment+xml", _
			    "hbci":"application/vnd.hbci", _
			    "les":"application/vnd.hhe.lesson-player", _
			    "hpgl":"application/vnd.hp-hpgl", _
			    "hpid":"application/vnd.hp-hpid", _
			    "hps":"application/vnd.hp-hps", _
			    "jlt":"application/vnd.hp-jlyt", _
			    "pcl":"application/vnd.hp-pcl", _
			    "pclxl":"application/vnd.hp-pclxl", _
			    "sfd-hdstx":"application/vnd.hydrostatix.sof-data", _
			    "x3d":"application/vnd.hzn-3d-crossword", _
			    "mpy":"application/vnd.ibm.minipay", _
			    "afp":"application/vnd.ibm.modcap", _
			    "listafp":"application/vnd.ibm.modcap", _
			    "list3820":"application/vnd.ibm.modcap", _
			    "irm":"application/vnd.ibm.rights-management", _
			    "sc":"application/vnd.ibm.secure-container", _
			    "icc":"application/vnd.iccprofile", _
			    "icm":"application/vnd.iccprofile", _
			    "igl":"application/vnd.igloader", _
			    "ivp":"application/vnd.immervision-ivp", _
			    "ivu":"application/vnd.immervision-ivu", _
			    "igm":"application/vnd.insors.igm", _
			    "xpw":"application/vnd.intercon.formnet", _
			    "xpx":"application/vnd.intercon.formnet", _
			    "i2g":"application/vnd.intergeo", _
			    "qbo":"application/vnd.intu.qbo", _
			    "qfx":"application/vnd.intu.qfx", _
			    "rcprofile":"application/vnd.ipunplugged.rcprofile", _
			    "irp":"application/vnd.irepository.package+xml", _
			    "xpr":"application/vnd.is-xpr", _
			    "fcs":"application/vnd.isac.fcs", _
			    "jam":"application/vnd.jam", _
			    "rms":"application/vnd.jcp.javame.midlet-rms", _
			    "jisp":"application/vnd.jisp", _
			    "joda":"application/vnd.joost.joda-archive", _
			    "ktz":"application/vnd.kahootz", _
			    "ktr":"application/vnd.kahootz", _
			    "karbon":"application/vnd.kde.karbon", _
			    "chrt":"application/vnd.kde.kchart", _
			    "kfo":"application/vnd.kde.kformula", _
			    "flw":"application/vnd.kde.kivio", _
			    "kon":"application/vnd.kde.kontour", _
			    "kpr":"application/vnd.kde.kpresenter", _
			    "ksp":"application/vnd.kde.kspread", _
			    "kwd":"application/vnd.kde.kword", _
			    "htke":"application/vnd.kenameaapp", _
			    "kia":"application/vnd.kidspiration", _
			    "kne":"application/vnd.kinar", _
			    "skp":"application/vnd.koan", _
			    "sse":"application/vnd.kodak-descriptor", _
			    "lasxml":"application/vnd.las.las+xml", _
			    "lbd":"application/vnd.llamagraphics.life-balance.desktop", _
			    "lbe":"application/vnd.llamagraphics.life-balance.exchange+xml", _
			    "123":"application/vnd.lotus-1-2-3", _
			    "apr":"application/vnd.lotus-approach", _
			    "pre":"application/vnd.lotus-freelance", _
			    "nsf":"application/vnd.lotus-notes", _
			    "org":"application/vnd.lotus-organizer", _
			    "scm":"application/vnd.lotus-screencam", _
			    "lwp":"application/vnd.lotus-wordpro", _
			    "portpkg":"application/vnd.macports.portpkg", _
			    "mcd":"application/vnd.mcd", _
			    "mc1":"application/vnd.medcalcdata", _
			    "cdkey":"application/vnd.mediastation.cdkey", _
			    "mwf":"application/vnd.mfer", _
			    "mfm":"application/vnd.mfmp", _
			    "flo":"application/vnd.micrografx.flo", _
			    "igx":"application/vnd.micrografx.igx", _
			    "mif":"application/vnd.mif", _
			    "daf":"application/vnd.mobius.daf", _
			    "dis":"application/vnd.mobius.dis", _
			    "mbk":"application/vnd.mobius.mbk", _
			    "mqy":"application/vnd.mobius.mqy", _
			    "msl":"application/vnd.mobius.msl", _
			    "plc":"application/vnd.mobius.plc", _
			    "txf":"application/vnd.mobius.txf", _
			    "mpn":"application/vnd.mophun.application", _
			    "mpc":"application/vnd.mophun.certificate", _
			    "xul":"application/vnd.mozilla.xul+xml", _
			    "cil":"application/vnd.ms-artgalry", _
			    "cab":"application/vnd.ms-cab-compressed", _
			    "xls":"application/vnd.ms-excel", _
			    "xlm":"application/vnd.ms-excel", _
			    "xla":"application/vnd.ms-excel", _
			    "xlc":"application/vnd.ms-excel", _
			    "xlt":"application/vnd.ms-excel", _
			    "xlw":"application/vnd.ms-excel", _
			    "xlam":"application/vnd.ms-excel.addin.macroenabled.12", _
			    "xlsb":"application/vnd.ms-excel.sheet.binary.macroenabled.12", _
			    "xlsm":"application/vnd.ms-excel.sheet.macroenabled.12", _
			    "xltm":"application/vnd.ms-excel.template.macroenabled.12", _
			    "eot":"application/vnd.ms-fontobject", _
			    "chm":"application/vnd.ms-htmlhelp", _
			    "ims":"application/vnd.ms-ims", _
			    "lrm":"application/vnd.ms-lrm", _
			    "thmx":"application/vnd.ms-officetheme", _
			    "cat":"application/vnd.ms-pki.seccat", _
			    "stl":"application/vnd.ms-pki.stl", _
			    "ppt":"application/vnd.ms-powerpoint", _
			    "pps":"application/vnd.ms-powerpoint", _
			    "ppam":"application/vnd.ms-powerpoint.addin.macroenabled.12", _
			    "pptm":"application/vnd.ms-powerpoint.presentation.macroenabled.12", _
			    "sldm":"application/vnd.ms-powerpoint.slide.macroenabled.12", _
			    "ppsm":"application/vnd.ms-powerpoint.slideshow.macroenabled.12", _
			    "potm":"application/vnd.ms-powerpoint.template.macroenabled.12", _
			    "mpp":"application/vnd.ms-project", _
			    "mpt":"application/vnd.ms-project", _
			    "docm":"application/vnd.ms-word.document.macroenabled.12", _
			    "dotm":"application/vnd.ms-word.template.macroenabled.12", _
			    "wps":"application/vnd.ms-works", _
			    "wks":"application/vnd.ms-works", _
			    "wcm":"application/vnd.ms-works", _
			    "wdb":"application/vnd.ms-works", _
			    "wpl":"application/vnd.ms-wpl", _
			    "xps":"application/vnd.ms-xpsdocument", _
			    "mseq":"application/vnd.mseq", _
			    "mus":"application/vnd.musician", _
			    "msty":"application/vnd.muvee.style", _
			    "nlu":"application/vnd.neurolanguage.nlu", _
			    "nnd":"application/vnd.noblenet-directory", _
			    "nns":"application/vnd.noblenet-sealer", _
			    "nnw":"application/vnd.noblenet-web", _
			    "ngdat":"application/vnd.nokia.n-gage.data", _
			    "n-gage":"application/vnd.nokia.n-gage.symbian.install", _
			    "rpst":"application/vnd.nokia.radio-preset", _
			    "rpss":"application/vnd.nokia.radio-presets", _
			    "edm":"application/vnd.novadigm.edm", _
			    "edx":"application/vnd.novadigm.edx", _
			    "ext":"application/vnd.novadigm.ext", _
			    "odc":"application/vnd.oasis.opendocument.chart", _
			    "otc":"application/vnd.oasis.opendocument.chart-template", _
			    "odb":"application/vnd.oasis.opendocument.database", _
			    "odf":"application/vnd.oasis.opendocument.formula", _
			    "odft":"application/vnd.oasis.opendocument.formula-template", _
			    "odg":"application/vnd.oasis.opendocument.graphics", _
			    "otg":"application/vnd.oasis.opendocument.graphics-template", _
			    "odi":"application/vnd.oasis.opendocument.image", _
			    "oti":"application/vnd.oasis.opendocument.image-template", _
			    "odp":"application/vnd.oasis.opendocument.presentation", _
			    "otp":"application/vnd.oasis.opendocument.presentation-template", _
			    "ods":"application/vnd.oasis.opendocument.spreadsheet", _
			    "ots":"application/vnd.oasis.opendocument.spreadsheet-template", _
			    "odt":"application/vnd.oasis.opendocument.text", _
			    "odm":"application/vnd.oasis.opendocument.text-master", _
			    "ott":"application/vnd.oasis.opendocument.text-template", _
			    "oth":"application/vnd.oasis.opendocument.text-web", _
			    "xo":"application/vnd.olpc-sugar", _
			    "dd2":"application/vnd.oma.dd2+xml", _
			    "oxt":"application/vnd.openofficeorg.extension", _
			    "pptx":"application/vnd.openxmlformats-officedocument.presentationml.presentation", _
			    "sldx":"application/vnd.openxmlformats-officedocument.presentationml.slide", _
			    "ppsx":"application/vnd.openxmlformats-officedocument.presentationml.slideshow", _
			    "potx":"application/vnd.openxmlformats-officedocument.presentationml.template", _
			    "xlsx":"application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", _
			    "xltx":"application/vnd.openxmlformats-officedocument.spreadsheetml.template", _
			    "docx":"application/vnd.openxmlformats-officedocument.wordprocessingml.document", _
			    "dotx":"application/vnd.openxmlformats-officedocument.wordprocessingml.template", _
			    "mgp":"application/vnd.osgeo.mapguide.package", _
			    "dp":"application/vnd.osgi.dp", _
			    "pdb":"application/vnd.palm", _
			    "paw":"application/vnd.pawaafile", _
			    "str":"application/vnd.pg.format", _
			    "ei6":"application/vnd.pg.osasli", _
			    "efif":"application/vnd.picsel", _
			    "wg":"application/vnd.pmi.widget", _
			    "plf":"application/vnd.pocketlearn", _
			    "pbd":"application/vnd.powerbuilder6", _
			    "box":"application/vnd.previewsystems.box", _
			    "mgz":"application/vnd.proteus.magazine", _
			    "qps":"application/vnd.publishare-delta-tree", _
			    "ptid":"application/vnd.pvi.ptid1", _
			    "qxd":"application/vnd.quark.quarkxpress", _
			    "bed":"application/vnd.realvnc.bed", _
			    "mxl":"application/vnd.recordare.musicxml", _
			    "musicxml":"application/vnd.recordare.musicxml+xml", _
			    "cryptonote":"application/vnd.rig.cryptonote", _
			    "cod":"application/vnd.rim.cod", _
			    "rm":"application/vnd.rn-realmedia", _
			    "link66":"application/vnd.route66.link66+xml", _
			    "st":"application/vnd.sailingtracker.track", _
			    "see":"application/vnd.seemail", _
			    "sema":"application/vnd.sema", _
			    "semd":"application/vnd.semd", _
			    "semf":"application/vnd.semf", _
			    "ifm":"application/vnd.shana.informed.formdata", _
			    "itp":"application/vnd.shana.informed.formtemplate", _
			    "iif":"application/vnd.shana.informed.interchange", _
			    "ipk":"application/vnd.shana.informed.package", _
			    "twd":"application/vnd.simtech-mindmapper", _
			    "mmf":"application/vnd.smaf", _
			    "teacher":"application/vnd.smart.teacher", _
			    "sdkm":"application/vnd.solent.sdkm+xml", _
			    "dxp":"application/vnd.spotfire.dxp", _
			    "sfs":"application/vnd.spotfire.sfs", _
			    "sdc":"application/vnd.stardivision.calc", _
			    "sda":"application/vnd.stardivision.draw", _
			    "sdd":"application/vnd.stardivision.impress", _
			    "smf":"application/vnd.stardivision.math", _
			    "sdw":"application/vnd.stardivision.writer", _
			    "sgl":"application/vnd.stardivision.writer-global", _
			    "sm":"application/vnd.stepmania.stepchart", _
			    "sxc":"application/vnd.sun.xml.calc", _
			    "stc":"application/vnd.sun.xml.calc.template", _
			    "sxd":"application/vnd.sun.xml.draw", _
			    "std":"application/vnd.sun.xml.draw.template", _
			    "sxi":"application/vnd.sun.xml.impress", _
			    "sti":"application/vnd.sun.xml.impress.template", _
			    "sxm":"application/vnd.sun.xml.math", _
			    "sxw":"application/vnd.sun.xml.writer", _
			    "sxg":"application/vnd.sun.xml.writer.global", _
			    "stw":"application/vnd.sun.xml.writer.template", _
			    "sus":"application/vnd.sus-calendar", _
			    "svd":"application/vnd.svd", _
			    "sis":"application/vnd.symbian.install", _
			    "xsm":"application/vnd.syncml+xml", _
			    "bdm":"application/vnd.syncml.dm+wbxml", _
			    "xdm":"application/vnd.syncml.dm+xml", _
			    "tao":"application/vnd.tao.intent-module-archive", _
			    "tmo":"application/vnd.tmobile-livetv", _
			    "tpt":"application/vnd.trid.tpt", _
			    "mxs":"application/vnd.triscape.mxs", _
			    "tra":"application/vnd.trueapp", _
			    "ufd":"application/vnd.ufdl", _
			    "utz":"application/vnd.uiq.theme", _
			    "umj":"application/vnd.umajin", _
			    "unityweb":"application/vnd.unity", _
			    "uoml":"application/vnd.uoml+xml", _
			    "vcx":"application/vnd.vcx", _
			    "vsd":"application/vnd.visio", _
			    "vis":"application/vnd.visionary", _
			    "vsf":"application/vnd.vsf", _
			    "wbxml":"application/vnd.wap.wbxml", _
			    "wmlc":"application/vnd.wap.wmlc", _
			    "wmlsc":"application/vnd.wap.wmlscriptc", _
			    "wtb":"application/vnd.webturbo", _
			    "nbp":"application/vnd.wolfram.player", _
			    "wpd":"application/vnd.wordperfect", _
			    "wqd":"application/vnd.wqd", _
			    "stf":"application/vnd.wt.stf", _
			    "xar":"application/vnd.xara", _
			    "xfdl":"application/vnd.xfdl", _
			    "hvd":"application/vnd.yamaha.hv-dic", _
			    "hvs":"application/vnd.yamaha.hv-script", _
			    "hvp":"application/vnd.yamaha.hv-voice", _
			    "osf":"application/vnd.yamaha.openscoreformat", _
			    "osfpvg":"application/vnd.yamaha.openscoreformat.osfpvg+xml", _
			    "saf":"application/vnd.yamaha.smaf-audio", _
			    "spf":"application/vnd.yamaha.smaf-phrase", _
			    "cmp":"application/vnd.yellowriver-custom-menu", _
			    "zir":"application/vnd.zul", _
			    "zaz":"application/vnd.zzazz.deck+xml", _
			    "vxml":"application/voicexml+xml", _
			    "wgt":"application/widget", _
			    "hlp":"application/winhlp", _
			    "wsdl":"application/wsdl+xml", _
			    "wspolicy":"application/wspolicy+xml", _
			    "7z":"application/x-7z-compressed", _
			    "abw":"application/x-abiword", _
			    "ace":"application/x-ace-compressed", _
			    "aab":"application/x-authorware-bin", _
			    "aam":"application/x-authorware-map", _
			    "aas":"application/x-authorware-seg", _
			    "bcpio":"application/x-bcpio", _
			    "torrent":"application/x-bittorrent", _
			    "bz":"application/x-bzip", _
			    "bz2":"application/x-bzip2", _
			    "vcd":"application/x-cdlink", _
			    "chat":"application/x-chat", _
			    "pgn":"application/x-chess-pgn", _
			    "cpio":"application/x-cpio", _
			    "csh":"application/x-csh", _
			    "deb":"application/x-debian-package", _
			    "dir":"application/x-director", _
			    "wad":"application/x-doom", _
			    "ncx":"application/x-dtbncx+xml", _
			    "dtb":"application/x-dtbook+xml", _
			    "res":"application/x-dtbresource+xml", _
			    "dvi":"application/x-dvi", _
			    "bdf":"application/x-font-bdf", _
			    "gsf":"application/x-font-ghostscript", _
			    "psf":"application/x-font-linux-psf", _
			    "otf":"application/x-font-otf", _
			    "pcf":"application/x-font-pcf", _
			    "snf":"application/x-font-snf", _
			    "ttf":"application/x-font-ttf", _
			    "pfa":"application/x-font-type1", _
			    "woff":"application/x-font-woff", _
			    "spl":"application/x-futuresplash", _
			    "gnumeric":"application/x-gnumeric", _
			    "gtar":"application/x-gtar", _
			    "hdf":"application/x-hdf", _
			    "jnlp":"application/x-java-jnlp-file", _
			    "latex":"application/x-latex", _
			    "prc":"application/x-mobipocket-ebook", _
			    "mobi":"application/x-mobipocket-ebook", _
			    "m3u8":"application/x-mpegurl", _
			    "application":"application/x-ms-application", _
			    "wmd":"application/x-ms-wmd", _
			    "wmz":"application/x-ms-wmz", _
			    "xbap":"application/x-ms-xbap", _
			    "mdb":"application/x-msaccess", _
			    "obd":"application/x-msbinder", _
			    "crd":"application/x-mscardfile", _
			    "clp":"application/x-msclip", _
			    "exe":"application/x-msdownload", _
			    "dll":"application/x-msdownload", _
			    "com":"application/x-msdownload", _
			    "bat":"application/x-msdownload", _
			    "msi":"application/x-msdownload", _
			    "mvb":"application/x-msmediaview", _
			    "wmf":"application/x-msmetafile", _
			    "mny":"application/x-msmoney", _
			    "pub":"application/x-mspublisher", _
			    "scd":"application/x-msschedule", _
			    "trm":"application/x-msterminal", _
			    "wri":"application/x-mswrite", _
			    "nc":"application/x-netcdf", _
			    "p12":"application/x-pkcs12", _
			    "p7b":"application/x-pkcs7-certificates", _
			    "p7r":"application/x-pkcs7-certreqresp", _
			    "rar":"application/x-rar-compressed", _
			    "sh":"application/x-sh", _
			    "shar":"application/x-shar", _
			    "swf":"application/x-shockwave-flash", _
			    "xap":"application/x-silverlight-app", _
			    "sit":"application/x-stuffit", _
			    "sitx":"application/x-stuffitx", _
			    "sv4cpio":"application/x-sv4cpio", _
			    "sv4crc":"application/x-sv4crc", _
			    "tar":"application/x-tar", _
			    "tcl":"application/x-tcl", _
			    "tex":"application/x-tex", _
			    "tfm":"application/x-tex-tfm", _
			    "texi":"application/x-texinfo", _
			    "texinfo":"application/x-texinfo", _
			    "ustar":"application/x-ustar", _
			    "src":"application/x-wais-source", _
			    "crt":"application/x-x509-ca-cert", _
			    "der":"application/x-x509-ca-cert", _
			    "fig":"application/x-xfig", _
			    "xpi":"application/x-xpinstall", _
			    "xdf":"application/xcap-diff+xml", _
			    "xenc":"application/xenc+xml", _
			    "xht":"application/xhtml+xml", _
			    "xhtml":"application/xhtml+xml", _
			    "xsl":"application/xml", _
			    "xml":"application/xml", _
			    "dtd":"application/xml-dtd", _
			    "xop":"application/xop+xml", _
			    "xslt":"application/xslt+xml", _
			    "xspf":"application/xspf+xml", _
			    "mxml":"application/xv+xml", _
			    "yang":"application/yang", _
			    "yin":"application/yin+xml", _
			    "zip":"application/zip", _
			    "adp":"audio/adpcm", _
			    "snd":"audio/basic", _
			    "au":"audio/basic", _
			    "midi":"audio/midi", _
			    "mid":"audio/midi", _
			    "mp4a":"audio/mp4", _
			    "m4p":"audio/mp4a-latm", _
			    "m4a":"audio/mp4a-latm", _
			    "mpga":"audio/mpeg", _
			    "mp2":"audio/mpeg", _
			    "mp2a":"audio/mpeg", _
			    "mp3":"audio/mpeg", _
			    "m2a":"audio/mpeg", _
			    "m3a":"audio/mpeg", _
			    "oga":"audio/ogg", _
			    "ogg":"audio/ogg", _
			    "spx":"audio/ogg", _
			    "weba":"audio/webm", _
			    "aac":"audio/x-aac", _
			    "aif":"audio/x-aiff", _
			    "aiff":"audio/x-aiff", _
			    "aifc":"audio/x-aiff", _
			    "m3u":"audio/x-mpegurl", _
			    "wax":"audio/x-ms-wax", _
			    "wma":"audio/x-ms-wma", _
			    "ram":"audio/x-pn-realaudio", _
			    "ra":"audio/x-pn-realaudio", _
			    "rmp":"audio/x-pn-realaudio-plugin", _
			    "wav":"audio/x-wav", _
			    "cdx":"chemical/x-cdx", _
			    "cif":"chemical/x-cif", _
			    "cmdf":"chemical/x-cmdf", _
			    "cml":"chemical/x-cml", _
			    "csml":"chemical/x-csml", _
			    "xyz":"chemical/x-xyz", _
			    "bmp":"image/bmp", _
			    "cgm":"image/cgm", _
			    "g3":"image/g3fax", _
			    "gif":"image/gif", _
			    "ief":"image/ief", _
			    "jp2":"image/jp2", _
			    "jpeg":"image/jpeg", _
			    "jpg":"image/jpeg", _
			    "jpe":"image/jpeg", _
			    "ktx":"image/ktx", _
			    "pict":"image/pict", _
			    "pic":"image/pict", _
			    "pct":"image/pict", _
			    "png":"image/png", _
			    "btif":"image/prs.btif", _
			    "svg":"image/svg+xml", _
			    "tiff":"image/tiff", _
			    "tiff":"image/tiff", _
			    "psd":"image/vnd.adobe.photoshop", _
			    "uvi":"image/vnd.dece.graphic", _
			    "sub":"image/vnd.dvb.subtitle", _
			    "djvu":"image/vnd.djvu", _
			    "dwg":"image/vnd.dwg", _
			    "dxf":"image/vnd.dxf", _
			    "fbs":"image/vnd.fastbidsheet", _
			    "fpx":"image/vnd.fpx", _
			    "fst":"image/vnd.fst", _
			    "mmr":"image/vnd.fujixerox.edmics-mmr", _
			    "rlc":"image/vnd.fujixerox.edmics-rlc", _
			    "mdi":"image/vnd.ms-modi", _
			    "npx":"image/vnd.net-fpx", _
			    "wbmp":"image/vnd.wap.wbmp", _
			    "xif":"image/vnd.xiff", _
			    "webp":"image/webp", _
			    "ras":"image/x-cmu-raster", _
			    "cmx":"image/x-cmx", _
			    "fh":"image/x-freehand", _
			    "ico":"image/x-icon", _
			    "pntg":"image/x-macpaint", _
			    "pnt":"image/x-macpaint", _
			    "mac":"image/x-macpaint", _
			    "pcx":"image/x-pcx", _
			    "pdf":"application/pdf", _
			    "pnm":"image/x-portable-anymap", _
			    "pbm":"image/x-portable-bitmap", _
			    "pgm":"image/x-portable-graymap", _
			    "ppm":"image/x-portable-pixmap", _
			    "qti":"image/x-quicktime", _
			    "qtif":"image/x-quicktime", _
			    "rgb":"image/x-rgb", _
			    "xbm":"image/x-xbitmap", _
			    "xpm":"image/x-xpixmap", _
			    "xwd":"image/x-xwindowdump", _
			    "mime":"message/rfc822", _
			    "eml":"message/rfc822", _
			    "igs":"model/iges", _
			    "msh":"model/mesh", _
			    "dae":"model/vnd.collada+xml", _
			    "dwf":"model/vnd.dwf", _
			    "gdl":"model/vnd.gdl", _
			    "gtw":"model/vnd.gtw", _
			    "mts":"model/vnd.mts", _
			    "vtu":"model/vnd.vtu", _
			    "vrml":"model/vrml", _
			    "manifest":"text/cache-manifest", _
			    "ics":"text/calendar", _
			    "css":"text/css", _
			    "csv":"text/csv", _
			    "html":"text/html", _
			    "htm":"text/html", _
			    "bs":"text/html", _
			    "n3":"text/n3", _
			    "txt":"text/plain", _
			    "text":"text/plain", _
			    "conf":"text/plain", _
			    "def":"text/plain", _
			    "list":"text/plain", _
			    "log":"text/plain", _
			    "in":"text/plain", _
			    "md":"text/plain", _
			    "dsc":"text/prs.lines.tag", _
			    "rtx":"text/richtext", _
			    "sgml":"text/sgml", _
			    "tsv":"text/tab-separated-values", _
			    "t":"text/troff", _
			    "tr":"text/troff", _
			    "roff":"text/troff", _
			    "ttl":"text/turtle", _
			    "uri":"text/uri-list", _
			    "uris":"text/uri-list", _
			    "urls":"text/uri-list", _
			    "curl":"text/vnd.curl", _
			    "dcurl":"text/vnd.curl.dcurl", _
			    "scurl":"text/vnd.curl.scurl", _
			    "mcurl":"text/vnd.curl.mcurl", _
			    "fly":"text/vnd.fly", _
			    "flx":"text/vnd.fmi.flexstor", _
			    "gv":"text/vnd.graphviz", _
			    "3dml":"text/vnd.in3d.3dml", _
			    "spot":"text/vnd.in3d.spot", _
			    "jad":"text/vnd.sun.j2me.app-descriptor", _
			    "wml":"text/vnd.wap.wml", _
			    "wmls":"text/vnd.wap.wmlscript", _
			    "asm":"text/x-asm", _
			    "c":"text/x-c", _
			    "cc":"text/x-c", _
			    "cxx":"text/x-c", _
			    "cpp":"text/x-c", _
			    "h":"text/x-c", _
			    "pas":"text/x-pascal", _
			    "java":"text/x-java-source", _
			    "etx":"text/x-setext", _
			    "uu":"text/x-uuencode", _
			    "vcs":"text/x-vcalendar", _
			    "vcf":"text/x-vcard", _
			    "3gp":"video/3gpp", _
			    "3g2":"video/3gpp2", _
			    "h261":"video/h261", _
			    "h263":"video/h263", _
			    "h264":"video/h264", _
			    "jpgv":"video/jpeg", _
			    "jpm":"video/jpm", _
			    "mj2":"video/mj2", _
			    "ts":"video/mp2t", _
			    "mp4":"video/mp4", _
			    "mp4v":"video/mp4", _
			    "mpg4":"video/mp4", _
			    "m4v":"video/mp4", _
			    "mpeg":"video/mpeg", _
			    "mpg":"video/mpeg", _
			    "mpe":"video/mpeg", _
			    "m1v":"video/mpeg", _
			    "m2v":"video/mpeg", _
			    "ogv":"video/ogg", _
			    "mov":"video/quicktime", _
			    "qt":"video/quicktime", _
			    "uvh":"video/vnd.dece.hd", _
			    "uvm":"video/vnd.dece.mobile", _
			    "uvp":"video/vnd.dece.pd", _
			    "uvs":"video/vnd.dece.sd", _
			    "uvv":"video/vnd.dece.video", _
			    "fvt":"video/vnd.fvt", _
			    "mxu":"video/vnd.mpegurl", _
			    "pyv":"video/vnd.ms-playready.media.pyv", _
			    "uvu":"video/vnd.uvvu.mp4", _
			    "viv":"video/vnd.vivo", _
			    "dif":"video/x-dv", _
			    "dv":"video/x-dv", _
			    "webm":"video/webm", _
			    "f4v":"video/x-f4v", _
			    "fli":"video/x-fli", _
			    "flv":"video/x-flv", _
			    "m4v":"video/x-m4v", _
			    "rbp":"application/x-REALbasic-Project", _
			    "rbbas":"application/x-REALbasic-Project", _
			    "rbvcp":"application/x-REALbasic-Project", _
			    "rbo":"application/x-REALbasic-Project", _
			    "asx":"video/x-ms-asf", _
			    "asf":"video/x-ms-asf", _
			    "wm":"video/x-ms-wm", _
			    "wmv":"video/x-ms-wmv", _
			    "wmx":"video/x-ms-wmx", _
			    "wvx":"video/x-ms-wvx", _
			    "avi":"video/x-msvideo", _
			    "movie":"video/x-sgi-movie", _
			    "ice":"x-conference/x-cooltalk")
			  End If
			  Return MIME
			End Get
		#tag EndGetter
		Protected MIMETypes As Dictionary
	#tag EndComputedProperty


	#tag Constant, Name = BlankErrorPage, Type = String, Dynamic = False, Default = \"<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r<html xmlns\x3D\"http://www.w3.org/1999/xhtml\">\r<head>\r<meta http-equiv\x3D\"Content-Type\" content\x3D\"text/html; charset\x3Diso-8859-1\" />\r<title>%HTTPERROR%</title>\r<style type\x3D\"text/css\">\r<!--\ra:link {\r\tcolor: #0000FF;\r\ttext-decoration: none;\r}\ra:visited {\r\ttext-decoration: none;\r\tcolor: #990000;\r}\ra:hover {\r\ttext-decoration: underline;\r\tcolor: #009966;\r}\ra:active {\r\ttext-decoration: none;\r\tcolor: #FF0000;\r}\r-->\r</style></head>\r\r<body>\r<h1>%HTTPERROR%</h1>\r<p>%DOCUMENT%</p>\r<hr />\r<p>%SIGNATURE%</p>\r</body>\r</html>", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = DaemonVersion, Type = String, Dynamic = False, Default = \"BoredomServe/1.0", Scope = Protected
		#Tag Instance, Platform = Mac OS, Language = Default, Definition  = \"BoredomServe/1.0 (Mac OS X)"
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"BoredomServe/1.0 (Win32)"
		#Tag Instance, Platform = Linux, Language = Default, Definition  = \"BoredomServe/1.0 (GNU/Linux)"
	#tag EndConstant


	#tag Enum, Name = ConnectionTypes, Flags = &h0
		SSLv3
		  TLSv1
		Insecure
	#tag EndEnum

	#tag Enum, Name = RequestMethod, Flags = &h0
		GET
		  HEAD
		  POST
		  PUT
		  DELETE
		  TRACE
		  OPTIONS
		  PATCH
		  CONNECT
		InvalidMethod
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			InheritedFrom="Object"
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
