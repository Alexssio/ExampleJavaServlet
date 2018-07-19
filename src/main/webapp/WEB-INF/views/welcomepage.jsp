<html>
<head>
<title>Benvenuto</title>
</head>
<body>
<h1>Questa è una pagina web easy easy di benvenuto</h1>
<p>Stampa parametro con il dollaro, Benvenuto: <b>${name}</b></p>
<p>
Stampa del parametro con codice Java all'interno:
<% String nome = request.getParameter("name"); %>
<b><%=nome%></b>
</p>
<h3>Data e ora attuale:
<% java.util.Date date = new java.util.Date(); %>
<%=date%>
</h3>
</body>
</html>