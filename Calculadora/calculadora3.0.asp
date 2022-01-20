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
valor1=replace(valor1,".",",") 'converte virgula em ponto string em inteiro '
valor2=replace(valor2,".",",") 'converte virgula em ponto string em inteiro '


%>

<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <title> Calculadora Simples </title>
       
        <meta charset="UTF-8">
        <style>  
        
            .Calculadora{
                background-image: linear-gradient(111111deg,rgb(45, 189, 182),rgb(20, 220, 70));
                margin:20px;
                width:270px;
                height:545px;
                padding: 0px;
                border-radius:25px;
                border-style:solid 2px black;
                justify-content: center;      
               text-align: center                
            }           
            .input{               
                padding:40px;
        
            }
        
             #resultado {
            background-color: white;
            width: 207px;
            height: 40px;
            margin-left:35px;
            font-size: 30px;
            color: black;
            text-align: right;
            padding: 0px;
            }          
            
        </style>
        <script>
           function insert(num) {
            var numero = document.getElementById('resultado').innerHTML;
            document.getElementById('resultado').innerHTML = numero + num;
        }

        function clean() {
            document.getElementById('resultado').innerHTML = "";
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
        <form action="calculadora3.0.asp" method="post">
                <img src="logo-Uellevo.png"  width="150" heigt="110" align:center; >
                <h4><p id="resultado"></h4>
                
                <form action="demo_simplereqquery.asp" method="post">
                 
                  </form>



             <div class="Input">
                 <table>
                <tr>
                    <td><button class="btn btn-danger btn-lg" onclick="clean()">C</button></td>
                   
                    <td><button class="btn btn-danger btn-lg" onclick="insert('/')">/</button></td>
                    <td><button class="btn btn-danger btn-lg" onclick="insert('*')">X</button></td>
                    <td><button class="btn btn-danger btn-lg" style="width: 48px;" onclick="insert('-')">-</button></td>
                </tr>
                <tr>
                    <td><button class="btn btn-dark btn-lg" onclick="insert('7')">7</button></td>
                    <td><button class="btn btn-dark btn-lg" onclick="insert('8')">8</button></td>
                    <td><button class="btn btn-dark btn-lg" onclick="insert('9')">9</button></td>
                    <td><button class="btn btn-danger btn-lg" onclick="insert('+')">+</button></td>
                </tr>
                <tr>
                    <td><button class="btn btn-dark btn-lg" onclick="insert('4')">4</button></td>
                    <td><button class="btn btn-dark btn-lg" onclick="insert('5')">5</button></td>
                    <td><button class="btn btn-dark btn-lg" onclick="insert('6')">6</button></td>
                    <td><button class="btn btn-danger btn-lg"style="width: 48px;" onclick="insert('.')">.</button></td>
                </tr>
                <tr>
                    <td><button class="btn btn-dark btn-lg" onclick="insert('1')">1</button></td>
                    <td><button class="btn btn-dark btn-lg" onclick="insert('2')">2</button></td>
                    <td><button class="btn btn-dark btn-lg" onclick="insert('3')">3</button></td>
                    <td rowspan="2"><button class="btn btn-danger  btn-lg" style="height: 106px; " onclick="calcular()">=</button></td>
                </tr>
                <tr>
                    <td colspan="4"><button class="btn btn-dark btn-lg"style="width: 138px;" onclick="insert('0')">0</button></td>
                </tr>
            </table>
      
               
               

             </div><br>
             <%=resultado%>
            

               

        </form></center>
    </div>
</body>