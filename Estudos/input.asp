<%@LANGUAGE="VBSCRIPT" LCID=1046 CODEPAGE="65001"%>
<%Option Explicit%>
<%

Dim strPlacaCarro,strHoraEntrada,i,lngContArr,strTeste
dim arrPlacaCarro,arrHoraEntrada,arrlnaSessao,arrfnasessao
Dim dataDiaSemana,data,dataano,datames
 
     
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
    dataDiaSemana = "Terça-feira"
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

%>      

<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <title> Input   </title>
        <meta charset="UTF-8">
       <style>
           .input{
            background-color:rgb(0, 189, 183);
            width:300px;
            height:850px;
            text-align:center;
            padding:10px;

            
           }
           #gravar{
               text-align:left;
              
           }
           #excluir{
               text-align:center;

           }

           

       </style>
    </head>
<body>   
    <div class="Input">
        <h5><%=datadia()&" "&diaInt()& " de "&mesano()&" de "&anoInt()%> </h5>
        <h5>Horario atual <%=Time()%></h5>
        <form id="gravar" method="post" action="testeretorno.asp">
            
            <!--<h6>Modelo:<input type="text" name = "PlacaCarro" value=""></h6>-->
            <h6>Placa : <input type="text" name = "PlacaCarro" value=""></h6>
            <h6>Hora : <input type="text" name = "HoraEntrada" value=""></h6>
            <h6><input type="submit" class="btn btn-dark" type="button" name = "operacao" value="Gravar"></h6>
                
             <%
           
            arrPlacaCarro   =  session("sessionarrPlacaCarro")
            arrHoraEntrada  =  session("sessionarrHoraEntrada")
            if isarray(session("sessionarrPlacaCarro")) then
                 arrPlacaCarro = session("sessionarrPlacaCarro")
                 arrHoraEntrada = session("sessionarrHoraEntrada")
               
                for i=0 to ubound(arrPlacaCarro)-1
                      response.write "Placa Do Carro  : "&arrPlacaCarro(i)&"<br>"
                      response.write "Horario de Entrada  : "&arrHoraEntrada(i)&"<br>"
                next
            end if
            
             %>
        </form>
        <form id="excluir" method="post" action="Excluir.asp">
            <h6>Saida : <input type="text" name = "PlacaCarroSair" value=""></h6>
            <h6><input type="submit" class="btn btn-danger" type="button" name = "saida" value="Excluir"></h6>
            <% if isarray(session("sessionarrPlacaCarroExcluir")) then
            arrPlacaCarro   =  session("sessionarrPlacaCarroExcluir")
                    for i=0 to ubound(arrPlacaCarro)-1
                         response.write "Placa Excluida : "&arrPlacaCarro(i)&"<br>"                     
                    next
                end if
            %>
        </form>
             </div><br>
    
           
    </div>
      
</body>
</html>


