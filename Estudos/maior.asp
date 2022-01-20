<%@LANGUAGE="VBSCRIPT" LCID=1046 CODEPAGE="65001"%>
<%Option Explicit%>

<%
dim arrUm,i,maiorNumero,menorNumero,intmenor,intmaior,intposimaior,intposimenor
intposimenor = 0
intposimaior = 0
intmaior = 0
intmenor = 0

redim arrUm(10)
arrUm(0) = 78
arrUm(1) = 2
arrUm(2) = 13
arrUm(3) = 789
arrUm(4) = 1
arrUm(5) = 5
arrUm(6) = 22
arrUm(7) = 0
arrUm(8) = -23
arrUm(9) = 7

' OBTER O MAIOR NÚMERO 

for i = 0 to 9
    if arrUm(i) <= intmenor Then
        intmenor = arrUm(i)
        intposimenor = i 
    End If
     if arrUm(i) >= intmaior Then
        intmaior = arrUm(i)
        intposimaior = i 
    End If
next
    
response.write "menor :"&intmenor& " posicao : "&intposimenor &"<br>"
response.write "maior :"&intmaior &" posicao : "&intposimaior &"<br><br><br>"


maiorNumero = arrUm(0)

For i = 0 To 9
    If arrUm(i) > maiorNumero Then
        maiorNumero = arrUm(i)
        
    End If
Next

response.write("O maior numero e :" & maiorNumero&"<br>")


response.write"---------------//---------------<br>"
'O MENOR NÚMERO 
menorNumero = arrUm(0)

For i = 0 To 9
    If arrUm(i) < menorNumero Then
    menorNumero = arrUm(i)
    End If
Next

response.write("O menor numero e : " & menorNumero & "<br>")
%>