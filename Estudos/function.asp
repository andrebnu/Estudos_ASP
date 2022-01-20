<%@LANGUAGE="VBSCRIPT" LCID=1046 CODEPAGE="65001"%>
<%Option Explicit%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
</head>

<%

dim intn1
dim intn2
dim intn3
dim intn4
dim strvalida 
strvalida = "É necessário digitar dois valores."
intn1 = 35
intn2 = 35
%>      
<%

function valida()
    valida = strvalida 
end function

function Somar()    
     Somar = intn1 + intn2
end function

function Subtrair()    
     Subtrair = intn1 - intn2
end function

function Multipilcar()
    intn3 = 24
    Multipilcar = intn3 * intn1
end function
function Dividir()
    intn3 = 258
    intn4 = 8
    Dividir = intn3 / intn4
end function
%>

<%
response.write(valida()&"<br>")
response.write(Somar()&"<br>")
response.write(Subtrair()&"<br>")
response.write(Multipilcar()&"<br>")
response.write(Dividir()&"<br>")

%>
</body>
</html>