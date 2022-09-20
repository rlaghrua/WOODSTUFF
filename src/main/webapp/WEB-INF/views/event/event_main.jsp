<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page session="true" %>




<!DOCTYPE HTML>
   
<html>
   <head>
      <title>WOODSTUFF</title>
      <link rel="icon" type="image/x-icon" href="/chuljo/resources/image/logo.png" />
      <meta charset="utf-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
      <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/event_css/event_main.css" />
      <!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"> -->
      <link rel="icon" type="image/x-icon" href="<%=request.getContextPath()%>/resources/image/favicon.ico" />
      
      <link rel="preconnect" href="https://fonts.googleapis.com">
	  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	  <link href="https://fonts.googleapis.com/css2?family=Barlow:wght@500&family=Noto+Sans+KR&family=Sunflower:wght@500&display=swap" rel="stylesheet">
      
      
   </head>
   
   <body class="is-preload">

   <!-- Header -->
         <header id="header">
<!DOCTYPE HTML>

<html>
   <head>
   		<title>WOODSTUFF</title>
		
      <meta charset="utf-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
      
      
      
      
         <!-- script 첨부 -->
      <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
      <script type="text/javascript" src="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
      <!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script> -->
   </head>
   
   
   <body class="is-preload">

            <!-- Header -->
            <div class="container px-5">
         <header id="header">
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
            </div>
         </header>
         </header>
         

      <!-- Intro -->
         <section id="intro" class="main style1 dark fullscreen">
            <div class="content">
               <header>
                  <h2 style="margin-bottom:20px;">WOODSTUFF</h2>
               </header>
               
               <p>
               The combination of the words of Wood Staff and the coffee cup shows the cafe, and the warm wood brown and yellow colors create an elegant atmosphere. 
               The end of the character is drawn in a sans serif format to give a modern feel and a sophisticated image.
               </p>
               <footer>
                  <a href="#one" class="button style2 down" style="margin-top:20px;">More</a>
               </footer>
            </div>
         </section>

      <!-- One -->
         <section id="one" class="main style2 right dark fullscreen">
            <div class="content box style2">
               <header>
                  <h2>Sign up</h2>
               </header>
               <p>You can use WOODSTUFF through membership registration</p>
               <a class=link2 href="<%=request.getContextPath()%>/member/join_select.do">바로가기→</a>
            </div>
            <a href="#two" class="button style2 down anchored">Next</a>
         </section>

      <!-- Two -->
         <section id="two" class="main style2 left dark fullscreen">
            <div class="content box style2">
               <header>
                  <h2>Notice</h2>
               </header>
               <p>You can view each announcement from WOODSTUFF.</p>
               <a class=link2 href="<%=request.getContextPath()%>/notice/notice_list.do">바로가기→</a>
            </div>
            <a href="#three" class="button style2 down anchored">Next</a>
         </section>


      <!--  Three -->
         <section id="three" class="main style2 right dark fullscreen">
            <div class="content box style2">
               <header>
                  <h2>Service</h2>
               </header>
               <p>Check the help for each service through the WOODSTUFF Customer Center</p>
               <a class=link2 href="<%=request.getContextPath()%>/service/service_list.do">바로가기→</a>
               
            </div>
            <a href="#four" class="button style2 down anchored">Next</a>
         </section>
         
         <!-- Four -->
         <section id="four" class="main style2 left dark fullscreen">
            <div class="content box style2">
               <header>
                  <h2>Q&A</h2>
               </header>
               <p>Should you have any questions, please feel free to contact me anytime</p>
               <a class=link2 href="<%=request.getContextPath()%>/question/question.do">바로가기→</a>
               
            </div>
         </section>   
      <!-- Scripts -->
         <script src="../resources/js/event_main/jquery.min.js"></script>
         <script src="../resources/js/event_main/poptrox.min.js"></script>
         <script src="../resources/js/event_main/jquery.scrolly.min.js"></script>
         <script src="../resources/js/event_main/jquery.scrollex.min.js"></script>
         <script src="../resources/js/event_main/browser.min.js"></script>
         <script src="../resources/js/event_main/breakpoints.min.js"></script>
         <script src="../resources/js/event_main/util.js"></script>
         <script src="../resources/js/event_main/main.js"></script>
   

       
    





<!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script> -->
</body>
</html>
   </body>
   
</html>
