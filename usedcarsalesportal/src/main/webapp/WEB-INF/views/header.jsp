<!--Navbar-->
  <link rel="stylesheet" href="css/style.css">  
    
    <div style="margin-bottom: 100px;">
    <header>
        <!--Nav Container-->
        <div class="nav container">
            <!--Menu Icon-->
            <i class='bx bx-menu' id="menu-icon"></i>
            <!--Logo-->
            <a href="cars" class="logo">UsedCar<span>Sales</span></a>           
            
            <sec:authorize access="isAuthenticated()">
           		<sec:authorize access="hasRole('Users')">
		            <ul class="navbar" style="margin: 0px; margin-left:40%;">		                
		                <li> <a href="cars">Cars</a></li>
		            </ul>
            	</sec:authorize>
            	
            	<sec:authorize access="hasRole('Administrator')">
		            <ul class="navbar" style="margin: 0px;">		                
		                <li> <a href="cars">Cars</a></li>
		                <li> <a href="all_cars">Car Management</a></li>
		                <li> <a href="users">User Management</a></li>
		            </ul>
            	</sec:authorize>
            	
            	<sec:authorize access="hasAnyRole('Administrator','Users')">
		            <ul class="navbar" style="margin: 0px; padding: 0px;">
		            	<li> <a href="profile">Profile</a></li>		            	
					</ul>
		            <!--search Icon-->
		            <i class='bx bx-search' id="search-icon"></i>
		            <!--search Box-->
		            <sf:form action="search" method="get">
		            <div class="search-box container">
		                <input type="search" name="keyword" aria-label="Search" 
		                aria-describedby="search-addon" placeholder="Search here...">           
		            </div>
		            </sf:form>
		            <form action="logout" method="post" style="padding: 7px;">
							<input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" /> <input type="submit" name="Logout"
								value="Logout" class="btn btn-danger"></input>
						</form>
            	</sec:authorize>
            </sec:authorize>
        </div>
    </header>
    </div>