<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
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
	<h3 style="font-weight: bold;">LOGIN</h3>
	<div class="register-container">
	  <div class="form-container">
	  <c:url var="post_url" value="/login" />
	    <form action="${post_url}" method="post">
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
	      <div class="mb-3 form-group">
	        <label for="username">Username:</label>
	        <input type="text" class="form-control" id="username" placeholder="Enter username" name="username" value="" required>
	      </div>
	      <div class="mb-3 form-group">
	        <label for="password">Password:</label>
	        <input type="password" class="form-control" id="password" placeholder="Enter password" name="password" value="" required>
	      </div>
	      <p class="form-text text-muted text-center">Don't have an account? <a href="register_user" style="color: #d90429; text-decoration: none;">Register now</a></p>
	      <c:if test="${error_string != null}">
			<div class="alert alert-danger">${error_string}</div>
		  </c:if>
	      <div class="row justify-content-center"> <!-- Center the button -->
	        <div class="mb-2 form-group">
	          <button type="submit" name="Login" class="btn btn-danger w-100">Login</button> <!-- Add w-100 class to make button full width -->
	        </div>
	      </div>
	    </form>
	  </div>
	</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
<!-- Font Awesome JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/js/all.min.js"></script>

<script src="js/main.js"></script>
</body>
</html>