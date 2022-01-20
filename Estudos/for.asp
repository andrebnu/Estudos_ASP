<%@LANGUAGE="VBSCRIPT" LCID=1046 CODEPAGE="65001"%>
<%Option Explicit%>
<%
dim i

%>

<%
For i = 0 To 10 'for contagem progressiva'
 Response.Write("Indice : " & i)&"<br>"
Next
Response.Write("----------//----------")&"<br>"
For i = 10 To 1 Step -1  'for contagem regressiva
 Response.Write("Indice : " & i)&"<br>"
Next

Response.Write("----------//----------")&"<br>"

For i = 0 To 10
 Response.Write("Indice: " & i)&"<br>"
 If i=7 Then Exit For 'Exit loop after we write index 7
Next
Response.Write("----------//----------")&"<br>"







%>