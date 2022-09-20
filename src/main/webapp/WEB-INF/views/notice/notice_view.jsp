<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width",initial-scale="1">
<meta charset="UTF-8">    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Barlow:wght@500&family=Noto+Sans+KR&family=Sunflower:wght@500&display=swap" rel="stylesheet">
    
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" 
    integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" 
    crossorigin="anonymous"></script>

<link rel="stylesheet" type="text/css" href="../resources/css/user_css/user.css">




<title>공지사항</title>
<style>


	.bt {
  	color:white;
  	text-align:center;
  	width:80px;
  	height:40px;
  	outline:none;
  	border-radius:10px;
  	text-decoration:none;
  }
  .bg-black {
  	--bs-bg-opacity: 1;
  	background-color: rgba(var(--bs-black-rgb), var(--bs-bg-opacity)) !important;
  }
</style>

</head>
<body>

<c:import url="/header.do"></c:import>

	<div class="container" style="margin-top:40px;">
		
		<h3 style="display:inline;"><b>공지</b></h3> ｜ <h3 style="display:inline;"><b>${vo.board_title}</b></h3><br>
		<fmt:parseDate var="RegDate" value="${vo.board_regdate }" pattern="yyyy-MM-dd"/>
        <fmt:formatDate var="RegDate2" value="${RegDate }" pattern="yyyy-MM-dd"/>
		${RegDate2}
		<hr style="border:4px color= black;">
		<%-- <div class="row">
			<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">  
				<thead>
					<!-- <tr class="table-active">
						<th colspan="3" style="background-color: #eeeeee; text-align: center;"></th>
						
					</tr> -->
				</thead>
				
				<tbody>
					<tr class="table-active">
						<td style="width:20%;">제목</td>
						<td colspan="2">${vo.board_title}</td>
					</tr>
					<tr class="table-active">
						<td>작성자</td>
						<td colspan="2">펫띵주인</td>
					</tr>
					<tr class="table-active">
						<td>작성일자</td>
						<td colspan="2">${vo.board_regdate}</td>
					</tr>
					<tr>
						<td>내용</td>
						<td colspan="2" style="min-height: 200px; text-align:left;">${vo.board_content}</td>
						<td colspan="2" style="min-height: 200px; text-align:left;">
							<div>
							${vo.board_content}
							</div>
						</td>
					</tr>
				</tbody>
			</table>
		</div> --%>
		<br><br><br>
		<div style="min-height: 200px; text-align:left;">
							<div>
							${vo.board_content}
							</div>
			</div>
	</div>
	
	  
	<div class="container" style="margin-top:20px;">
	<div style="min-height: 200px; float:right;">
			<a href="notice_list.do"><input class="btn btn-dark" style="padding:10px 20px;" type="button" value="목록"></a>
			<c:if test="${login.member_level eq 2}">
			<a href="notice_modify.do?board_idx=${vo.board_idx}"><input class="btn btn-dark" style="padding:10px 20px;" type="button" value="수정"></a>
			<button class="btn btn-dark" style="padding:10px 20px;" id="popup_open_btn">삭제</button>
			<div id="my_modal">
            <div class="container">
            삭제하시겠습니까?
            <a href="notice_delete.do?board_idx=${vo.board_idx}" class="btn btn-dark" style="padding:10px 20px;">네</a>
            <%-- <div class="container">
            <button onclick="document.delfrm.submit();" class="btn btn-primary">네</button>
			<form action="notice_delete.do" method="post" name="delfrm">
				<input type="hidden" name="board_idx" value="${vo.board_idx}">
			</form> --%>
            <a href="notice_view.do?board_idx=${vo.board_idx}"><input type="button" class="btn btn-dark" style="padding:10px 20px;" value="아니요"></a>
            </div>
            <a class="modal_close_btn" style="cursor:pointer;">X</a>
        </div>
			
			<%-- <button onclick="document.delfrm.submit();" class="btn btn-primary">삭제</button>
			<form action="notice_delete.do" method="post" name="delfrm">
				<input type="hidden" name="board_idx" value="${vo.board_idx}">
			</form> --%>
			
			
			</c:if> 
			</div>
			</div>
			
		<script src="../resources/js/user/user.js"></script>
	 		
	 <c:import url="/footer.do"></c:import>
</body>
</html>