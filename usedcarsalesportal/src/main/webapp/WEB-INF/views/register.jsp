<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<link rel="stylesheet" href="css/style.css">
<!--Box Icons-->
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- Font Awesome -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
<style>
  /* Custom styles */
  body {
    background-image: url('/images/Background-home.png');
    background-size: cover;
    background-position: center;
    height: 100vh;
    margin: 0;
    margin-left: 10%;
    align-items: center;
    font-family: 'Poppins', sans-serif;
  }
  .register-container {
    width: 100%; /* Ensure full width */
    max-width: 400px;
    padding: 30px;
    border: 1px solid #ccc;
    border-radius: 5px;
    border-top-left-radius: 0px;
    border-top-right-radius: 0px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    background-color: rgba(255, 255, 255, 0.8); /* Adjust the opacity as needed */
  }
  h3 {    
    color: white;
    max-width: 400px;
    border-radius: 5px;
    border-bottom-left-radius: 0px;
    border-bottom-right-radius: 0px;
    background-color: #d90429;
    padding: 30px;
    margin: 0;
  }
  p{
  	margin-bottom: 30px;
  }
  .form-group {
    margin-bottom: 20px;
  }
  .form-group label {
    font-weight: bold;
  }
  .fa-input {
    position: absolute;
    top: 50%;
    right: 10px;
    transform: translateY(-50%);
  }

  /* Media queries for responsiveness */
  @media (max-width: 576px) {
    .register-container {
      max-width: 90%;
    }
  }
</style>
</head>
<body>
<div style="padding-bottom: 100px;">
<header>
    <!--Nav Container-->
    <div class="nav container">
        <!--Menu Icon-->
        <i class='bx bx-menu' id="menu-icon"></i>
        <!--Logo-->
        <a href="/" class="logo" style="padding-left:4%;">UsedCar<span>Sales</span></a>
        <!--Navbar List-->
        <div style="padding-right:25%;">
        <ul class="navbar">
            <li> <a href="/">Home</a></li>
            <li> <a href="login">Login</a></li>
            <li> <a href="register_user">Register</a></li>
        </ul>
        </div>   
    </div>
</header>
</div>
	<h3 style="font-weight: bold;">REGISTER</h3>
	<div class="register-container">
	  <div class="form-container">
	    <sf:form action="register" method="post" modelAttribute="user">
	      <div class="mb-3 form-group">
	        <label for="name">Name:</label>
	        <sf:input type="text" class="form-control" placeholder="Enter name" path="name" required="true" />
	      </div>
	      <div class="mb-3 form-group">
	        <label for="userName">Username:</label>
	        <sf:input type="text" class="form-control" id="userName" placeholder="Enter username" path="userName" required="true" />
	      </div>
	      <div class="mb-3 form-group">
	        <label for="email">Email:</label>
	        <sf:input type="email" class="form-control" placeholder="Enter email" path="email" required="true" />
	      </div>
	      <div class="mb-3 form-group">
	        <label for="password">Password:</label>
	        <sf:input type="password" class="form-control" id="password" placeholder="Enter password" path="password" required="true" />
	      </div>
	      <p class="form-text text-muted text-center">Already have an account? <a href="login" style="color: #d90429; text-decoration: none;">Login now</a></p>
	      <c:if test="${success_register != null}">
	        <div class="alert alert-success">${success_register}</div>
	      </c:if>
	      <div class="row justify-content-center">
	        <div class="mb-2 form-group">
	          <input type="submit" value="Register" class="btn btn-danger" />
	        </div>
	      </div>
	    </sf:form>
	  </div>
	</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
<!-- Font Awesome JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/js/all.min.js"></script>

<script src="js/main.js"></script>
</body>
</html>
