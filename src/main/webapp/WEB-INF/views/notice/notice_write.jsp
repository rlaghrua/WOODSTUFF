<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
        integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF"
        crossorigin="anonymous"></script>
    <title>공지사항</title>
    
    <!-- summernote 써야할 추가한 부분 -->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
   <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>

<style>
	@import url("https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,900");
	@import url("fontawesome-all.min.css");
	@import
   			url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap');

.main{
	margin-top: 10%;
 }
.was-validated{
  
    padding: 5%;
}

.bt {
  	color:white;
  	text-align:center;
  	width:80px;
  	height:40px;
  	outline:none;
  	border-radius:10px;
  	margin-top:20px;
  }
  .bg-black {
  	--bs-bg-opacity: 1;
  	background-color: rgba(var(--bs-black-rgb), var(--bs-bg-opacity)) !important;
  }

</style>
</head>
<body>
<header>
 <c:import url="/header.do"></c:import> 
</header>
    <!--공지사항 제목 및 내용 쓰기(관리자)-->
    <section class="main">
  
    <div class="container">
     <h2>공지사항 작성</h2>
     <hr style="border:4px color= black;">
    <form class="was-validated border" action="notice_write.do" method="post">
        <div class="form-row">
            <div class="col-md-6 mb-3">
              <label for="validationServer03">제목</label>
              <input name="board_title" type="text" class="form-control is-invalid" id="validationServer03" aria-describedby="validationServer03Feedback" required>
              
            </div>
        
        </div>
        <!-- <label for="validationServer03">내용</label>
        <textarea name="board_content" rows="10" cols="60"></textarea> -->
        
        <!-- 본문의 summernote 부분 -->
       <textarea id="summernote" name="board_content"></textarea>
       <script>
	      $('#summernote').summernote({
	        placeholder: '내용을 입력하세요',
	        tabsize: 2,
	        height: 500
	      });
	      
	   /*    function checkFn(){
	    	  
	    	  console.log(document.getElementById("summernote").innerhtml);
	    	 
	    	  
	      } */
    </script> 
       
       <!-- 버튼 클릭시 글쓰기 기능 해야함 -> DB에 저장후 불러올땐 div태그 안에 해당 내용 붙여넣기 -->
       <div class="d-md-flex justify-content-md-end">
        <button class="bg-black bt" onclick="checkFn()">등록</button>
       </div>
    </form>
    </div>
    </section>

   
 <c:import url="/footer.do"></c:import>
 
</body>
</html>