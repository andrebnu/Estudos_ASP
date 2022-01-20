<%@LANGUAGE="VBSCRIPT" LCID=1046 CODEPAGE="65001"%>
<%Option Explicit%>

<%
dim arrUm,i,i1,i2
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



 'CRIAR UM NOVO ARRAY DE MANEIRA CRESCENTE E EXIBIR 

dim arrayCrescente(10)
dim valorTemporario


For i=0 To 9
    arrayCrescente(i) = arrUm(i)
Next

For i1 = 0 To 8
    For i2 = i1+1 To 9
        If arrayCrescente(i2) < arrayCrescente(i1) Then
            valorTemporario = arrayCrescente(i2)
            arrayCrescente(i2) = arrayCrescente(i1)
            arrayCrescente(i1) = valorTemporario
        End If
    Next
Next

For i=0 To 9
    response.write(arrayCrescente(i) & "<br>")
Next


%>