<%@LANGUAGE="VBSCRIPT" LCID=1046 CODEPAGE="65001"%>
<%Option Explicit%>

<%

dim valor1
dim valor2

    function Somar(n1,n2)
        Somar = cInt(n1)+(n2)
    end function
    function Subtrair(n1,n2)
        Subtrair = n1-n2
    end function
    function Multiplicar(n1,n2)
        Multiplicar = n1*n2
    end function
    function Dividir(n1,n2)' não pode dividir por zero'
        if n2 = 0  then
            Dividir = "Impossivel dividir por 0"
        else
            Dividir = n1/n2
        end if
    end function
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
</head>
<body>
    <div class="Calculadora">
        <h1><font color="black">Calcular Valores </font></h1>
        <form method="get" action="calculadoraSimples.asp">
            <p>Digite o Primeiro Valor <input type="number" name="primeiro" value=""><!--pode ser aqui-->
            <p>Digite o Segundo Valor <input type="number" name="segundo" value=""><!--pode ser aqui-->
            <input type="submit" value="Calcular">
        </form>
<%


    valor1 = (request.querystring("primeiro"))
    valor2 = (request.querystring("segundo"))

    response.write("Resultado da Soma = "& Somar(valor1,valor2)&"<br>")
    response.write("Resultado da Subtração = "&Subtrair(valor1,valor2)&"<br>")
    response.write("Resultado da Multiplicação = "&Multiplicar(valor1,valor2)&"<br>")
    response.write("Resultado da Divisão = "&dividir(valor1,valor2)&"<br>")


%>
 


</body>
</html>