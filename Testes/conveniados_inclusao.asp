<%@LANGUAGE="VBSCRIPT" LCID=1046 CODEPAGE="65001"%>
<%Option Explicit%>
<%
<!DOCTYPE html>
<html lang="pt-BR">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Controle de Processos</title>
</head>
<body>
    <%

    'Recuperando dados do formulário
    nome          = Request.Form("nome")
    cpf           = Request.form("cpf")
    convenio      = Request.Form("convenio")
    usuario       = Request.form("usuario")
    senha         = Request.Form("senha")
    senha2        = Request.form("senha2")
    
    Set conexao = Server.CreateObject("ADOBD.Connection")
    conexao.Open "Provider=Microsoft.Jet.OLEBD.4.0; Dara Source=" & Server.MapPath("bd_controle.mbd") & ";"
        
          Set add_action = Server.CreateObject ("ADOBD.Recordset")

          add_action.Open "Conveniados", conexao, 3, 3

          add_action.AddNew
              
                add_action("Nome_Conveniado")  = nome
                add_action("CPF_Conveniado")   = cpf
                add_action("Convenio")         = convenio
                add_action("Usuario")          = usuario
                add_action("Senha")            = senha
          add_action.Update

          add_action.Close
          conexao.Close

          Set add_action = Nothing
          Set conexao Nothing
  %>
    
</body>
</html>