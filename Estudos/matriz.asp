
<%
'10) Faça um programa para gerar automaticamente numeros entre 0 e 99 de uma cartela de bingo. Sabendo que cada cartela 'devera conter 5 linhas de 5 números, gere estes dados de modo a nao ter números repetidos dentro das cartelas. O 'programa deve exibir na tela a cartela gerad
Dim max,min,numero,igual,matriz
redim matriz(5,5)


function verIgual(numero)
igual = false
    for k = 0 to ubound(matriz,1)-1
        for l = 0 to ubound(matriz,2)-1
            if numero = matriz(k,l) then
                igual = true 
                exit for 
            end if 
        next
        if  igual = true then
            exit for
        end if
    next
    verIgual = igual 
end function


max=100
min=1

for i=0 to ubound(matriz,1)-1
    for j=0 to ubound(matriz,2)-1
        Randomize()
        numero = (Int((max-min+1)*Rnd+min))
        if verIgual(numero) = true then
            do while verIgual(numero) = true 
                Randomize()
                numero =  (Int((max-min+1)*Rnd+min))
                loop 
        end if
        matriz(i,j) = numero
    next
next
response.write "<table border=2 >"
response.write "<tr>"
    response.write "<td> B </td>"
    response.write "<td> I </td>" 
    response.write "<td> N </td>"
    response.write "<td> G </td>"
    response.write "<td> O </td>"
response.write "</tr>"

for i = 0 to ubound(matriz,1)-1
        response.write "<tr>"
        for j = 0 to ubound(matriz,2)-1
                response.write "<td> "&matriz(i,j)&"</td>"
        next
        response.write "</tr>"
next
response.write "</table>"

%>