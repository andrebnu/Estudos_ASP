<%@LANGUAGE="VBSCRIPT" LCID=1046 CODEPAGE="65001"%>
<%Option Explicit%>
<%
<!DOCTYPE html>
<html>
<body>

<%
Function myfunction()
myfunction=Date()
End Function

response.write("Today's date: ")
response.write(myfunction())
%> 

<p>A Function procedure can return a result.</p>

</body>
</html>