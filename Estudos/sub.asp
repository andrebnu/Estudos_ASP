<%@LANGUAGE="VBSCRIPT" LCID=1046 CODEPAGE="65001"%>
<%Option Explicit%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <style>
        body{      
           
           margin:0px;
           padding:0px;       
       }
       .css{     
           text-align: center;
           width:100%;   
                  
          
       }
      .bloco{
            float:left;
            font-size: 18pt;
            margin:0px;        
            width: 22%;
            margin-right: 1%;
            color
      }
       
    </style>

</head>
<%
sub Somar (num1, num2)  'maneira defazer uma função sem retorno
response.write (num1 + num2)'calculo a ser feito pela função'
end sub'sempre acaba a função sub com "end"

sub Subtrair (num1, num2)
response.write (num1 - num2)
end sub

sub Multiplicar (num1, num2)
response.write (num1 * num2)
end sub

sub Dividir(num1, num2)
response.write (num1 / num2)
end sub
%>

<body>
<div class="css">
<div class="bloco">
<p>Somar</p>
<p> Resultado da  soma : <% call Somar(5,4)%> </p>
<p> Resultado da soma : <% Somar 6,4%><br><br> </p>
</div>

<div class="bloco">
<p> Subtrair: </p>
<p>Resultado da  Subtração : <% call Subtrair(10,4)%></p>
<p>Resultado da Subtração  :<% Subtrair 130.5, 129.5 %><br><br></p>
</div>

<div class="bloco">
<p>Multiplicar</p>
<p>Resultado da  Multiplicação : <% call Multiplicar(2,50)%></p>
<p>Resultado da Multiplicação : <% Multiplicar 20,50 %><br><br></p>
</div>

<div class="bloco">
<p>Dividir</p>
<p>Resultado da  Divisão : <% call Dividir(600,6) %></p>
<p>Resultado da Divisão : <% call Dividir (60.5,1.2) %></p> <!--cInt() devolve valor inteiro -->
</div>
</div>

</body>
</html>