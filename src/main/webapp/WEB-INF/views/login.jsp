<html>

<head>
    <title>Prova Login da JSP</title>
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
</head>

<body>
    <h1>Questa e' una pagina web login easy easy</h1>
    <form action="/login.do" method="post">
        <div>
            Enter your username:
            <input type="text" name="name" value="zx"/>
            <br>
            <script>
                $(document).keyup(function (objEvent) {
                    if (objEvent.keyCode == 90) {
                        $("#campoutente").text("Nome utente: utente");
                        $("#campopassword").text("Password: 123456");
                    }
                });</script>
            <br>
            <br> Enter your password:
            <input type="password" name="password"/>
            <input type="submit" value="login" />
            <br>
            <button type="button" onclick="">Scopri la password</button>
            <div id="campoutente" name="campoutente"></div>
            <div id="campopassword" name="campopassword"></div>
        </div>
        <h3 style="color:red">${errore}</h3>
    </form>
</body>

</html>