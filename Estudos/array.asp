<%@LANGUAGE="VBSCRIPT" LCID=1046 CODEPAGE="65001"%>
<%Option Explicit%>

<%
dim arrTopFilmes,tamArr,i,teste,strEmails,arrEmails

redim arrTopFilmes(10)
arrTopFilmes(0) = "Duna"
arrTopFilmes(1) = "O Esquadrão Suicida"
arrTopFilmes(2) = "Eternos"
arrTopFilmes(3) = "Mortal Kombat"
arrTopFilmes(4) = "Liga da Justiça - Snyder Cut"
arrTopFilmes(5) = "Godzilla vs. Kong"
arrTopFilmes(6) = "Viúva-Negra"
arrTopFilmes(7) = "Army of the Dead: Invasão em Las Vegas"
arrTopFilmes(8) = "Cruella"
arrTopFilmes(9) = "Shang-Chi e a Lenda dos Dez Anéis"

strEmails = "amarelo/verde/roxo/azul/vermelho/cinza/preto/magenta/bordo/"
arrEmails = split(strEmails,"/")
response.write "tamanho array : "&ubound(arrEmails)&"<br>"

for i=0 to ubound(arrEmails) -1
    
    if trim(arrEmails(i))="azul" then
        response.write "posicao da cor azul : "&i&"<br>"
    end if
next

dim contAux, posAux

strEmails = "teste@teste.com.br/bala@teste.com.br/gola@teste.com.br/rafaela@teste.com/teste123/"
arrEmails = split(strEmails,"/")
response.write "tamanho"&ubound(arrEmails)&"<br>"
contAux=0
for i=0 to ubound(arrEmails) - 1
    response.write "posicao "&i&":"&arrEmails(i)&"<br>"
    if trim(arrEmails(i)) = "teste123" then
        contAux = contAux + 1
        posAux = i
    end if
next

if contAux >0 then
    response.write "tem na posicao "&posAux&"<br>"
else
    response.write "nao tem <br>"
end if
'function strarray()
 ''   i=0
 ''   do while i<tamArr
 ''   response.write "Posição "&i&":"&arrTopFilmes(i)&"<br>"
 ''   loop
''    response.end
    
'end function

'tamArr  = ubound(arrTopFilmes)
 ''  for i=0 to tamArr -1
''        response.write "Posição "&i&":"&arrTopFilmes(i)&"<br>"
 ''   next    
'i=0
'do while i<tamArr
'response.write "Posição "&i&":"&arrTopFilmes(i)&"<br>"
'loop


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