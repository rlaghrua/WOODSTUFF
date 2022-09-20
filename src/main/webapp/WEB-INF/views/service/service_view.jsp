<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page import="java.util.Date" %>
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
<title>고객센터</title>

</head>
<body>
<c:import url="/header.do"></c:import>
<div style="text-align: center; border: 1px solid #dddddd">
<br>
</div>
	<div class="container" style="margin-top:40px;">
		<div class="row">
		
			<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">  
				<thead>
					<!-- <tr class="table-active">
						<th colspan="3" style="background-color: #eeeeee; text-align: center;"></th>
						
					</tr> -->
				</thead>
				
				<tbody>
					<tr class="table-active">
						<td style="width:20%;">제목</td>
						<td colspan="2">${vo.sboard_title}</td>
					</tr>
					<tr class="table-active">
						<td>작성자</td>
						<td colspan="2">${vo.member_name}</td>
					</tr>
					<tr class="table-active">
						<td>작성일자</td>
						<fmt:parseDate var="RegDate" value="${vo.sboard_regdate }" pattern="yyyy-MM-dd"/>
                        <fmt:formatDate var="RegDate2" value="${RegDate }" pattern="yyyy-MM-dd"/>
						<td colspan="2">${RegDate2}</td>
					</tr>
					 
				</tbody>
			</table>
		</div>
		
		<div style="min-height: 200px; text-align:left; margin-top:30px;">
							<div>
							${vo.sboard_content}
							</div>
			</div>
	</div>
	
	<%-- <c:if test="${login.member_level >= 0 }">  --%>
	<div class="container" style="margin-top:20px;">
		<div style="min-height:200px; float:right;">
	
			<a href="service_list.do" class="btn btn-dark" style="padding:10px 20px;">목록</a>
			
			 <c:if test="${login.member_idx eq vo.member_idx || login.member_level eq 2}"> 
			<a href="service_modify.do?sboard_idx=${vo.sboard_idx}" class="btn btn-dark" style="padding:10px 20px;">수정</a>
			<button class="btn btn-dark" id="popup_open_btn" style="padding:10px 20px;">삭제</button>
			<div id="my_modal">
            
            <div class="container">
            삭제하시겠습니까?
            <a href="service_delete.do?sboard_idx=${vo.sboard_idx}" class="btn btn-dark" style="padding:10px 20px;">네</a>
            <a href="service_view.do?sboard_idx=${vo.sboard_idx}"><input type="button" class="btn btn-dark" style="padding:10px 20px;" value="아니요"></a>
            </div>
            <a class="modal_close_btn" style="cursor:pointer;">X</a>
        </div>
			
			
			
			
			
			
			
			
			
			
			
			<%-- <button onclick="document.delfrm.submit();" class="btn btn-primary">삭제</button>
			<form action="service_delete.do" method="post" name="delfrm">
				<input type="hidden" name="sboard_idx" value="${vo.sboard_idx}">
			</form> --%>
			 </c:if> 
			
			</div>
			</div>
	<%-- </c:if> --%>		
	
	
	
			
			
               
   
	<%-- <button onclick="document.delfrm.submit();" class="btn btn-primary">삭제</button>
	<form action="reply_delete.do" method="post" name="delfrm">
	</form>
	<a href="reply_modify.do?reply_idx=${vo.reply_idx}" class="btn btn-primary">수정</a> --%>
	
	
	
	
	
	<div class="container" style="margin-top:100px;">
			 <div class="outer">
		 <form action="<%=request.getContextPath() %>/reply/reply_write.do" method="post">
    <input type="hidden" name="sboard_idx" value="${vo.sboard_idx}">
    <c:if test="${login ne null}">
         <textarea id="reply_content" name="reply_content" style="width:100%;border:1;overflow:visible;text-overflow:ellipsis;" rows="6" cols="170" placeholder="댓글을 입력하세요."></textarea>
         <br><br>
         
         <div class="float-md-right">
         <button class="btn btn-dark" type="submit" name="reply_content" style="padding:10px 20px; float:right;">댓글 등록</button>
         </div>
          </c:if> 
          
          
    <c:if test="${login eq null}">
    	
    
    </c:if>
    
    </form>
	</div>
	
			<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd; margin-top: 170px;">
				<thead class="thead-light">
					<tr class="table-active">
						
						<th scope="col">작성자</th>
						<th scope="col">내용</th>
						<th scope="col">작성일</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="voa" items="${list}">
					<tr class="table-active">
						<td>${voa.member_name}</td>
						<td>${voa.reply_content}</td>
						<td>${voa.reply_regdate}
						
							<c:if test="${login.member_idx eq voa.member_idx || login.member_level eq 2}">
							
							<a href="javascript:joinMember(${voa.reply_idx})" class="btn btn-dark" style="padding: 10px 20px; margin-left:15px;">수정</a>
							<form action="reply_delete.do" method="post" style="display:inline;">
								<input type="hidden" name="reply_idx" value="${voa.reply_idx}">
								<input type="hidden" name="sboard_idx" value="${vo.sboard_idx}">
								<button class="btn btn-dark" style="padding: 10px 20px;">삭제</button>
								
							 </form>
							
							</c:if>
							
							<%-- <button class="btn btn-dark" id="popup_open_btn" style="padding:10px 20px;">삭제</button>
			<div id="my_modal">
            
            <div class="container">
            삭제하시겠습니까?
            <a href="service_delete.do?sboard_idx=${vo.sboard_idx}" class="btn btn-dark" style="padding:10px 20px;">네</a>
            <a href="service_view.do?sboard_idx=${vo.sboard_idx}"><input type="button" class="btn btn-dark" style="padding:10px 20px;" value="아니요"></a>
            </div>
            <a class="modal_close_btn" style="cursor:pointer;">X</a>
        </div> --%>
							
							
							
							
							
							
						</td>
						
					</tr>
					
					</c:forEach>
				</tbody>
			</table>
	</div>
	
	<c:import url="/footer.do"></c:import>
	
</body>
<script>
	function joinMember(idx) {
		
		/* console.log(${sboard_idx}); */
		var request = '<%=request.getContextPath()%>';
		//console.log(request);
		
		window.open(request+"/reply/reply_modify.do?sboard_idx="+${sboard_idx}+"&reply_idx="+idx, "_parent","member", "width=500px","height=20px")
	}
</script>
<script src="../resources/js/user/user.js"></script>
</html>
					
						
							
						
					
					
								
			