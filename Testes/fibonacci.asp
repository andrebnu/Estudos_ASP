<%@LANGUAGE="VBSCRIPT" LCID=1046 CODEPAGE="65001"%>
<%Option Explicit%>

<%
dim n1,n2,n3,i
n1 = 0
n2 = 1

function fibonacci()
    n3 = n2 + n1 
    n1 = n2 
    n2 = n3 
    fibonacci = n3 
end function

For i = 0 To 10 'for contagem progressiva'
      response.write  fibonacci() &"<br>"
 
Next 
%>