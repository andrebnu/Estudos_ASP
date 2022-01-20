<%@LANGUAGE="VBSCRIPT" LCID=1046 CODEPAGE="65001"%>
<%Option Explicit%>

<%
'declarando variaveis'
Dim valor1,valor2,strmode
dim resultado,operacao
dim strvalida,strhojenao,str20,num

'recebendo dados via imput e colocando em variaveis temporarias'
valor1=Request.Form("txtvalor1")
valor2=Request.Form("txtvalor2")
operacao=Request.Form("operacao")'recebe o botao de input, e entra para executar em Case especifica'

'função para retornar uma string'
function valida()
    strvalida = "É necessário digitar dois valores."
    valida = strvalida
end function
function hojenao()
    strhojenao = "É necessário digitar dois valores, MAIORES que 10."
    hojenao = strhojenao
end function
function menor()
    str20 = "É necessário digitar dois valores, MAIORES que 20."
    menor = str20
end function
function mode()
    if (valor1+valor2) mod 2=0 Then
    strmode = ("Esse número é par!")    
    else
    strmode = "Esse número é impar!"
    end if
    mode = strmode
end function



Select Case(operacao)
 Case "+" :'entra aqui se usuario clicar botão da Case'
    If valor1="" or valor2="" then    
    resultado = valida()
    Elseif valor1 or valor2 Then
    resultado = cdbl(valor1) & " " & operacao & " " & cdbl(valor2) & " = " & cdbl(valor1) + cdbl(valor2) '& " " &mode()        
    End If   
          
 Case "-" :'entra aqui se usuario clicar botão da Case'
    If valor1="" or valor2="" then
    resultado =valida()
    Else  
    resultado = cdbl(valor1) & " " & operacao & " " & cdbl(valor2) & " = " & cdbl(valor1) - cdbl(valor2)
    End If


 Case "/" :'entra aqui se usuario clicar botão da Case'
    If valor1="" or valor2="" then
      resultado = valida()
    ElseIf cInt(valor2) = 0 Then'se valor for ZERO, entra aqui para retornar frase de erro'
      resultado = "Não é possível realizar divisão por zero."
    Else
      resultado = cdbl(valor1) & " " & operacao & " " & cdbl(valor2) & " = " & cdbl(valor1) / cdbl(valor2)
    End If  
    
    
 Case "x" :'entra aqui se usuario clicar botão da Case'
    If valor1="" or valor2="" then
    resultado = valida()
    Else 
    resultado = cdbl(valor1) & " " & operacao & " " & cdbl(valor2) & " = " & cdbl(valor1) * cdbl(valor2)
    End If
  
End Select

%>

<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <title> Calculadora Simples </title>
        <p id="resultado"></p>
        <meta charset="UTF-8">
        <style>  
        
            .Calculadora{
                background-image: linear-gradient(111111deg,rgb(45, 189, 182),rgb(20, 220, 70));
                margin:20px;
                width:280px;
                height:545px;
                padding: 0px;
                border-radius:25px;
                border-style:solid 2px black;
                justify-content: center;      
               text-align: center                
            }           
            .input{               
                padding:10px;           
                
            }
             #resultado {
            background-color: white;
            width: 207px;
            height: 30px;
            margin: 5px;
            font-size: 25px;
            color: black;
            text-align: right;
            padding: 5px;
            }          
            
        </style>
        <script>
        function insert(num) {
            var numero = document.getElementById('resultado').innerHTML;
            document.getElementById('resultado').innerHTML = numero + num;
        }        

          function calcular() {
            var resultado = document.getElementById('resultado').innerHTML;
            if (resultado) {
                document.getElementById('resultado').innerHTML = eval(resultado);
            } else {
                document.getElementById('resultado').innerHTML = "Nada..."
            }
             }
    </script>
    </head>
<body>
   
    <div class="Calculadora">
        <form action="calculadoraJavascript.asp" method="get">
                <img src="logo-Uellevo.png"  width="100" heigt="70" align:center; >
                <h6>Primeiro valor: <input type="text" name = "txtvalor1" value=""></h6>
                <h6>Segundo  valor: <input type="text" name = "txtvalor2" value=""></h6>

             <div class="Input">
      
                <input type="submit" class="btn btn-dark btn-lg" type="button" onclick="insert('9')" name = "operacao" value="9">
                <input type="submit" class="btn btn-dark btn-lg" type="button" onclick="insert('8')" name = "operacao" value="8">
                <input type="submit" class="btn btn-dark btn-lg" type="button" onclick="insert('7')" name = "operacao" value="7">
                <input type="submit" class="btn btn-dark btn-lg" type="button" onclick="insert('1')" name = "operacao" value="/"><br>
                <input type="submit" class="btn btn-dark btn-lg" type="button" onclick="insert('6')" name = "operacao" value="6">
                <input type="submit" class="btn btn-dark btn-lg" type="button" onclick="insert('5')" name = "operacao" value="5">
                <input type="submit" class="btn btn-dark btn-lg" type="button" onclick="insert('4')" name = "operacao" value="4">
                <input type="submit" class="btn btn-dark btn-lg" type="button" onclick="insert('1')" name = "operacao" value="x"><br>
                <input type="submit" class="btn btn-dark btn-lg" type="button" onclick="insert('3')" name = "operacao" value="3">
                <input type="submit" class="btn btn-dark btn-lg" type="button" onclick="insert('2')" name = "operacao" value="2">
                <input type="submit" class="btn btn-dark btn-lg" type="button" onclick="insert('1')"name = "operacao" value="1">
                <input type="submit" class="btn btn-dark btn-lg" type="button" name = "operacao" value="-"><br>
                <input type="submit" class="btn btn-dark btn-lg" type="button" onclick="insert('0')" name = "operacao" value="0">
                <input type="submit" class="btn btn-dark btn-lg" type="button" name = "operacao" value="+">
                <input type="submit" class="btn btn-danger btn-lg" type="button" name = "limparesultado" value="C">
               

             </div><br>
            <h4> <%=resultado%></h4>

               

        </form></center>
    </div>
</body>