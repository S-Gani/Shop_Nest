<%@ page import="com.shopNest.dbHandler.DataFetcher" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin home</title>
</head>
<body>

	
	<%	
		List userList=DataFetcher.fetchUsersInfo();
	%>
	
	<div class="panel">
	<div class="button-container">
		<button class="active" data-tab="tab1">View customers Info</button>
		<button data-tab="tab2">View products info</button>
		<button data-tab="tab3">Add new product</button>
		</div>
	
		<div class="content-container">
		<div class="tab active" id="tab1">
		<table border>
			<thead>
				<tr>
					<th>Username</th>
					<th>Email</th>
					<th>Gender</th>
					<th>Address</th>
				</tr>
			</thead>
			<tbody>
				<%
					for(int i=0;i<userList.size();i++){
						String[] custArr=((String)userList.get(i)).split(":");
						
				%>
				<tr>
					<td><%= custArr[0] %></td>
					<td><%= custArr[1] %></td>
					<td><%= custArr[2] %></td>
					<td><%= custArr[3] %></td>
				</tr>
				<%
					}
				%>
			</tbody>
		</table>
	</div>
	<%
	List prodList=DataFetcher.fetchProductsInfo();
	%>
	<div class="tab" id="tab2">
		<table border>
			<thead>
				<tr>
					<th>ID</th>
					<th>Name</th>
					<th>Description</th>
					<th>Price</th>
					<th>Image</th>
				</tr>
			</thead>
			<tbody>
				<%
				for(int i=0;i<prodList.size();i++){
					String[] prodArr=((String)prodList.get(i)).split(":");
					
				%>
				<tr>
					<td><%= prodArr[0] %></td>
					<td><%= prodArr[1] %></td>
					<td><%= prodArr[2] %></td>
					<td><%= prodArr[3] %></td>
					<td><img src="prodimg/<%= prodArr[4] %>" alt="product1"></td>
				</tr>
				<%
				}
				%>
				<tr>
				</tr>
			</tbody>
		</table>
	</div>
	<div class="tab" id="tab3">
		<form action="addp" method="post">
			<div class="form-group">
			<label for="product-id">Product Id</label>
			<input type="text" id="product-id" name="product-id" required/>
			</div>
			<br><br>
			<div class="form-group">
			<label for="product-name">Product Name</label>
			<input type="text" id="product-name" name="product-name" required/>
			</div>
			<br><br>
			<div class="form-group">
			<label for="product-description">Product Description</label>
			<input type="text" id="product-description" name="product-description" required/>
			</div>
			<br><br>
			<div class="form-group">
			<label for="product-price">Product Price</label>
			<input type="text" id="product-price" name="product-price" required/>
			</div>
			<br><br>
			<div class="form-group">
			<label for="product-image">Product Image File name</label>
			<input type="text" id="product-image" name="product-image" />
			</div>
			<br><br>
			<button type="submit">Submit</button>
		</form>
	</div>
</div>
</div>

</body>
</html>