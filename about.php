<?php include("header.php");?>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<meta name="viewport"
		content="width=device-width, initial-scale=1.0">
	
	<title>About Us</title>
	<style>
		* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

/* Global Styles */

body {
	font-family: Arial, sans-serif;
	background-color: white;
}

/* Header */




.logo {
	font-size: 1.5rem;
	font-weight: bold;
	color: #40b736;
}





/* About Section */

.about {
	
	padding: 100px 0 20px 0;
	text-align: center;
}

.about h1 {
	font-size: 2.5rem;
	margin-bottom: 20px;
}

.about p {
	font-size: 1rem;
	color: #323030;
	max-width: 800px;
	margin: 0 auto;
}

.about-info {
	margin: 2rem 2rem;
	display: flex;
	align-items: center;
	justify-content: center;
	text-align: left;
}

.about-img {
	width: 20rem;
	height: 20rem;

}

.about-img img {
	width: 100%;
	height: 100%;
	border-radius: 5px;
	object-fit: contain;
}

.about-info p {
	font-size: 1.3rem;
	margin: 0 2rem;
	text-align: justify;
}

button {
	border: none;
	outline: 0;
	padding: 10px;
	margin: 2rem;
	font-size: 1rem;
	color: white;
	background-color: lightblue;
	text-align: center;
	cursor: pointer;
	width: 15rem;
	border-radius: 4px;
}

button:hover {
	background-color: lightblue;
}

/* Team Section */

.team {
	padding: 30px 0;
	text-align: center;
}

.team h1 {
	font-size: 2.5rem;
	margin-bottom: 20px;
}

.team-cards {
	display: flex;
	flex-wrap: wrap;
	justify-content: center;
	gap: 15px;
	margin-top: 20px;
}

.card {
	background-color: white;
	border-radius: 6px;
	box-shadow: 0 4px 6px rgba(0, 0, 0, 0.5);
	overflow: hidden;
	transition: transform 0.2s, box-shadow 0.2s;
	width: 18rem;
	height: 25rem;
	margin-top: 10px;
}

.card:hover {
	transform: translateY(-5px);
	box-shadow: 0 8px 12px rgba(0, 0, 0, 0.5);
}

.card-img {
	width: 18rem;
	height: 12rem;
}

.card-img img {
	width: 100%;
	height: 100%;
	object-fit: fill;
}

.card-info button {
	margin: 2rem 1rem;
}

.card-name {
	font-size: 2rem;
	margin: 10px 0;
}

.card-role {
	font-size: 1rem;
	color: #888;
	margin: 5px 0;
}

.card-email {
	font-size: 1rem;
	color: #555;
}




	</style>
</head>

<body>
	

	<section class="about">
	<div class="title text-center mb-sm-5 mb-4">
				<h3 class="title-w3 text-bl text-center font-weight-bold">About Us</h3>
				<div class="arrw">
					<i aria-hidden="true"></i>
				</div>
			</div>
	
		<div class="about-info">
			<div class="about-img">
				<img src="images/BVM Logo-1.png" alt="BVM">
			</div>
			<div>
			<p> Birla Vishvakarma Mahavidyalaya Engineering College was established in 1948 from donations made by the Birla Education Trust on the behest of Sardar Vallabhbhai Patel, the first Home Minister of independent India. The college was inaugurated by Lord Mountbatten, the Governor General of India on 14 June 1948, and rose to prominence under the stewardship of Prof. Junarkar and Prof. K.M. Dholakia. It was one of the first few colleges in India that adopted the progressive credit system of relative grading in India. The college has awarded degrees to over 17,000 graduates, and has its alumni spread across the globe.
			</p>
			<a href="https://https://bvmengineering.ac.in/">
  <button ;>Click Me</button>
</a>

			</div>
		</div>
	</section>

	
</body>

</html>
<?php include("footer.php");?>