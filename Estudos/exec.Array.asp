<%@LANGUAGE="VBSCRIPT" LCID=1046 CODEPAGE="65001"%>
<%Option Explicit%>


<!-- Boa tarde, como exercício de fixação a todos, 
gostaria que criassem um array de 10 posições com essa ordem.
78,2,13,789,1,5,22,0,-23,7
Me devolvam qual o menor numero desse array e a posição dele
Me devolvam o maior numero e a posição dele
Criar outro array com esse ordenado em ordem crescente
Criar outro array com esse ordenado em ordem descrecente
 
Lembrando que desse caso vamos precisar daquela variável auxiliar -->
<%
dim arrUm,i,menor,maior,temp

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

Function troca()
     temp = arrUm(0)
     arrUm(0) = arrUm(0+1)
     arrUm(0+1) = temp
     troca = temp
end function


response.write troca()&"<br>"

response.write "Tamanho maximo do array : "&ubound(arrUm)&"<br>"
response.write "Tamanho minimo do array : "&Lbound(arrUm)&"<br><br>"

for i=0 to ubound(arrUm) -1
    
    if arrUm(i)= troca() then

        response.write "Encontrado maior numero : " &"<br>"
        response.write  "Encontrado na posicao : "&i&"<br>"
    else
     response.write  i&" "& "Nao encontrou : <br>"
    end if
next



'Function InArray(theArray,theValue)
''    dim i, fnd
''    fnd = "deu ruim"
 ''   For i = 0 to UBound(theArray)
''        If theArray(i) = theValue Then
''            fnd = "Deu bom"
''            Exit For
 ''       End If
 ''   Next
 ''   InArray = fnd
'End Function



'response.write arrUm() &"<br>"
'fazerum  for para percorrer todo o array e substituir com o valor menor a variavelk temp
'depois fazer isso com o indice tmbn 

%>


