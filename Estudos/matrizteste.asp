
<%@LANGUAGE="VBSCRIPT" LCID=1046 CODEPAGE="65001"%>
<%Option Explicit%>

<%
dim matriz()
dim resultado()
dim temp,i,j

redim resultado(5)
redim matriz(2,5)

matriz(0,0) = CDbl(3)   
matriz(0,1) = CDbl(347) 
matriz(0,2) = CDbl(7)   
matriz(0,3) = CDbl(15)  
matriz(0,4) = CDbl(878) 

matriz(1,0) =  CDbl(7)
matriz(1,1) =  CDbl(46.05)
matriz(1,2) =  CDbl(56) 
matriz(1,3) =  CDbl(98)
matriz(1,4) =  CDbl(758.20)

for i = 0 to ubound(matriz,1)-1       
       for j = 0 to ubound(matriz,2)-1
          '' response.write " "&matriz(i,j)&"<br>"
          resultado(i) = matriz(i+1,j) + matriz(i,j)   'precisa retirar o j que esta imporimindo junto' 
          '' resultado(i) = matriz(j,i) + matriz(j,i)                
          response.write"A soma dos valores e : "&resultado(i)&"<br>"
        next
next



 %>