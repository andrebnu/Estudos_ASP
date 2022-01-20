
<%@LANGUAGE="VBSCRIPT" LCID=1046 CODEPAGE="65001"%>
<%Option Explicit%>

<%
dim arrUm,i,menorNumero
redim arrUm(10)
arrUm(0) = "78"
arrUm(1) = "2"
arrUm(2) = "13"
arrUm(3) = "789"
arrUm(4) = "1"
arrUm(5) = "5"
arrUm(6) = "22"
arrUm(7) = "0"
arrUm(8) = "-23"
arrUm(9) = "7"

'<!-- OBTER O MENOR NÚMERO -->
menorNumero = arrUm(0)

For i = 1 To 9
    If arrUm(i) < menorNumero Then
    menorNumero = arrUm(i)
    End If
Next

response.write("O menor numero e : " & menorNumero & "<br>")
%>