<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Home Page</title>
<link rel="stylesheet" href="css/style.css">
<!--Box Icons-->
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</head>
<body>
	<header>
        <!--Nav Container-->
        <div class="nav container">
            <!--Menu Icon-->
            <i class='bx bx-menu' id="menu-icon"></i>
            <!--Logo-->
            <a href="/" class="logo">UsedCar<span>Sales</span></a>
            <!--Navbar List-->
            <ul class="navbar">
                <li> <a href="/" class="active">Home</a></li>
                <li> <a href="login">Login</a></li>
                <li> <a href="register_user">Register</a></li>
            </ul>
            <!--search Icon-->
            <i class='bx bx-search' id="search-icon"></i>
            <!--search Box-->
            <div class="search-box container">
                <input type="search" name="" id="" placeholder="Search here...">
            </div>
        </div>
    </header>

    <!--Home section-->
    <section class="home" id="home">
        <div class="home-text">
            <h1>Discover Your<br><span>Perfect</span> Ride Today</h1>
            <p>Browse through our extensive collection of quality pre-owned vehicles <br>to find the perfect match for your lifestyle and budget.</p>
            <!--home Button-->
            <a href="login" class="btn">Discover Now</a>
        </div>
    </section>
    <!--cars section-->
    <section class="cars" id="cars">
        <div class="heading">
            <span>All Cars</span>
            <h2>We have all types cars</h2>
            <p>Browse through our extensive collection of quality pre-owned vehicles <br>to find the perfect match for your lifestyle and budget.</p>
        </div>
        <!--Cars container-->
        <div class="cars-container container">
            <!--Box 1-->
            <div class="box">
                <img src="/images/car1.jpg" alt="">
                <h2>Porche car</h2>
            </div>
            <!--Box 2-->
            <div class="box">
                <img src="/images/car2.jpg" alt="">
                <h2>Porche car</h2>
            </div>

               <!--Box 7-->
        <div class="box">
            <img src="/images/car5.jpg" alt="">
            <h2>Porche car</h2>
        </div>

            <!--Box 3-->
            <div class="box">
                <img src="/images/car3.jpg" alt="">
                <h2>Porche car</h2>
            </div>

            <!--Box 4-->
            <div class="box">
                <img src="/images/car4.jpg" alt="">
                <h2>Porche car</h2>
            </div>

            <!--Box 5-->
            <div class="box">
                <img src="/images/car7.jpeg" alt="">
                <h2>Porche car</h2>
            </div>

            <!--Box 6-->
            <div class="box">
                <img src="/images/car6.jpg" alt="">
                <h2>Porche car</h2>
            </div>

            <!--Box 7-->
            <div class="box">
                <img src="/images/car5.jpg" alt="">
                <h2>Porche car</h2>
            </div>

            <!--Box 8-->
            <div class="box">
                <img src="/images/car8.jpg" alt="">
                <h2>Porche car</h2>
            </div>
        </div>

    </section>

    <!--About-->
    <section>
        <section class="about container" id="about">
            <div class="about-img">
                <img src="/images/about.png" alt="">
            </div>
            <div class="about-text">
                <span>About Us</span>
                <h2>Cheap Prices With <br> Quality Cars</h2>
                <p>Browse through our extensive collection of quality pre-owned vehicles to find the perfect match for your lifestyle and budget.</p>
                <!--About Button-->
                <a href="login" class="btn">Learn More</a>
            </div>
        </section>
    </section>
    
	<%@ include file="footer.jsp"%>
	
    <!--Link To JS-->
    <script src="js/main.js"></script>
</body>
</html>