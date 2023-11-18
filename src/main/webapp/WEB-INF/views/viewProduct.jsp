<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<jsp:include page="base.jsp"></jsp:include>
</head>
<body>
<% session.getAttribute("cart-list"); %>
<h2>Total Balance: $ ${auth.balance}</h2>
	<div class="container mt-5">
		<div class="row">
			<div class="col-md-7 offset-md-2">
				<div class="card">
					<div class="card-body">
						<h2 class="text-center">View Product</h2>
						<table class="table" border="1" width="100%">
							<thead>
								<tr>
									<th scope="col">Id</th>
									<th scope="col">Product Name</th>
									<th scope="col">Product Description</th>
									<th scope="col">Product Sell Price</th>
									<th scope="col">Product Cost Price</th>
									<th scope="col">Product Stock Unit</th>
									<th scope="col">Seller Id</th>
									<th scope="col">Edit</th>
									<th scope="col">Delete</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${products}" var="prod">
								<c:set var="total"
										value="${total + item.product.prodCostPrice * item.totalUnit }"></c:set>
																
									<tr>
										<th scope="row">${prod.id}</th>
										<td>${prod.prodName}</td>
										<td>${prod.prodDesc}</td>
										<td>${prod.prodSellPrice}</td>
										<td>${prod.prodCostPrice}</td>
										<td>${prod.stockUnit}</td>
										<td>${prod.user.id}</td>
										<td><a href="editProduct/${prod.id}">Edit</a></td>
										<td><a href="deleteProduct/${prod.id}">Delete</a></td>
										
									</tr>
								</c:forEach>
								
							</tbody>
						</table>
						<div class="text-center mt-3">
							<a href="product">Add Product</a>
						</div>
						<div class="text-center mt-3">
							<h5>
								<a href="${pageContext.request.contextPath}/seller">Go To Home</a>
							</h5>
						</div>
						<div class="text-center mt-3">
							<h5>
								<a href="${pageContext.request.contextPath}/logout">Logout</a>
							</h5>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>