<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    
    <link rel="preconnect" href="https://fonts.googleapis.com">
	  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	  <link href="https://fonts.googleapis.com/css2?family=Barlow:wght@500&family=Noto+Sans+KR&family=Sunflower:wght@500&display=swap" rel="stylesheet">
	
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
        
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>    
    <link rel="stylesheet" type="text/css" href="../resources/css/user_css/user.css">
    
    <title>고객센터</title>
    
    <style type="text/css">
    
			.mm {list-style: none; display: inline-block; padding: 6px;}
	 .nn {
  text-align:center;
	} 
	hr {
    
    border-color: black;
    border-width: 3px;
  }
  
  .bt {
  	color:white;
  	text-align:center;
  	width:80px;
  	height:40px;
  	outline:none;
  	border-radius:10px;
  }
  .bg-black {
  	--bs-bg-opacity: 1;
  	background-color: rgba(var(--bs-black-rgb), var(--bs-bg-opacity)) !important;
  }
	</style>
    


</head>
<body>

 <%-- <c:import url="/header.do"></c:import> --%>

<div style="text-align: center; border: 1px solid #dddddd">

</div>
<br><br>
	<div class="container">
		<h2>고객센터</h2>
		<hr style="border:4px color= black;">
			<table class="table table-hover" style="text-align: center;">
				<thead>
					<tr>
						
						<th scope="col">제목</th>
						<th scope="col">작성자</th>
						<th scope="col">작성일</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="item" items="${list}">
					<tr onmouseover="this.style.background='grey'" onmouseout="this.style.background='white'"  onClick="location.href='service_view.do?sboard_idx=${item.sboard_idx}'" style="cursor:pointer;" >
						
						<td style="width: 800px"><a href="service_view.do?sboard_idx=${item.sboard_idx}" class="text-black text-decoration-none">${item.sboard_title}</a></td>
						<td ><a href="service_view.do?sboard_idx=${item.sboard_idx}" class="text-black text-decoration-none">${item.member_name}</a></td>
						
						<fmt:parseDate var="RegDate" value="${item.sboard_regdate }" pattern="yyyy-MM-dd"/>
                        <fmt:formatDate var="RegDate2" value="${RegDate }" pattern="yyyy-MM-dd"/>
						<td>${RegDate2}</td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
			
			<div>
				  <ul class="nn">
				    <c:if test="${pageMaker.prev}">
				    	<li class="mm"><a href="service_list.do${pageMaker.makeQuery(pageMaker.startPage - 1)}" class="list-group-item list-group-item-action list-group-item-dark" aria-current="true">이전</a></li>
				    </c:if> 
				
				    <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
				    	<li class="mm">
				    	<a href="service_list.do${pageMaker.makeQuery(idx)}" class="list-group-item list-group-item-action list-group-item-dark" aria-current="true">${idx}</a></li>
				    </c:forEach>
				
				    <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
				    	<li class="mm"><a href="service_list.do${pageMaker.makeQuery(pageMaker.endPage + 1)}" class="list-group-item list-group-item-action list-group-item-dark" aria-current="true">다음</a></li>
				    </c:if> 
				  </ul>
			</div>
			<br><br><br>
			 <c:if test="${login ne null}"> 
			<div class="d-md-flex justify-content-md-end btn-sm">
						<a href="service_write.do"><input class="bg-black bt" type="button" value="글작성"></a>
					</div>
		 	</c:if>
		 	
		 	<c:if test="${login eq null}">
		 	<div class="d-md-flex justify-content-md-end btn-sm">
		 	<button class="bg-black bt" id="popup_open_btn">글작성</button>
		 	</div>
			<div id="my_modal">
            <div class="container">
            로그인 후 이용가능합니다.
            &nbsp;
            <a href="<%=request.getContextPath()%>/member/login.do" class="btn btn-dark" style="padding:10px 20px;">로그인</a>
            <a href="<%=request.getContextPath()%>/member/join_select.do"><input type="button" class="btn btn-dark" style="padding:10px 20px;" value="회원가입"></a>
            </div>
            <a class="modal_close_btn" style="cursor:pointer;">X</a>
        </div>
		 	 </c:if>
		</div>
	

 <c:import url="/footer.do"></c:import>
</body>

<script src="../resources/js/user/user.js"></script>
</html>