<%@LANGUAGE="VBSCRIPT" LCID=1046 CODEPAGE="65001"%>
<%Option Explicit%>

<%
'declarando variaveis'
Dim valor1,valor2,strmode
dim resultado,operacao,strInteiro,valor
dim strvalida,strhojenao,str20,validaString
dim dataDiaSemana,data,dataano,dataMes
dataDiaSemana = date()


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
function convString(valor)
    if not(IsNumeric(valor)) then 
    strInteiro = "S"
    end if       
    convString = strInteiro
end function
function intvalida()
    validaString = "É necessário digitar apenas números"
    intvalida = validaString
end function

function diaInt()
    data = day(date())    
    diaInt = data
end function

function mesano()
    datames = monthname(month(date))    
    mesano = datames
end function


function anoInt()
    dataano = year(date())    
    anoInt = dataano
end function

function dataDia()
    If Weekday(Now) = 1 Then
    dataDiaSemana = "Domingo"
    ElseIf Weekday(Now) = 2 Then
     dataDiaSemana = "Segunda-feira"
    ElseIf Weekday(Now) = 3 Then
    dataDiaSemana = "terça-feira"
    ElseIf Weekday(Now) = 4 Then
    dataDiaSemana = "Quarta-feira"
    ElseIf Weekday(Now) = 5 Then
    dataDiaSemana = "Quinta-feira"
    ElseIf Weekday(Now) = 6 Then
    dataDiaSemana = "Sexta-feira"
    ElseIf Weekday(Now) = 7 Then
    dataDiaSemana = "Sábado"
    end if          
        dataDia = dataDiaSemana
end function





valor1=replace(valor1,".",",") 'converte virgula em ponto string em inteiro '
valor2=replace(valor2,".",",") 'converte virgula em ponto string em inteiro '


Select Case(operacao)
 Case "+" :'entra aqui se usuario clicar botão da Case'
   '' resultado = convString()  
    
    if (valor1="" or valor2="") and resultado = "" then    
    resultado = valida()
    elseif convString(valor1)  = "S" or  convString(valor2)  = "S" then
    resultado = intvalida()  
    Elseif valor1 or valor2 Then 
    resultado =   cdbl(valor1) & " " & operacao & " " & cdbl(valor2) & " = " & cdbl(valor1) + cdbl(valor2) '& " " &dataDia()      
    End If             
 Case "-" :'entra aqui se usuario clicar botão da Case' 
     if (valor1="" or valor2="") and resultado = "" then    
    resultado = valida()
    elseif convString(valor1)  = "S" or  convString(valor2)  = "S" then
    resultado = intvalida()
    Else  
    resultado = cdbl(valor1) & " " & operacao & " " & cdbl(valor2) & " = " & cdbl(valor1) - cdbl(valor2) '& " " &mode()
    End If
 Case "/" :'entra aqui se usuario clicar botão da Case'
    if (valor1="" or valor2="") and resultado = "" then    
    resultado = valida()
    elseif convString(valor1)  = "S" or  convString(valor2)  = "S" then
    resultado = intvalida()
    ElseIf cInt(valor2) = 0 Then'se valor for ZERO, entra aqui para retornar frase de erro'
      resultado = "Não é possível realizar divisão por zero."
    Else
      resultado = cdbl(valor1) & " " & operacao & " " & cdbl(valor2) & " = " & cdbl(valor1) / cdbl(valor2) '& " " &mode()
    End If     
 Case "x" :'entra aqui se usuario clicar botão da Case'
    if (valor1="" or valor2="") and resultado = "" then    
    resultado = valida()
    elseif convString(valor1)  = "S" or  convString(valor2)  = "S" then
    resultado = intvalida()
    Else 
    resultado = cdbl(valor1) & " " & operacao & " " & cdbl(valor2) & " = " & cdbl(valor1) * cdbl(valor2)'' & " " &mode()
    End If  
End Select

%>

<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <title> Calculadora Simples   </title>
        <meta charset="UTF-8">
        <style>            
            .Calculadora{
                background-image: linear-gradient(45deg,gray, rgb(45, 189, 182));
                margin:20px;
                width:270px;
                height:545px;
                padding:40px;
                border-radius:25px;
                border-style:solid 2px black;
                justify-content: center;   
                
               
                
            }           
            .input{               
                padding:0px;           
                
            }
           
        </style>
    </head>
<body>   
    <div class="Calculadora">
        <form action="calculadora.asp" method="post">
            <h5> Hoje é <%=datadia()&" "&diaInt()& " de "&mesano()&" de "&anoInt()%> </h5>
            <img src="logo-Uellevo.png"  width="180" heigt="100">
                <h6>Primeiro valor: <input type="text" name = "txtvalor1" value=""></h6>
                <h6>Segundo  valor: <input type="text" name = "txtvalor2" value=""></h6>

             <div class="Input">
                <input type="submit" class="btn btn-dark" type="button" name = "operacao" value="+">
                <input type="submit" class="btn btn-dark"type="button" name = "operacao" value="-">
                <input type="submit" class="btn btn-dark"type="button" name = "operacao" value="x">
                <input type="submit" class="btn btn-dark"type="button" name = "operacao" value="/">
                <input type="submit" class="btn btn-danger" type="button" name = "limparesultado" value="C">
               

             </div><br>
            <h5><%=resultado%></h5>              
        </form></center>
    </div>
</body>