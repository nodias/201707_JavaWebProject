<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

	<div class="container">
		<h2>Movie List</h2>

		<div class="col-lg-1 sidenav">
			<ul class="nav nav-pills">
				<li class="active"><a data-toggle="tab" href="#home">action</a></li>
				<li><a data-toggle="tab" href="#menu1">gongpu</a></li>
				<li><a data-toggle="tab" href="#menu2">horor</a></li>
				<li><a data-toggle="tab" href="#menu3">suspense</a></li>
			</ul>
		</div>
		<div class="tab-content">
			<div id="home" class="tab-pane fade in active">a</div>
			<div id="menu1" class="tab-pane fade">b</div>
			<div id="menu2" class="tab-pane fade">c</div>
			<div id="menu3" class="tab-pane fade">d</div>
		</div>
	</div>

</body>
</html>
