<html>
<head>
<title>Prova Login da JSP</title>
</head>
<body>
<h1>Questa è una pagina web login easy easy</h1>
<form action="/login.do" method="post">
<div>
Enter your username: <input type="text" name="name"/>
<br><br>
Enter your password: <input type="password" name="password"/>  <input type="submit" value="login"/>
</div>
<h3 style="color:red">${errore}</h3>
</form>
</body>
</html>