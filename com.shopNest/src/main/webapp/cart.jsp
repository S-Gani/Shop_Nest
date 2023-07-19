<%@ page import="java.util.List" %>
<%@ page import="com.shopNest.product.Cart, com.shopNest.product.Product" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cart page</title>
</head>
<body>
		<h1>this is cart page</h1>
		<%
			// Iterate through the items in the cart and display their details
			for(Product item : cart.getItems()) {
				out.println("<li>" + item.getName() + " - " + item.getPrice() + "</li>");
			}
		%>
	</ul>
	<h2>Total: <%=cart.getTotal()%></h2>
</body>
</html>