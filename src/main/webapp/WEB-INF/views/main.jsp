<!-- @Autho skyfly33 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page session="false"%>
<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<!--PG크로스브라우징필수내용 시작-->
<meta http-equiv="Cache-Control" content="no-cache" />
<meta http-equiv="Expires" content="0" />
<meta http-equiv="Pragma" content="no-cache" />
<title>ARVO</title>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" />

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css" />

<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>

<!-- Nanum Gothic Google Web Font-->
<link href='http://fonts.googleapis.com/earlyaccess/nanumgothic.css'
	rel='stylesheet' type='text/css' />

<!-- main js -->
<script src="<c:url value='/resources/js/main.js' />"></script>

<!-- main css -->
<link rel="stylesheet" href="<c:url value='/resources/css/main.css' />">

<script type="text/javascript">
var idx = 0;
var userAgent = navigator.userAgent.toLowerCase();
var browser = { 
		msie    : /msie/.test( userAgent ) && !/opera/.test( userAgent ),    
		safari  : /webkit/.test( userAgent ),    
		//firefox : /mozilla/.test( userAgent ) && !/(compatible|webkit)/.test( userAgent ),    
		opera   : /opera/.test( userAgent ),
		chrome  : /chrome/.test( userAgent )};   
$(window).scroll(function () { // 익스 외에 수정 필요함
	var win_Y = 0;

	var scrollHeight = 0;
	var documentHeight = 0;
	if ( browser.chrome ){ //Chrome || Safari   
		//scrollHeight = $(document).height() - $(document.body).scrollTop()-979;
		scrollHeight = Math.ceil($(window).scrollTop() + $(window).height()) + 1;
		documentHeight = $(document).height();
	} else if ( browser.firefox ){ // Firefox || NS   
		//return;
		scrollHeight = $(window).scrollTop() + $(window).height();
		documentHeight = $(document).height();  
	}  else if ( browser.opera ){ // Opera  
		var bodyHeight = document.body.clientHeight;      
		totalHeight = window.innerHeight < bodyHeight ? bodyHeight : window.innerHeight;    
	}  else {
		scrollHeight = $(window).scrollTop() + $(window).height(); 
		documentHeight = $(document).height();
	}
	//alert("scrollTop = " + $(window).scrollTop());
	//alert("height = " + $(window).height());
	//alert("scroll height = " + scrollHeight);
	//alert("document height = " + documentHeight);
	if (scrollHeight >= documentHeight) {
		idx+=2;
		$.ajax({
			url : '<%=request.getContextPath() %>/video/videoAdd.do',
			type : 'post',
			datatype : 'json',
			async : true,
			data : {
				page : idx
			},
			
			success:function(data){
				var result = data.result;
				var result2 = data.result2;
				var result3 = data.result3;
				var result4 = data.result4;
				var html ="";
				//alert(result.length);
				
				if(result != null && result != ""){
					for(var i=0;i<result.length;i++){
						html += "<h3 class='col-md-12 glyphicon glyphicon-thumbs-up'>ARVO'S Choice "+(idx+(i+1))+"</h3>";
						html += "<div class='col-md-12'>";
						html += "<div class='jumbotron jumbotron2' style='height: 330px; padding:0;'>";
						html += "<div style='float: left; width: 392px; height: 329px; padding-right: 20px;'>";
						html += "<iframe style='width: 392px; height: 327px;' src='https://www.youtube.com/embed/"+result[i]+"'	frameborder='0' allowfullscreen></iframe>";
						html += "</div>";
						html += "<div style='width: 230px; height: 329px; float: left;'>";
						html += "<div class='thumbnail' style='width: 230px; height: 327px;'>";
						html += "<img src='/arvo/resources/img/thumb/"+result2[i]+".jpg' alt='main_top_sing'>";
						html += "<div class='caption'>";
						html += "<h5>"+result4[i]+"</h5>";
						html += "<p class='glyphicon glyphicon-heart' style='font-size: 13px; hight: :20px;'>163</p>";
						html += "<br />";
						html += "<p class='glyphicon glyphicon-tag' style='font-size: 19px; hight: :20px;'>"+result3[i]+"</p>";
						html += "<p>";
						html += "<a href='#' class='btn btn-primary btn-idx2' role='button'>RQST</a>";
						html += "</p>";
						html += "</div>";
						html += "</div>";
						html += "</div>";
						html += "</div>";
						html += "</div>";
					}
					
					$('.videoAll').append(html);
					
				}else{
				}
			},
			error:function(request,status,error){
				alert(request.statusText + ",  " + status + ",   " + error);
			    alert(request.status);
			    alert(request.responseText);


			}
		});

		//$('.videoAll').append('<div><iframe width="560" height="315" src="https://www.youtube.com/embed/9ctNg2q34ho?version-2&amp;autoplay=1" frameborder="0" allowfullscreen></iframe></div>');

	}

});
</script>

