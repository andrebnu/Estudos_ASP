<%@LANGUAGE="VBSCRIPT" LCID=1046 CODEPAGE="65001" %>
<% option explicit%> 
<%
dim strExer,strExerTras,i,teste
 teste = teste
%>
<%

strExer = "A grama e amarga"
strExerTras = " "
strExer = replace(strExer," ","")
strExerTras = strreverse(strExer)

if strExer=strExerTras then
    response.write "igual : "
    else 
    response.write " diferente :"
end if


response.write "tamanho : " &len(strExer)&"<br>"
for i=len(strExer) to 1 step -1 
    response.write "Posicao :" &mid(strExer,i,1)&"<br>"'mostra aquantidade de letras'
    strExerTras = strExerTras + mid(strExer,i,1)'mostra a fraze toda'
next 

    response.write "Palavra  tras : " & strExerTras&"<br>"'tras para frente'
    response.write "Palavra : "       &strExer&"<br>"'palavra normal'
    response.write "Palavra : "       &strreverse(strExer)&"<br>"
    response.end

%>
<!DOCTYPE html>
<html lang="pt-BR">
    <head>
        <meta charset="UTF-8">
    </head>
</html>