<%@LANGUAGE="VBSCRIPT" LCID=1046 CODEPAGE="65001"%>
<%Option Explicit%>

<%
Dim strPlacaCarro,strHoraEntrada,i,lngContArr,strTeste
dim arrPlacaCarro,arrHoraEntrada,arrlnaSessao,arrfnasessao

strPlacaCarro = request.form("PlacaCarro")
strHoraEntrada = request.form("HoraEntrada")
redim arrPlacaCarro(10)
redim arrHoraEntrada(10)


if isarray(session("sessionarrPlacaCarro")) then
    arrPlacaCarro = session("sessionarrPlacaCarro")
    arrHoraEntrada = session("sessionarrHoraEntrada")
end if
'session("sessionarrPlacaCarro")=""
'session("sessionarrHoraEntrada")=""
'response.end
for i=0 to ubound(arrPlacaCarro)-1
    if trim(arrPlacaCarro(i))="" then
        arrPlacaCarro(i) = strPlacaCarro
  ''      response.write strHoraEntrada
        arrHoraEntrada(i) = strHoraEntrada
        exit for
   '' ElseIf trim(arrPlacaCarro(i))<>""then
      
    end if
next
'response.end
session("sessionarrPlacaCarro")=arrPlacaCarro
session("sessionarrHoraEntrada")=arrHoraEntrada

response.redirect "input.asp"

%>