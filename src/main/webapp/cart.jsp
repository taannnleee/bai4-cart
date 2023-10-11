<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
</head>
<body>

<h1>Your cart</h1>

<table>
    <tr>
        <th>Quantity</th>
        <th>Description</th>
        <th>Price</th>
        <th>Amount</th>
        <th></th>
    </tr>

    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <c:forEach var="item" items="${cart.items}">
        <tr>
            <td>
                <form action="" method="post">
                    <input type="hidden" name="productCode"
                           value="<c:out value='${item.product.code}'/>">
                    <input type=text name="quantity"
                           value="<c:out value='${item.quantity}'/>" id="quantity">
                    <input type="submit" value="Update" class="btn btn-outline-success">
                </form>
            </td>
            <td><c:out value='${item.product.description}'/></td>
            <td>${item.product.priceCurrencyFormat}</td>
            <td>${item.totalCurrencyFormat}</td>
            <td>
                <form action="" method="post">
                    <input type="hidden" name="productCode"
                           value="<c:out value='${item.product.code}'/>">
                    <input type="hidden" name="quantity"
                           value="0">
                    <input type="submit" value="Remove Item" class="btn btn-outline-success">
                </form>
            </td>
        </tr>
    </c:forEach>
</table>

<p><b>To change the quantity</b>, enter the new quantity
    and click on the Update button.</p>

<form action="" method="post">
    <input type="hidden" name="action" value="shop">
    <input type="submit" value="Continue Shopping" class="btn btn-outline-success">
</form>

<form action="" method="post">
    <input type="hidden" name="action" value="checkout">
    <input type="submit" value="Checkout" class="btn btn-outline-success">
</form>

</body>
</html>