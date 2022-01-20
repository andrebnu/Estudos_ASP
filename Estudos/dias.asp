<%@LANGUAGE="VBSCRIPT" LCID=1046 CODEPAGE="65001"%>
<%Option Explicit%>

<%
dim diasDasemana,tamArr,i,teste,strdata,arrEmails

redim diasDasemana(7)
diasDasemana(0) = "Domingo"
diasDasemana(1) = "Segunda"
diasDasemana(2) = "Terça"
diasDasemana(3) = "Quarta"
diasDasemana(4) = "Quinta"
diasDasemana(5) = "Sexta"
diasDasemana(6) = "Sabado"

response.write "tamanho array : "&ubound(diasDasemana)&"<br>"
response.write diasDasemana(weekday(date()-1))

%>


<!DOCTYPE html>
<html lang="pt-BR">
    <head>
        <meta charset="UTF-8">
        <style>
            body{
                
                background:  #5edaac;
                font-size: 18pt;
                font-style:bold;
            }
        </style>
    </head>
<body>
    <!--<h2> Top dez filmes mais populares 2021 : </h2>-->
    <p><%'=strarray()%></p>
    


</body>
</html>