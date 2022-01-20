<%@LANGUAGE="VBSCRIPT" LCID=1046 CODEPAGE="65001"%>

<%Option Explicit%>

<%
'declarando variaveis'
Dim valor1,valor2
dim resultado,operacao
dim strvalida
dim intNumero

'recebendo dados via imput e colocando em variaveis temporarias'
valor1=Request.Form("txtvalor1")
valor2=Request.Form("txtvalor2")
operacao=Request.Form("operacao")'recebe o botao de input, e entra para executar em Case especifica'

'função para retornar uma string'
function valida()
    strvalida = "É necessário digitar dois valores."
    valida = strvalida
end function
function insert()
    intNumero = cInt(valor1)
    insert = intNumero
end function


Select Case(operacao)

    
 Case "+" :'entra aqui se usuario clicar botão da Case'
    If valor1="" or valor2="" then
    resultado = valida()
    Else
    resultado = CSng(valor1) & " " & operacao & " " & CSng(valor2) & " = " & CSng(valor1) + CSng(valor2)'A função CSng converte uma expressão para o tipo Single. '
    End If                                                                                              'A expressão deve ser um valor numérico.'
 Case "-" :'entra aqui se usuario clicar botão da Case'
    If valor1="" or valor2="" then
    resultado =valida()
    Else
    resultado = CSng(valor1) & " " & operacao & " " & CSng(valor2) & " = " & CSng(valor1) - CSng(valor2)
    End If
 Case "/" :'entra aqui se usuario clicar botão da Case'
    If valor1="" or valor2="" then
      resultado = valida()
    ElseIf CInt(valor2) = 0 Then'se valor for ZERO, entra aqui para retornar frase de erro'
      resultado = "Não é possível realizar divisão por zero."
    Else
      resultado = CSng(valor1) & " " & operacao & " " & CSng(valor2) & " = " & CSng(valor1) / CSng(valor2)
    End If   
 Case "x" :'entra aqui se usuario clicar botão da Case'
    If valor1="" or valor2="" then
    resultado = valida()
    Else
    resultado = CSng(valor1) & " " & operacao & " " & CSng(valor2) & " = " & CSng(valor1) * CSng(valor2)
    End If
End Select

%>

<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <title> Calculadora Simples </title>
        <meta charset="UTF-8">
        <style>            
            .Calculadora{
                background-image: linear-gradient(45deg,gray, rgb(45, 189, 182));
                margin:20px;
                width:280px;
                height:545px;
                padding:45px;                
                justify-content: center;        
            }                  
            .input{   
                margin:0;
                background:red;          
                width:150px; 
                flex-direction: center;
            }
            #resultado{
                background:blue;
            }
        </style>
    </head>
<body>
   
    <div class="Calculadora">
        <form action="testes.asp" method="post">
                <p id="resultado"></p>
                

   <script>
       function insert(num) {
            var numero = document.getElementById('resultado').innerHTML;
            document.getElementById('resultado').innerHTML = numero + num;
        }
   </script>


                <h6>Primeiro valor: <input type="text" name = "txtvalor1" value=""></h6>
                <h6>Segundo  valor: <input type="text" name = "txtvalor2" value=""></h6>

             <div class="Input">
                <input type="submit" class="btn btn-dark" type="button" name = "operacao" value="7 ">
                <input type="submit" class="btn btn-dark" type="button" name = "operacao" value="8">
                <input type="submit" class="btn btn-dark" type="button" name = "operacao" value="9">
                <input type="submit" class="btn btn-dark" type="button" name = "operacao" value="4">
                <input type="submit" class="btn btn-dark" type="button" name = "operacao" value="5">
                <input type="submit" class="btn btn-dark" type="button" name = "operacao" value="6">
                <input type="submit" class="btn btn-dark" type="button" name = "operacao" value="1">
                <input type="submit" class="btn btn-dark" type="button" name = "operacao" value="2">
                <input type="submit" class="btn btn-dark" type="button" name = "operacao" value="3">
                <input type="submit" class="btn btn-dark" type="button" name = "operacao" value="0">
                <input type="submit" class="btn btn-dark" type="button" name = "operacao" value="+">
                <input type="submit" class="btn btn-dark"type="button" name = "operacao" value="-">
                <input type="submit" class="btn btn-dark"type="button" name = "operacao" value="x">
                <input type="submit" class="btn btn-dark"type="button" name = "operacao" value="/">
                <input type="submit" class="btn btn-danger" type="button" name = "limparesultado" value="C">
               

             </div><br>
            <h4> <%=resultado%></h4>

               

        </form></center>
    </div>
</body>