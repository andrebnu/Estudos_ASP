<%@LANGUAGE="VBSCRIPT" LCID=1046 CODEPAGE="65001"%>
<%Option Explicit%>

<!DOCTYPE html>
<html lang="pt-BR">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Controle de Processos</title>
</head>

<body>
    <p align="center">Conveniados [<small>Inclusão</small>]</p>
    <div>
        <form action="conveniados_inclusao.asp" method="post">

            <p align="left">
                <label for="nome">Nome Completo:</label><br>
                <input type="text" name="nome" placeholder="Nome Completo" size="40" />
            </p>
            <p>
                <label for="cpf">CPF: </label><br>
                <input type="text" name="cpf" id="cpf" placeholder="Apenas Números">
            </p>
            <p>
                <label for="convenio">Número do Convênio: </label><br>
                <input type="text" name="convenio" id="convenio" maxlength="10" placeholder="Número do Convênio">
            </p>
            <p>
                <label for="usuario">Usuário: </label><br>
                <input type="text" name="usuario" id="usuario" placeholder="Nome do Usuário">
            </p>
            <p>
                <label for="senha">Senha: </label><br>
                <input type="password" name="senha" id="senha" maxlength="10">
            </p>
            <p>
                <label for="senha2">Confirme a Senha: </label><br>
                <input type="password" name="senha2" id="senha2" maxlength="10">
            </p>
            <input type="submit" name="submit" value="Incluir">
            <input type="reset" name="reset" value="Limpar">

        </form>
    </div>
</body>

</html>