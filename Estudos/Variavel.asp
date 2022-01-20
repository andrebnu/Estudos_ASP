<%@LANGUAGE="VBSCRIPT" LCID=1046 CODEPAGE="65001"%>
<%Option Explicit%>



<%
    dim strVar1
    dim intVar2

    strVar1 = "Primeira Página!"
    intVar2 = 0
%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8"> 
    <title>Primeira Página!</title>
</head>

<body>
    

    <p>1<%=strVar1%></p>

    <%strVar1 = "Segunda Página!" %>
    <p>2<%=varType(intVar2)%></p>
    




</body>
</html>