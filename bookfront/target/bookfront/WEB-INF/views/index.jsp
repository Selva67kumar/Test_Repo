<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Librie Kart</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="<c:url value="resource/Bootstrap/bootstrap.min.css"/>">
<script src="<c:url value="resource/Bootstrap/jquery.min.js"/>"></script>
<script src="<c:url value="resource/Bootstrap/bootstrap.min.js"/>"></script>
<link href="<c:url value="resource/css/style.css"/>" rel="stylesheet"
	type="text/css" />

</head>
<body >

	<div class="jumbotron" >
		<div class="row">
			<div class="col-md-2" >
				<img class="img-responsive"
					src="<c:url value="resource/images/icon.png"/>" alt="libriekart"
					width="150" height="150" style=" float: right" >
			</div>
			<div class="col-md-10">

				<h1 style="color: red">
					<font style="font-family:Comic Sans MS"><b>BOOK Basket</b></font>
				</h1>
				<p style="color: white">Your own Book Library.</p>

			</div>
		</div>
	</div>


	<nav class="navbar navbar-inverse navbar-bottom" role="navigation">
		<div class="container-fluid" >
			<div class="navbar-header">
				<a class="navbar-brand" class="active" href="home">Home</a>
			</div>
			<ul class="nav navbar-nav">
				<c:if test="${logout}">
					<li><a href="login">Login</a></li>
					<li><a href="register">Register</a></li>
				</c:if>
				<c:if test="${loggin}">
					<li><a href="category">Category</a></li>
					<li><a href="supplier">Supplier</a></li>
					<li><a href="product">Product</a></li>
				</c:if>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#">Mycart</a></li>
				<c:if test="${loggin}">
					<li><a href="logout">logout</a></li>
					<li><a href="#">${name}</a></li>
				</c:if>
			</ul>
		</div>
	</nav>


	<div class="row">
		<div class="col-md-2">
		
  </div>
		
		<div class="col-md-8">
			<c:if test="${para}">
				<div id="myCarousel" class="carousel slide" data-ride="carousel">

					<ol class="carousel-indicators">
						<li data-target="#" data-slide-to="0"
							class="active"></li>
						<li data-target="#" data-slide-to="1"></li>
						<li data-target="#" data-slide-to="2"></li>
						<li data-target="#" data-slide-to="3"></li>
						<li data-target="#" data-slide-to="4"></li>
						<li data-target="#" data-slide-to="5"></li>
					</ol>
					<!-- Wrapper for slides -->
					<div class="carousel-inner" role="listbox">
						<div class="item active">
							<img class="img-responsive"
								src="<c:url value="resource/images/Bo1.jpg"/>" alt="Book">
							<div class="carousel-caption"></div>
						</div>

						<div class="item">
							<img class="img-responsive"
								src="<c:url value="resource/images/Bo2.jpg"/>" alt="Book">
							<div class="carousel-caption"></div>
						</div>

						<div class="item">
							<img class="img-responsive"
								src="<c:url value="resource/images/Bo3.jpg"/>" alt="Book">
							<div class="carousel-caption"></div>
						</div>

						<div class="item">
							<img class="img-responsive"
								src="<c:url value="resource/images/Bo4.jpg"/>" alt="Book">
							<div class="carousel-caption"></div>
						</div>

						<div class="item">
							<img class="img-responsive"
								src="<c:url value="resource/images/Bo5.jpg"/>" alt="Book">
							<div class="carousel-caption"></div>
						</div>

						<div class="item">
							<img class="img-responsive"
								src="<c:url value="resource/images/Bo6.jpg"/>" alt="Book">
							<div class="carousel-caption"></div>
						</div>

					</div>

				</div>
			</c:if>




			<c:if test="${cate}">

				<jsp:include page="category.jsp"></jsp:include>

			</c:if>

			<c:if test="${pro}">

				<jsp:include page="product.jsp"></jsp:include>

			</c:if>

			<c:if test="${supp}">

				<jsp:include page="supplier.jsp"></jsp:include>

			</c:if>

			<c:if test="${signup}">

				<jsp:include page="register.jsp"></jsp:include>

			</c:if>
			<c:if test="${signin}">


				<jsp:include page="login.jsp"></jsp:include>

			</c:if>
		</div>
		<div class="col-md-2">
			<ul class="side">
				<li><a href="#">Biographies</a></li>
				<li><a href="#">Science fiction</a></li>
				<li><a href="#">Romance</a></li>
				<li><a href="#">Health</a></li>
				<li><a href="#">Travel</a></li>
				<li><a href="#">Children's</a></li>
				<li><a href="#">Encyclopedias</a></li>
				<li><a href="#">Poetry</a></li>
				<li><a href="#">Comics</a></li>
				<li><a href="#">Prayer books</a></li>
				<li><a href="#">Cookbooks</a></li>
				<li><a href="#">Series</a></li>
				<li><a href="#">Fantasy</a></li>
				<li><a href="#">Dictionaries</a></li>
				<li><a href="#">Art</a></li>
			</ul>
		</div>

	</div>


</body>
</html>