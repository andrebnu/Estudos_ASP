<%@LANGUAGE="VBSCRIPT" LCID=1046 CODEPAGE="65001"%>
<%Option Explicit%>


<% 
If Request.ServerVariables("CONTENT_LENGHT") <> 0 Then 
' show results
Dim strName, nAge, strColor 
strName = Request.Form("name") 
nAge = CInt(Trim(Request.Form("age"))) 'recebe o valor trasnfomra em trim sem espaços depois em inteiro de dentro para fora'
strColor = Request.Form("color") 
Response.Write "Name: " & strName & "<br>" 
Response.Write "Age: " & CStr(nAge) & "<br>" 
Response.Write "Color: " & strColor & "<br>" 
Else 
' show form 
%>

<form action="input.asp" method="post"> 
Name: <input type="text" name="name"><br> 
Age :  <input type="text" name="age"><br> 
Favorite Color: 
<select name="color"> <!--dropdown em asp -->
<option value="red">Red</option> 
<option value="blue">Blue</option> 
<option value="green">Green</option> 
<option value="black">Black</option> 
<option value="gray">Gray</option>
<option value="white">White</option> 
</select><br> 
<input type="submit" name="submit" value="Submit"> 
</form> 
<% End If %>
<%If isNumeric(nAge) Then 

' calcular o valor de nage para ver se é inteiro
Else
' handle error 
End If

%>


