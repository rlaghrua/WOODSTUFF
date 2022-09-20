<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<!-- //git 넘기기용 -->
<head>
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
        
        <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>

<!-- 부트스트랩 드랍다운 작동하게 해주는 자바스크립트 -->
    <script type="text/javascript">
    
    
    
	    $(document).ready(function() {
	        $(".dropdown-toggle").dropdown();
	        
	    });
	    /* //카카오 앱키 등록 
	  	 Kakao.init('64ed36d1841e64546a5f0ad441b1cfe8');
	   
	    function Fnkakao() {
	    	Kakao.Auth.login({
	    		success: function(auth) {
	 
	    		    Kakao.API.request({
	    		        url: '/v2/user/me',
	    		        success: function(response) {
	    		            console.log(response);
	    		            var account = response.kakao_account;
							
							$('#form-kakao-login input[name=member_email]').val(account.email);
							$('#form-kakao-login input[name=member_name]').val(account.profile.nickname);
							
							//섬네일 이미지
							console.log(account.profile.thumbnail_image_url);
							
							//프로필 이미지
							console.log(account.profile.profile_image_url);
							
							
							$('#form-kakao-login input[name=member_photo]').val(account.profile.thumbnail_image_url);
							// 사용자 정보가 포함된 폼을 서버로 제출한다.
							  document.querySelector('#form-kakao-login').submit();
	    		            
	    		        },
	    		        fail: function(error) {
	    		            console.log(error);
	    		        }
	    		    });
	    		    
	    		  },
	    		  fail: function(error) {
	    		    console.log("카카오 로그인 실패");
	    		  },
	    			
	    		
	    	});
	    	
		  
		} */
    </script>
    
<style>
	main {
        height: auto;
        min-height: 100%;
        padding-bottom: 300px;
    }

    .btnmargin{
        margin-top: 20px;
    }
   
</style>
<title>회원가입</title>
</head>
<body>
	
	<c:import url="/header.do"></c:import>
	<main>
    <div class="container" style="text-align: center; margin-top: 6%; margin-bottom: 6%;">
        <div class="row">
            <div class="col-sm-1 col-md-1"></div>
            <div class="col-sm-10 col-md-10">
                <h3 style="margin-bottom: 100px; font-weight: 600;">WOODSTUFF에 오신 것을 환영합니다</h3>
            </div>
            <div class="col-sm-1 col-md-1"></div>
        </div>
        <div class="row">
            <!-- <div class="col-lg-1"></div> -->
            <!-- <div class="col-sm-12 col-md-6 col-lg-5"> -->
                <div class="card" style="width: 20rem; height: 210px; margin: 0 auto; border-top: 3px solid black; margin-bottom: 30px;">
                    <div class="card-body">
                        <h5 class="card-title" style="font-weight: 600; color: black;">회원가입</h5>
                        <button type="button" onclick="javascript:location.href='<%= request.getContextPath()%>/member/join_seller.do'" class="btn btn-outline-dark btnmargin" style="width: 60%;"><b>이메일로 회원가입</b></button>
                        <!-- <button type="button" onclick="Fnkakao()" class="btn btn-outline-warning btnmargin" style="width: 60%;"><b>카카오</b></button><br> -->
                    </div>
                </div>
            <!-- </div> -->
            <%-- <div class="col-sm-12 col-md-6 col-lg-5">
                <div class="card" style="width: 20rem; height: 210px; margin: 0 auto; border-top: 3px solid #06113C">
                    <div class="card-body">
                        <h5 class="card-title" style="font-weight: 600; color: #06113C;"><b>판매자 회원가입</b></h5>
                        <button type="button" class="btn btn-outline-dark"  onclick="javascript:location.href='<%= request.getContextPath()%>/member/join_company.do'"  style="width: 60%; margin-top: 50px;"><b>이메일로 회원가입</b></button>
                    </div>
                </div>
            </div> --%>
            <!-- <div class="col-lg-1"></div> -->
        </div>
        <div class="row">
            <div class="col-sm-12">
                <div style="margin-top: 80px;">회원가입 후 WOODSTUFF의 다양한 혜택을 누려보세요!</div>
                <div style="margin-top: 20px; font-size: small;">
                    이미 계정이 있으신가요?
                    <a href="login.do" style="margin-left: 16px; color:black;"><b>로그인</b></a>
                </div>
            </div>
        </div>
    </div>
    </main>
    <form id="form-kakao-login" method="post" action="join_kakao.do">
		    			<input type="hidden" name="member_email"/>
		    			<input type="hidden" name="member_name"/>
		    			<input type="hidden" name="member_photo"/>
		    				
	</form>
    <c:import url="/footer.do"></c:import>
</body>
</html>