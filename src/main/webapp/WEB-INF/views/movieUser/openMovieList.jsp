<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>    
    <c:set var="path" value="${pageContext.request.contextPath}" />
    <!-- 현재 상영작  -->
<c:choose>
	<c:when test="${result == 0 }">
		<script>
			alert("현재 상영작이 없습니다.");
			history.back();
		</script>
	</c:when>

	<c:otherwise>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<!-- jQuery library -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

	<!-- 아이콘 -->
	<link rel="stylesheet"href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link href="https://use.fontawesome.com/releases/v5.7.2/css/all.css">
	
	<!-- 구글폰트 -->
	<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Bowlby+One+SC&family=Bungee&family=Noto+Sans+KR:wght@400;500&display=swap" rel="stylesheet">
	
	
	<!-- CSS파일 -->
	<link rel="stylesheet" href="${path }/resources/CSS/main/openMovieList.css">
	
	<!-- 파비콘 설정-->
	<link rel="shortcut icon" href="img/movie_favicon.ico" type="image/x-icon">

<title>KOREA BOX</title>
</head>
<body>
	<!-- 메뉴바  -->
	<jsp:include page="../theme.jsp" />
<button onclick="location.href='${pageContext.request.contextPath }/movieUser/expectedMovieList'">상영 예정작</button>

        
        
      	<c:choose>
			<c:when test="${empty list || fn:length(list) == 0 }">
			</c:when>

			<c:otherwise>
				<c:forEach var="dto" items="${list }">  <%-- request.getAttribute("list") --%>
					<div class="col-xs-6 col-sm-3 hover-mask">
					<img class="card-img-top" src="../resources/upload/${dto.mov_poster}" alt="" style="width:300px; height:300px;"/><br>
					<span>${dto.mov_title }</span>										
					<h2><a href="${pageContext.request.contextPath }/movieUser/openViewMovie?mov_num=${dto.mov_num }&page=1" class="glyphicon glyphicon-search">상세보기</a></h2>
					</div>
				</c:forEach>
			</c:otherwise>
		</c:choose>



        <!------------------ Hover Effect Style : Demo - 9 -------------
        <div class="container mt-40">
            <h3 class="text-center">Hover Effect Style : Demo - 9</h3>
            <div class="row mt-30">
                <div class="col-md-4 col-sm-6">
                    <div class="box9">
                        <img src="http://bestjquery.com/tutorial/hover-effect/demo147/images/img-1.jpg">
                        <div class="box-content">
                            <h3 class="title">Williamson</h3>
                            <ul class="icon">
                                <li><a href="#"><i class="fa fa-search"></i></a></li>
                                <li><a href="#"><i class="fa fa-link"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6">
                    <div class="box9">
                        <img src="http://bestjquery.com/tutorial/hover-effect/demo147/images/img-2.jpg">
                        <div class="box-content">
                            <h3 class="title">Kristiana</h3>
                            <ul class="icon">
                                <li><a href="#"><i class="fa fa-search"></i></a></li>
                                <li><a href="#"><i class="fa fa-link"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6">
                    <div class="box9">
                        <img src="http://bestjquery.com/tutorial/hover-effect/demo147/images/img-3.jpg">
                        <div class="box-content">
                            <h3 class="title">Kristiana</h3>
                            <ul class="icon">
                                <li><a href="#"><i class="fa fa-search"></i></a></li>
                                <li><a href="#"><i class="fa fa-link"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        

-->


<div class="container gallery-container">

    <h1>Bootstrap 3 Gallery</h1>

    <p class="text-center">Grid Layout With Zoom Effect</p>
    <div class="tz-gallery">

        <div class="row">
            <div class="col-sm-6 col-md-4">
                    <div class="box13">
                        <img src="${path }/resources/img/boxOfficeImg.jpg">
                        <div class="box-content">
                            <h3 class="title">Williamson</h3>
                            <span class="post">Web Designer</span>
                            <ul class="social">
                                <li><button type = "button" class = "btn btn-outline-secondary"> 예매하기</button></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                            </ul>
                        </div>
                    </div>
            </div>
            <div class="col-sm-6 col-md-4">
                <a class="lightbox" href="${path }/resources/img/boxOfficeImg.jpg">
                    <img src="${path }/resources/img/boxOfficeImg.jpg" alt="Bridge">
                </a>
                <button type = "button" class = "btn btn-outline-secondary"> 예매하기</button>
                <button type = "button" class = "btn btn-outline-secondary"> 상세정보</button>
            </div>
            <div class="col-sm-12 col-md-4">
                <a class="lightbox" href="${path }/resources/img/boxOfficeImg.jpg">
                    <img src="${path }/resources/img/boxOfficeImg.jpg" alt="Tunnel">
                </a>
                
            </div>
            <div class="col-sm-6 col-md-4">
                <a class="lightbox" href="${path }/resources/img/boxOfficeImg.jpg">
                    <img src="${path }/resources/img/boxOfficeImg.jpg" alt="Coast">
                </a>
            </div>
            <div class="col-sm-6 col-md-4">
                <a class="lightbox" href="${path }/resources/img/boxOfficeImg.jpg">
                    <img src="${path }/resources/img/boxOfficeImg.jpg" alt="Rails">
                </a>
            </div>
            <div class="col-sm-6 col-md-4">
                <a class="lightbox" href="${path }/resources/img/boxOfficeImg.jpg">
                    <img src="${path }/resources/img/boxOfficeImg.jpg" alt="Traffic">
                </a>
            </div>
            <div class="col-sm-6 col-md-4">
                <a class="lightbox" href="${path }/resources/img/boxOfficeImg.jpg">
                    <img src="${path }/resources/img/boxOfficeImg.jpg" alt="Rocks">
                </a>
            </div>
            <div class="col-sm-6 col-md-4">
                <a class="lightbox" href="${path }/resources/img/boxOfficeImg.jpg">
                    <img src="${path }/resources/img/boxOfficeImg.jpg" alt="Benches">
                </a>
            </div>
            <div class="col-sm-6 col-md-4">
                <a class="lightbox" href="${path }/resources/img/boxOfficeImg.jpg">
                    <img src="${path }/resources/img/boxOfficeImg.jpg" alt="Sky">
                </a>
            </div>
        </div>

    </div>
    </div>
	
	
	<jsp:include page="../footer.jsp" />

	<!-- JS파일 -->
	<!-- Popper JS -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

	<!-- Latest compiled JavaScript -->
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>




</body>
</html>
	</c:otherwise>
</c:choose>