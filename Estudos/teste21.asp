<%@LANGUAGE="VBSCRIPT" LCID=1046 CODEPAGE="65001"%>
<%Option Explicit%>
<%<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
</head>
<%
dim cars
cars=Request.Form("cars")
%>
<body>

<form method="post" action=""> <!--metodo para substituir form antigo quando der erro-->
<p>Digite um número  favorito :</p>

<input type="radio" name="cars"
<%if cars="15" then Response.Write("checked")%>
value="15">15
<br>
<input type="radio" name="cars"
<%if cars="50" then Response.Write("checked")%>
value="50">50
<br>
<input type="radio" name="cars"
<%if cars="10" then Response.Write("checked")%>
value="10">10
<br><br>
<input type="submit" value="Submit" />
</form>
<%
if cars<>"" then
   Response.Write("<p>Seu número é : " & cars & "</p>")
end if
%>
</body>
</html>