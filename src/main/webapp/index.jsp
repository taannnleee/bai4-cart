<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
</head>
<body>

<h1>CD list</h1>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<table>
    <tr>
        <th>Description</th>
        <th class="right">Price</th>
        <th>&nbsp;</th>
    </tr>
    <c:forEach var="product" items="${products}">
        <tr>
            <td><c:out value='${product.description}'/></td>
            <td class="right">${product.priceCurrencyFormat}</td>
            <td><form action="cart" method="post">
                <input type="hidden" name="productCode" value="<c:out value='${product.code}'/>">
                <input type="submit" value="Add To Cart" class="btn btn-outline-success">
            </form></td>
        </tr>
    </c:forEach>
</table>

<form class="returnproject" method="get" action="https://ltwgiuaki-final.onrender.com/home/#home">
    <button type="submit">
        <input type="submit" value="Return Profile" class="margin_left pad_top btn btn-outline-success">
    </button>
</form>
</form>
</body>
</html>