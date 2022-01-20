
<%@LANGUAGE="VBSCRIPT" LCID=1046 CODEPAGE="65001"%>
<%Option Explicit%>

<%
dim matriz()
dim resultado()
dim temp,i,j,atd,max,min,numero,qtd

redim resultado(5)
redim matriz(5,2)

qtd = 0 ''
min = 1 ''
max = 100'

for i=0 to ubound(matriz,1)-1 ' for para preenchar de forma automatica a matriz'
    for j=0 to ubound(matriz,2)-1
        Randomize()
        numero =  (Int((max-min+1)*Rnd+min))
        matriz(i,j) = numero
    next
next

for i = 0 to 4
    resultado(i) = matriz(i,0) + matriz(i,1)
next

for i = 0 to ubound(matriz,1)-1       
       for j = 0 to ubound(matriz,2)-1          
         response.write" "&matriz(i,j)&"<br>"          
        next
next

for i = 0 to 4 
     response.write"A soma dos valores e : "&resultado(i)&"<br>"
next
 %>