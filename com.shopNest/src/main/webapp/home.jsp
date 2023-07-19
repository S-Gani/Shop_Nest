<%@ page import="com.shopNest.dbHandler.DataFetcher" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ShopNest</title>
</head>
<body>
	<%
		List prodList=DataFetcher.fetchProductsInfo();
	%>
	
	<header>
		<h1>ShopNest</h1>
		<nav>
			<ul>
				<li>
				<a href="#" class="view-cart">
				<i class="fas fa-shopping-cart"></i>
				<span>
					<a href="cart.jsp">
						<button class="add-to-cart">View Cart</button>
					</a>
				</span>
				</a>
				</li>
			</ul>
		</nav>
	</header>
	<main>
		<%
			String[] prodArr2=null;;
			for(int i=0;i<prodList.size();i++){
				String[] prodArr=((String)prodList.get(i)).split(":");
				prodArr2=prodArr;
		%>
		<section class="product">
			<img src="prodimg/<%= prodArr[4] %>" alt="product1">
			<h2><%= prodArr[1] %></h2>
			<p><%= prodArr[2] %></p>
			<span class="price"><%= prodArr[3] %></span>
			<form method="post" action="add-to-cart">
				<input type="hidden" name="productId" value="<%=
					Integer.parseInt(prodArr[0])
				%>">
				<input type="submit" value="Add to Cart">
			</form>
		</section>
		<%
			}
		%>
	</main>
</body>
</html>