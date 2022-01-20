<%@LANGUAGE="VBSCRIPT" LCID=1046 CODEPAGE="65001" %>
<% option explicit%>    
<% 
    
    'FUNCOES MATEMATICAS'

    sub soma(a,b)
        a = cint(a)
        b = cint(b)
        response.Write("<br> Soma: " & (a + b))
    end sub

    sub subtracao(a,b)
        response.Write("<br> Subtração: " & (a - b))
    end sub

    function multiplicacao(a,b)
        multiplicacao = a*b
    end function 

    function divisao(a,b)
        if b = 0 then
            divisao = " Impossivel dividir por 0"
        else
            divisao = a/b
        end if
    end function 
%>

<!DOCTYPE html>
<html lang="pt-BR">
    <head>
        <meta charset="utf-8"/>
        <title>Calculadora</title>
	</head>
    <body>
        <h1>
            <form method="post" action="calculadora.Gabriel.asp">
                <section>
                    <input type="number" name="primeiro" value = 0>
                    <input type="number" name="segundo" value = ""><br>
                    <input type="radio" name="operador" <%if operador="+" then response.Write("checked")%> value = "+">+
                    <input type="radio" name="operador" <%if operador="-" then response.Write("checked")%> value = "-">–
                    <input type="radio" name="operador" <%if operador="*" then response.Write("checked")%> value = "*">×
                    <input type="radio" name="operador" <%if operador="/" then response.Write("checked")%> value = "/">÷<br>
                    <input type="submit" value="Calcular">
                </section>
            </form>
<%
    dim valor1  
    dim valor2
    dim operador 
    valor1 = (request.Form("primeiro"))
    valor2 = (request.Form("segundo"))
    operador = (request.Form("operador"))

    Select Case operador
        case "+"
            call soma(valor1, valor2)
        case "-"
            call subtracao(valor1, valor2)
        case "*"
            response.Write("<br> Multiplicação: " & multiplicacao(valor1, valor2))
        case "/"
            response.Write("<br> Divisão: " & divisao(valor1, valor2))
        case else 
            response.Write("<br>Favor selecionar um operador")
    End Select
%>
            <br><br>
        </h1>
    </body>
</html>