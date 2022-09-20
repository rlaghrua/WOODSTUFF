<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page session="true" %>


<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="<%=request.getContextPath()%>/resources/image/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="<%=request.getContextPath()%>/resources/css/header.css" rel="stylesheet" />
        <link rel="preconnect" href="https://fonts.googleapis.com">
		
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Barlow:wght@500&family=Noto+Sans+KR&family=Sunflower:wght@500&display=swap" rel="stylesheet">
        
    </head>
    <body>
        <!-- Responsive navbar-->
        <nav class="navbar navbar-expand-lg navbar-dark">
            <div class="container px-5">
                <a class="navbar-brand" href="<%=request.getContextPath()%>/" style="color:black;">WOODSTUFF</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon bg-black"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="<%=request.getContextPath()%>/event/event_main.do" style="color:black;">Home</a></li>
                        <li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/notice/notice_list.do" style="color:black;">Notice</a></li>
                        <li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/service/service_list.do" style="color:black;">Service</a></li>
                        <li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/question/question.do" style="color:black;">FAQ</a></li>
                        
                        <c:if test="${login eq null}">
	                    <li class="nav-item">
	                    <a class="nav-link" href="<%=request.getContextPath()%>/member/login.do" style="color:black;">Login</a></li>
	                    <li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/member/join_select.do" style="color:black;">Sign up</a></li>
				        </c:if>
				        
	                    <c:if test="${login ne null}">
	                    <li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/member/logout.do" style="color:black;">Logout</a></li>
	                    </c:if>
                    </ul>
                </div>
            </div>
        </nav> 
        
        
        
        
        
        <%-- <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container px-5">
                <a class="navbar-brand" href="<%=request.getContextPath()%>/">WOODSTUFF</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="<%=request.getContextPath()%>/event/event_main.do">Home</a></li>
                        <li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/notice/notice_list.do">Notice</a></li>
                        <li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/service/service_list.do">Services</a></li>
                        <li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/question/question.do">Q&A</a></li>
                        
                        <c:if test="${login eq null}">
	                    <li class="nav-item">
	                    <a class="nav-link" href="<%=request.getContextPath()%>/member/login.do">Login</a></li>
	                    <li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/member/join_select.do">Sign up</a></li>
				        </c:if>
				        
	                    <c:if test="${login ne null}">
	                    <li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/member/logout.do">Logout</a></li>
	                    </c:if>
                    </ul>
                </div>
            </div>
        </nav> --%>
        
        
        <%-- <header id="header">
            <h1><a href="<%=request.getContextPath()%>/">WOODSTUFF</a></h1>
            <nav class="navbar navbar-expand-lg">
            <ul class="navbar-nav ms-auto">
                  <li class="nav-item"><a class="nav-link active" aria-current="page" href="<%=request.getContextPath()%>/event/event_main.do">Home</a></li>
                  <li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/notice/notice_list.do">Notice</a></li>
                  <li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/service/service_list.do">Service</a></li>
                  <li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/question/question.do">Q&A</a></li>
                  
                  <c:if test="${login eq null}">
	                    <li class="nav-item">
	                    <a class="nav-link" href="<%=request.getContextPath()%>/member/login.do">Login</a></li>
	                    <li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/member/join_select.do">Sign up</a></li>
				        </c:if>
				        
	                    <c:if test="${login ne null}">
	                    <li><a href="<%=request.getContextPath()%>/member/logout.do">Logout</a></li>
	                    </c:if>
                  
               </ul>
            </nav>
         </header> --%>

        <!-- Header-->
         <%-- <header class="bg-dark py-5">
            <div class="container px-5">
                <div class="row gx-5 justify-content-center">
                    <div class="col-lg-6">
                        <div class="text-center my-5">
                            <a href="<%=request.getContextPath()%>/event/event_main.do"><img class="img" src="<%=request.getContextPath()%>/resources/image/woodstuff/woodstuff1.png" /></a>
                            <h1 class="display-5 fw-bolder text-white mb-2">Welcom to WOODSTUFF</h1>
                            <p class="lead text-white-50 mb-4">Relax and have fun at Woodstuff, the world's most popular cafe!</p>
                            <!-- <div class="d-grid gap-3 d-sm-flex justify-content-sm-center">
                                <a class="btn btn-warning btn-lg px-4 me-sm-3" href="#features">Get Started</a>
                            </div> -->
                        </div>
                    </div>
                </div>
            </div>
        </header>  --%>
        
        
        
       
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="resouces/js/header.js"></script>
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <!-- * *                               SB Forms JS                               * *-->
        <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <!-- <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script> -->
    </body>
</html>
