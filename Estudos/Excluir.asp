<%@LANGUAGE="VBSCRIPT" LCID=1046 CODEPAGE="65001"%>
<%Option Explicit%>

<%
Dim strPlacaCarro,strHoraEntrada,i,lngContArr,strTeste
dim arrPlacaCarro,arrHoraEntrada,arrlnaSessao,arrfnasessao,strvazia
strvazia = ""

strPlacaCarro = request.form("PlacaCarroSair")
redim arrPlacaCarro(10)


if isarray(session("sessionarrPlacaCarro")) then
    arrPlacaCarro = session("sessionarrPlacaCarro")
end if

for i=0 to ubound(arrPlacaCarro)-1
    if trim(arrPlacaCarro(i))=strPlacaCarro then
        arrPlacaCarro(i) = strvazia        
        exit for
    end if
next
session("sessionarrPlacaCarro")=arrPlacaCarro
'session("sessionarrHoraEntrada")=arrHoraEntrada
'session("sessionarrPlacaCarro")=""
'session("sessionarrHoraEntrada")=""

response.redirect "input.asp"

%>