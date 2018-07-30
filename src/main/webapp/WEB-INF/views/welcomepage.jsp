<html>

<head>
    <title>Benvenuto</title>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
</head>

<body>
    <form action="/welcomepage.do" method="get">
        <h1>Questa e' una pagina web easy easy di benvenuto</h1>
        <p>Stampa parametro con il dollaro, Benvenuto:
            <b>${name}</b>
        </p>
        <p>
            Stampa del parametro con codice Java all'interno:
            <% String nome = request.getParameter("name"); %>
                <b>
                    <%=nome%>
                </b>
        </p>
        <p>Nome utente stampato con le lib jstl : <c:out value="${name}"></c:out></p>
        <h3>Data e ora attuale:
            <% java.util.Date date = new java.util.Date(); %>
                <%=date%>
        </h3>
    </form>
</body>

</html>