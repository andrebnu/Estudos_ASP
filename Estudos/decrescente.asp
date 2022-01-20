
<%@LANGUAGE="VBSCRIPT" LCID=1046 CODEPAGE="65001"%>
<%Option Explicit%>

<%
dim arrUm,i,valorTemporario,i1,i2,num,temp
dim arrayDecrescente(10) 
dim arraY(10)

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


For i=0 To 9
      arrayDecrescente(i) = arrUm(i)
Next

For i1 = 0 To 8
    For i2 = i1+1 To 9
        If arrayDecrescente(i2) > arrayDecrescente(i1) Then
            valorTemporario = arrayDecrescente(i1)
            arrayDecrescente(i1) = arrayDecrescente(i2)
            arrayDecrescente(i2) = valorTemporario
        End If
    Next
Next
For i=0 To 9
       response.write"Valor : "&(arrayDecrescente(i) & "<br>")
   Next

%>