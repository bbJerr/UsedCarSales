<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Cars</title>
<link rel="stylesheet" href="css/style.css">
<!--Box Icons-->
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>

<%@ include file="header.jsp"%>

	<div class="container" style="margin-bottom:30px;">
		<sec:authorize access="hasRole('Users')">
			<!-- post car link-->
			<div class="row p-3 mb-5" style="background-color: #ffff; border-radius:5px; border: 1px solid #E0D8DA;">
				<div class="col-6">
					<p class="text-black font-weight-bold"
						style="margin-bottom: 0px; font-weight: bolder;">Upgrade your ride!</p>
					<p class="text-black" style="margin-bottom: 0px;">Sell your car hassle-free and get the best deal today. </p>
				</div>
				<div class="col-4"></div>
				<div class="col col-lg-2" style="text-align: end; margin: auto;">
					<span> <!-- Button trigger modal -->
						<button type="button" class="btn" data-bs-toggle="modal"
							data-bs-target="#exampleModal" style="font-color: white;">
							Sell Now</button>
					</span>
					<!-- Modal -->

					<div class="modal fade" id="exampleModal" tabindex="-1"
						aria-labelledby="exampleModalLabel" aria-hidden="true"
						role="dialog">
						<div class="modal-dialog">
							<div class="modal-content">

								<div class="modal-header">
									<h5 class="modal-title" id="exampleModalLabel">Sell Your
										Car Today!</h5>
									<button type="button" class="btn-close" data-bs-dismiss="modal"
										aria-label="Close"></button>
								</div>
								<div class="modal-body">
									<c:if test="${success_post != null}">
										<div class="alert alert-success">${success_post}</div>
									</c:if>

									<!-- Car Post Form -->
									<sf:form action="car_post" method="post" class="was-validated"
										modelAttribute="car" enctype="multipart/form-data">
										<div class="mb-3 mt-3">
											<label for="name" class="d-flex form-label">Name:</label>
											<sf:input type="text" class="form-control"
												placeholder="Enter car name" name="name" path="name"
												required="true" />
											<div class="valid-feedback">Valid.</div>
											<div class="invalid-feedback">Please fill out this
												field.</div>
										</div>
										<div class="mb-3">
											<label for="model" class="d-flex form-label">Model:</label>
											<sf:input type="text" class="form-control"
												placeholder="Enter model" name="model" path="model"
												required="true" />
											<div class="valid-feedback">Valid.</div>
											<div class="invalid-feedback">Please fill out this
												field.</div>
										</div>
										<div class="mb-3">
											<label for="price" class="d-flex form-label">Price
												(RM):</label>
											<sf:input type="text" class="form-control" id="price"
												placeholder="Enter car price" name="price" path="price"
												required="true" />
											<div class="valid-feedback">Valid.</div>
											<div class="invalid-feedback">Please fill out this
												field.</div>
										</div>
										<div class="mb-3">
											<label for="make" class="d-flex form-label">Make
												Year:</label>
											<sf:input type="text" class="form-control"
												placeholder="Enter make year" name="make" path="make"
												required="true" />
											<div class="valid-feedback">Valid.</div>
											<div class="invalid-feedback">Please fill out this
												field.</div>
										</div>
										<div class="mb-3">
											<label for="registration" class="d-flex form-label">Registration
												Date:</label>
											<sf:input type="text" class="form-control" id="registration"
												placeholder="Enter registration date" name="registration"
												path="registration" required="true" />
											<div class="valid-feedback">Valid.</div>
											<div class="invalid-feedback">Please fill out this
												field.</div>
										</div>
										<div class="mb-3">
											<label class="d-flex form-label">Photo:</label> <input
												type="file" class="form-control" name="fileImage" id="photo"
												accept="image/png, image/jpeg" required="true" />
											<div class="valid-feedback">Valid.</div>
											<div class="invalid-feedback">Please fill out this
												field.</div>
										</div>

										<div class="holder"
											style="height: 300px; width: 300px; margin: auto;">
											<img id="imgPreview" src="#" alt="image preview"
												style="width: inherit;" />
										</div>

										<button type="submit" class="btn btn-primary d-flex">Post</button>
									</sf:form>
									<script>
						            $(document).ready(() => {
						            	
						                $("#photo").change(function () {
						                    const file = this.files[0];
						                    if (file) {
						                        let reader = new FileReader();
						                        reader.onload = function (event) {
						                            $("#imgPreview")
						                              .attr("src", event.target.result);
						                        };
						                        reader.readAsDataURL(file);
						                    }
						                });
						            });
						        </script>
									<!-- Car Post Form -->
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-secondary"
										data-bs-dismiss="modal">Close</button>

								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</sec:authorize>
		<!-- post car link-->


		<!-- list of all cars posted -->
		<div class="row" style="gap: 60px; padding-left:90px;">
			<c:forEach items="${cars}" var="c">
				<c:set var="id" value="${c.id}"></c:set>
				<c:if test="${success_post == null}">

					<c:if test="${c.sellStatus != 'sold'}">
						<div class="card" style="width: 400px">
							<img class="card-img-top" src="${c.photoImagePath}"
								alt="${c.photos}" style="width: 100%">
							<div class="card-body">
								<h4 class="card-title">${c.name}</h4>
								<p class="card-text">
									<i class="fas fa-tags"></i>&nbsp;RM ${c.price}
								</p>

								<!--<a href="#" class="btn"
							style="background-color: red; margin-right: 40px;">Book a
							Test Drive</a>-->
								<a href="/car_detail?cid=${c.id}" class="btn btn-danger">View
									Car Details</a>
							</div>
						</div>
					</c:if>

				</c:if>
			</c:forEach>
			<c:if test="${success_post != null}">
				<div class="alert alert-success">${success_post}
					Click here to <a href="/car_detail?cid=${id}">View</a> your car
					post
				</div>
			</c:if>
		</div>
		<!-- list of all cars posted -->
	</div>

	<%@ include file="footer.jsp"%>
	
<!--Link To JS-->
    <script src="js/main.js"></script>		
</body>
</html>