</head>

<body>

	<%@include file="top_menubar.jsp"%>
	<div id="carousel-example-generic" class="carousel slide"
		data-ride="carousel" data-interval="2000">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#carousel-example-generic" data-slide-to="0"
				class="active"></li>
			<li data-target="#carousel-example-generic" data-slide-to="1"></li>
			<li data-target="#carousel-example-generic" data-slide-to="2"></li>
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img src="<c:url value='resources/img/main_carousel_2.jpg' />"
					alt="carousel1">
					<div class="carousel-caption top-logo">
						<Strong>Everyone's Private Artist</Strong>
					</div>
					<div class="carousel-caption top-logo2">Performance made just
						for you</div>
			</div>
			<div class="item">
				<img src="<c:url value='resources/img/main_carousel_2.jpg' />"
					alt="carousel1">
					<div class="carousel-caption top-logo">
						<Strong>Everyone's Private Artist</Strong>
					</div>
					<div class="carousel-caption top-logo2">Performance made just
						for you</div>
			</div>
			<div class="item">
				<img src="<c:url value='resources/img/main_carousel_2.jpg' />"
					alt="carousel1">
					<div class="carousel-caption top-logo">
						<Strong>Everyone's Private Artist</Strong>
					</div>
					<div class="carousel-caption top-logo2">Performance made just
						for you</div>
			</div>
		</div>

		<!-- Controls -->
		<a class="left carousel-control" href="#carousel-example-generic"
			role="button" data-slide="prev"> <span
			class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#carousel-example-generic"
			role="button" data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>

	<!-- Contents -->
	<div class="container-fluid">
		<div class="row ">
			<div class="col-xs-12 col-md-8">
				<h3 class="col-md-12 glyphicon glyphicon-thumbs-up">ARVO'S
					Choice1</h3>
				<div class="col-md-12 ">
					<div class="jumbotron jumbotron1"
						style="height: 330px; padding: 0;">
						<div
							style="float: left; width: 392px; height: 329px; padding-right: 20px;">
							<iframe style="width: 392px; height: 327px;"
								src="https://www.youtube.com/embed/KnusUhCbuX8?version-2&amp;autoplay=1"
								frameborder="0" allowfullscreen></iframe>
						</div>
						<div style="width: 230px; height: 329px; float: left;">
							<div class="thumbnail" style="width: 230px; height: 327px;">
								<a href="artistDetail?artistId=0"><img src="<c:url value='resources/img/thumb/thumb0.png' />"
									alt="main_top_sing"></a>
									<div class="caption">
										<h4>
											<a href="artistDetail?artistId=0">Sia - Chandelier</a>
											</h4>
											<p class="glyphicon glyphicon-heart"
												style="font-size: 13px; hight: :20px;">163</p>
											<br />
											<p class="glyphicon glyphicon-tag"
												style="font-size: 13px; hight: :20px;">#Sia #indie</p>
											<p class="btn-idx0-p">
												<a href="#" class="btn btn-primary btn-idx0" role="button">RQST</a>
											</p>
									</div>
							</div>
						</div>
					</div>
				</div>
				<h3 class="col-md-12 glyphicon glyphicon-user">ARVO'S Artwork2</h3>
				<div class="col-md-12 ">
					<ul class="media-list">
						<li class="media" style="width: 800px; height: 120px;">
							<div style="float: left; width: 280px;">
								<div class="media-left">
									<a href="#"> <img class="img-circle"
										src="<c:url value='resources/img/La Vie En Rose - Daniela Andrade.jpg' />"
										alt="Daniela Andrad" style="width: 100px; height: 100px;"></a>
								</div>
								<div class="media-body">
									<h4 class="media-heading">Daniela Andrad</h4>
								</div>
							</div>
							<div style="width: 400px; height: 120px; float: left">
								<div class="media-left">
									<a href="#"> <img
										src="<c:url value='resources/img/crazy3 - Daniela Andrade.jpg' />"
										alt="Daniela Andrad" style="width: 115px; height: 100px;"></a>
								</div>
								<div class="media-left">
									<a href="#"> <img
										src="<c:url value='resources/img/latch 2 -Daniela Andrade.jpg' />"
										alt="Daniela Andrad" style="width: 115px; height: 100px;"></a>
								</div>
								<div class="media-left">
									<a href="#"> <img
										src="<c:url value='resources/img/TOUCH - Daniela Andrade.jpg' />"
										alt="Daniela Andrad" style="width: 115px; height: 100px;"></a>
								</div>
							</div>
						</li>
						<li class="media" style="width: 800px; height: 120px;">
							<div style="float: left; width: 280px;">
								<div class="media-left">
									<a href="#"> <img class="img-circle"
										src="<c:url value='resources/img/Fleet Foxes - Blue Spotted Tail (Cover) by Sarah Lee.jpg' />"
										alt="Sarah Lee" style="width: 100px; height: 100px;"></a>
								</div>
								<div class="media-body">
									<h4 class="media-heading">Sarah Lee</h4>
								</div>
							</div>
							<div style="width: 400px; height: 370px; float: left">
								<div class="media-left">
									<a href="#"> <img
										src="<c:url value='resources/img/Feist - One Evening (Cover) by Sarah Lee.jpg' />"
										alt="Sarah Lee" style="width: 115px; height: 100px;"></a>
								</div>
								<div class="media-left">
									<a href="#"> <img
										src="<c:url value='resources/img/ISLAND IN THE SUN - Daniela Andrade.jpg' />"
										alt="Sarah Lee" style="width: 115px; height: 100px;"></a>
								</div>
								<div class="media-left">
									<a href="#"> <img
										src="<c:url value='resources/img/just the two of us - sarah lee.jpg' />"
										alt="Sarah Lee" style="width: 115px; height: 100px;"></a>
								</div>
							</div>
						</li>
						<li class="media" style="width: 800px; height: 120px;">
							<div style="float: left; width: 280px;">
								<div class="media-left">
									<a href="#"> <img class="img-circle"
										src="<c:url value='resources/img/what a joy Hanbyul Kang.jpg' />"
										alt="Hanbyul" style="width: 100px; height: 100px;"></a>
								</div>
								<div class="media-body">
									<h4 class="media-heading">Hanbyul</h4>
								</div>
							</div>
							<div style="width: 400px; height: 370px; float: left">
								<div class="media-left">
									<a href="#"> <img
										src="<c:url value='resources/img/Christmas song - Hanbyul.jpg' />"
										alt="Hanbyul" style="width: 115px; height: 100px;"></a>
								</div>
								<div class="media-left">
									<a href="#"> <img
										src="<c:url value='resources/img/Fly me to the moon - Frank Sinatra cover - HANBYUL KANG.jpg' />"
										alt="Hanbyul" style="width: 115px; height: 100px;"></a>
								</div>
								<div class="media-left">
									<a href="#"> <img
										src="<c:url value='resources/img/The Moon Song - Hanbyul & Sarah Cover.jpg' />"
										alt="Hanbyul" style="width: 115px; height: 100px;"></a>
								</div>
							</div>
						</li>
					</ul>
				</div>
				<h3 class="col-md-12 glyphicon glyphicon-user">ARVO'S Artwork3</h3>
				<div class="col-md-12 ">
					<div class="row">
						<div class="col-sm-6 col-md-4">
							<div class="thumbnail">
								<img
									src="<c:url value='resources/img/creep - Daniela Andrade.jpg' />"
									alt="...">
									<div class="caption">
										<h5>
											creep - Daniela An...
											</h5>
											<p class="glyphicon glyphicon-heart"
												style="font-size: 13px; hight: :20px;">163</p>
											<br />
											<p class="glyphicon glyphicon-tag"
												style="font-size: 13px; hight: :20px;">#creep #jazz</p>
											<p class="btn-idx1-p">
												<a href="#" class="btn btn-primary btn-idx1" role="button">RQST</a>
											</p>
									</div>
							</div>
						</div>

						<div class="col-sm-6 col-md-4">
							<div class="thumbnail">
								<img
									src="<c:url value='resources/img/Mahogany LOX DJing.jpg' />"
									alt="...">
									<div class="caption">
										<h5>
											Mahogany LOX DJing
											</h5>
											<p class="glyphicon glyphicon-heart"
												style="font-size: 13px; hight: :20px;">163</p>
											<br />
											<p class="glyphicon glyphicon-tag"
												style="font-size: 13px; hight: :20px;">#마호가니 #mahogany</p>
											<p class="btn-idx1-p">
												<a href="#" class="btn btn-primary btn-idx1" role="button">RQST</a>
											</p>
									</div>
							</div>
						</div>
						<div class="col-sm-6 col-md-4">
							<div class="thumbnail">
								<img
									src="<c:url value='resources/img/Daniel Tzipori (418) First Show at FUNZONE in Santa Barbara California.jpg' />"
									alt="...">
									<div class="caption">
										<h5>
											Tzipori - First Show...
											</h5>
											<p class="glyphicon glyphicon-heart"
												style="font-size: 13px; hight: :20px;">163</p>
											<br />
											<p class="glyphicon glyphicon-tag"
												style="font-size: 13px; hight: :20px;">#daniel #jazz</p>
											<p class="btn-idx1-p">
												<a href="#" class="btn btn-primary btn-idx1" role="button">RQST</a>
											</p>
									</div>
							</div>
						</div>
					</div>
				</div>
				<div class="videoAll">
					<c:forEach items="${resultList }" var="resultList"
						varStatus="status">
						<h3 class="col-md-12 glyphicon glyphicon-thumbs-up">ARVO'S
							Choice ${status.count }</h3>
						<div class="col-md-12 ">
							<div class="jumbotron jumbotron2"
								style="height: 330px; padding: 0;">
								<div
									style="float: left; width: 392px; height: 329px; padding-right: 20px;">
									<iframe style="width: 392px; height: 327px;"
										src="https://www.youtube.com/embed/${resultList.youtube_id }"
										frameborder="0" allowfullscreen></iframe>
								</div>
								<div style="width: 230px; height: 329px; float: left;">
									<div class="thumbnail" style="width: 230px; height: 327px;">
										<img
											src="<c:url value='resources/img/thumb/${resultList.thumb }.jpg' />"
											alt="main_top_sing">
											<div class="caption">
												<h5>${resultList.title }</h5>
												<p class="glyphicon glyphicon-heart"
													style="font-size: 13px; hight: :20px;">163</p>
												<br />
												<p class="glyphicon glyphicon-tag"
													style="font-size: 19px; hight: :20px;">${resultList.post_tag }</p>
												<p class="btn-idx3">
													<a href="#" class="btn btn-primary btn-idx2" role="button">RQST</a>
												</p>
											</div>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
			<div class="col-xs-6 col-md-4">
				<h3></h3>
				<div class="col-md-12">
					<ul class="list-group">
						<li class="list-group-item"><a href="#">All</a></li>
						<li class="list-group-item"><a href="#">Video &amp; Film</a></li>
						<li class="list-group-item"><a href="#">Music</a></li>
						<li class="list-group-item"><a href="#">Writing</a></li>
						<li class="list-group-item"><a href="#">Comics</a></li>
						<li class="list-group-item"><a href="#">Drawing &amp;
								Painting</a></li>
						<li class="list-group-item"><a href="#">Animation</a></li>
						<li class="list-group-item"><a href="#">Podcasts</a></li>
						<li class="list-group-item"><a href="#">Games</a></li>
						<li class="list-group-item"><a href="#">Photos</a></li>
						<li class="list-group-item"><a href="#">Comedy</a></li>
						<li class="list-group-item"><a href="#">Science</a></li>
						<li class="list-group-item"><a href="#">Education</a></li>
						<li class="list-group-item"><a href="#">Crafts &amp; DIY</a></li>
						<li class="list-group-item"><a href="#">Dance &amp; Theatre</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>

</body>
</html>
