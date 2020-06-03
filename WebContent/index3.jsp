<%@page import="org.jsoup.nodes.Element"%>
<%@page import="org.jsoup.select.Elements"%>
<%@page import="org.jsoup.Jsoup"%>
<%@page import="org.jsoup.nodes.Document"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
	Phase Shift by TEMPLATED
	templated.co @templatedco
	Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html>
	<head>
		<title>Giants 커뮤니티게시판</title>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<!--[if lte IE 8]><script src="css/ie/html5shiv.js"></script><![endif]-->
		 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
		
		<script src="js/jquery.min.js"></script>
		<script src="js/jquery.dropotron.min.js"></script>
		<script src="js/skel.min.js"></script>
		<script src="js/skel-layers.min.js"></script>
		<script src="js/init.js"></script>
			<link rel="stylesheet" href="css/skel.css" />
			<link rel="stylesheet" href="css/style.css" />
			<link rel="stylesheet" href="css/style-wide.css" />
		<!--[if lte IE 8]><link rel="stylesheet" href="css/ie/v8.css" /><![endif]-->
	</head>
	<body>

		<!-- Wrapper -->
			<div class="wrapper style1">

				<!-- Header -->
					<jsp:include page="header.jsp"/>

				<!-- Banner -->
					<div id="banner" class="container">
						<section>
							<p>This is <strong>Phase Shift</strong>, a responsive HTML5 site template freebie by <a href="http://templated.co">TEMPLATED</a>. Released for free under the <a href="http://templated.co/license">Creative Commons Attribution</a> license, so use it for whatever (personal or commercial) &ndash; just give us credit! Check out more of our stuff at <a href="http://templated.co">our site</a> or follow us on <a href="http://twitter.com/templatedco">Twitter</a>.</p>
							<a href="#" class="button medium">Read More</a>
						</section>
					</div>

				<!-- Extra -->
					<div id="extra">
						<div class="container">
							<div class="row no-collapse-1">
								<section class="4u"> <a href="#" class="image featured"><img src="images/pic01.jpg" alt=""></a>
									<div class="box">
										<p>Donec leo, vivamus fermentum nibh in augue praesent a lacus at urna congue rutrum  wisi maecenas ligula.</p>
										<a href="#" class="button">Read More</a> </div>
								</section>
								<section class="4u"> <a href="#" class="image featured"><img src="images/pic02.jpg" alt=""></a>
									<div class="box">
										<p>Donec leo, vivamus fermentum nibh in augue praesent a lacus at urna congue rutrum  wisi maecenas ligula.</p>
										<a href="#" class="button">Read More</a> </div>
								</section>
								<section class="4u"> <a href="#" class="image featured"><img src="images/pic03.jpg" alt=""></a>
									<div class="box">
										<p>Donec leo, vivamus fermentum nibh in augue praesent a lacus at urna congue rutrum  wisi maecenas ligula.</p>
										<a href="#" class="button">Read More</a> </div>
								</section>
							</div>
							<div class="row no-collapse-1">
								<section class="4u"> <a href="#" class="image featured"><img src="images/pic01.jpg" alt=""></a>
									<div class="box">
										<p>Donec leo, vivamus fermentum nibh in augue praesent a lacus at urna congue rutrum  wisi maecenas ligula.</p>
										<a href="#" class="button">Read More</a> </div>
								</section>
								<section class="4u"> <a href="#" class="image featured"><img src="images/pic02.jpg" alt=""></a>
									<div class="box">
										<p>Donec leo, vivamus fermentum nibh in augue praesent a lacus at urna congue rutrum  wisi maecenas ligula.</p>
										<a href="#" class="button">Read More</a> </div>
								</section>
								<section class="4u"> <a href="#" class="image featured"><img src="images/pic03.jpg" alt=""></a>
									<div class="box">
										<p>Donec leo, vivamus fermentum nibh in augue praesent a lacus at urna congue rutrum  wisi maecenas ligula.</p>
										<a href="#" class="button">Read More</a> </div>
								</section>
							</div>
						</div>
					</div>
<%
			Document doc = Jsoup.connect("https://www.koreabaseball.com/TeamRank/TeamRank.aspx").get();
			
			Elements elements = doc.select("table.tData");
			
			Element element = elements.get(0);
			
			Elements lis1 = element.select("th");
			Elements lis2 = element.select("tbody");

		

%>

<br>

<div id="banner" class="container" style="margin-bottom: -10px">
						<section>
							<p>프로야구 실시간 순위</p>
						</section>
					</div>
			<!-- Main -->
					<div id="main" style="margin-left: 30px">
						<div class="container">
							<div class="row"> 
								
							
								
								<!-- Content -->
											<table class="table table-hover" id="tb" style="text-align:center; border: 1px solid white" bgcolor = "white">
											<tr>
<%
	for(Element e : lis1){
		out.print("<th>" + e.select("th").get(0).text() + "</th>");
	}
%>


											</tr>
											
<%
	for(Element e : lis2){
		out.print("<tr>");
		int cnt = 0;
		for(int i = 0 ; i < 120; i++){
			out.print("<td>" + e.select("td").get(i).text() + "</td>");
			cnt++;
			if(cnt % 12 == 0 && cnt != 0){
				out.print("</tr><tr>");
			}
		
		}
	}


%>																						
											</table>
								</div>
									<section>
										<ul class="style">
											<li class="fa fa-cogs">
												<h3>Integer ultrices</h3>
												<span>In posuere eleifend odio. Quisque semper augue mattis wisi. Maecenas ligula. Pellentesque viverra vulputate enim. Aliquam erat volutpat. Maecenas condimentum enim tincidunt risus accumsan.</span> </li>
											<li class="fa fa-road">
												<h3>Aliquam luctus</h3>
												<span>In posuere eleifend odio. Quisque semper augue mattis wisi. Maecenas ligula. Pellentesque viverra vulputate enim. Aliquam erat volutpat. Maecenas condimentum enim tincidunt risus accumsan.</span> </li>
										</ul>
									</section>
								</div>
							</div>
						</div>
					</div>

	</div>

	<!-- Footer -->
	
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    
   </body>
</html>
    