<%
	String name = (String)session.getAttribute("name");
	String email = (String)session.getAttribute("email");
	
%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="../style/login-page.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link rel="stylesheet" href="../style/css/ionicons.min.css">
<link rel="stylesheet" href="../style/css/style.css">

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<style>
.form
{
	display: flex;
}
.img-con
{
	height: 100px;
	width: 100px;
	margin: 20px;
}
.form-container
{
	margin-left: -100px;
	text-align: -webkit-center;
	margin-top: 20px;
	margin-right: -500px;
}
.btn-cus
{
	margin: 5px !important;
}
h4
{
	color: black;
	padding-right: 5px;
	margin-top: 7px !important;
}
a
{
	text-decoration: none;
	color: white;
	font-size: 15px;
}
a:hover
{
	text-decoration: none;
	color: white;
}
h5
{
	color: black;
	padding-right: 5px;
	margin-top: 8px !important;
	margin-right: 10px;
	cursor: pointer;
	font-weight: 600 !important;
	font-style: italic !important;
	font-family: 'Prompt', sans-serif !important;
}
h5:hover
{
	color: #12cc94;
}
i
{
	color: black;
	padding: 4px;
}
i:hover
{
	color: white;
}
button:hover
{
	color: white !important;
}
.cart
{
	margin-right: 10px; 
}

</style>
<title>Home</title>
</head>
<body>

<nav class="navbar navbar-expand-lg bg-light">
  <div class="container-fluid">
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
      <a class="navbar-brand" href="#">MOVIES</a>
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="./home.jsp">Home</a>
        </li>
      </ul>
      <h4>Hello,</h4>
      <a href="#<%=name%>"><h5><%=name %></h5></a>
      <a href="./cart.jsp" class="btn btn-outline-primary cart">CART</a>
      <a href="./logout.jsp" class="btn btn-outline-danger margin-left margin-right">LOG OUT</a>
    </div>
  </div>
</nav>

<div class="logo" id="fade_out">
	<img class="top" src="../images/pic2.png" alt="">
	<img class="buttom" src="../images/pic1.png" alt="">


<div class="container-fluid form">
	<div class="">
		<div class="col-md-10 col-sm-4 col-xs-12">
			<form class="form-container" action="./search-result.jsp" method="get">
			  <div class="mb-3">
			    <label for="exampleInputEmail1" class="form-label" style="font-size:20px; font-style:italic;  color:#7dffd8;">SEARCH YOUR MOVIE</label>
			  </div>
			  <div class="mb-3">
			    <label for="exampleInputPassword1" class="form-label">ENTER THEATER / PLACE NAME</label>
			    <input type="text" class="form-control" id="exampleInputPassword1" name="searchValue" placeholder="INOX / KOLKATA" required>
			  </div>
			  <input type="submit" class="btn btn-primary" value="SEARCH">
			</form>
		</div>
	</div>
</div>
</div>
</body>
</html>