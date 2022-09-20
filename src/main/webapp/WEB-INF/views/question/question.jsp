<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
        integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF"
        crossorigin="anonymous"></script>
        
	
<link rel="stylesheet" type="text/css" href="../resources/css/question_css/question.css">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Barlow:wght@500&family=Noto+Sans+KR&family=Sunflower:wght@500&display=swap" rel="stylesheet">
    <title>펫띵 문의사항</title>
    
    <script>
		function layer_toggle(obj) {
		if (obj.style.display == 'none') obj.style.display = 'block';
		else if (obj.style.display == 'block') obj.style.display = 'none';
		}
	</script>
	<style>
		.productinfo {
		    margin:25px 0 25px 0;
		}
		.button {
		    font-weight: bold;   
		    color:black;
		}
		
		.productinfo_view {
		    padding: 25px 10px 15px 10px;
		    text-align:left;
		}
		 .table {
		  border-collapse: separate;
		  border-spacing: 0 40px;
		} 
		.hk{
				margin:auto;
				margin-top:300px;
				margin-bottom:-100px;
				text-align:center;
				font-weight: bold;
			}
		
				
		
	</style>	
	 
	
    


</head>
<body>

 <c:import url="/header.do"></c:import>
	
	<div style="text-align: center; border: 1px solid #dddddd">

</div>
<br><br>
	<div class="container">
		<h2>FAQ</h2>
		<hr style="border:4px color= black;">
			<table class="table table-hover" style="text-align: center;">
				<thead>
					<tr>
						<th scope="col">구분</th>
						<th scope="col">제목</th>
						
					</tr>
				</thead>
				<tbody>
					
					<tr>
						<td scope="row" style="width:15%;">로그인/정보</td>
						<td scope="row" style="width:65%; text-align:left;">
							<div id="id1" style="display:block">
						        <a class="button" style="text-decoration: none;" href="javascript:;" onclick="layer_toggle(document.getElementById('id1')); layer_toggle(document.getElementById('id2'));return false;">
						        아이디와 비밀번호가 기억나지 않아요.</a>
						    </div>
						    <div id="id2" style="display:none;" >
						        <a class="button" style="text-decoration: none;" href="javascript:;" onclick="layer_toggle(document.getElementById('id1')); layer_toggle(document.getElementById('id2'));return false;">
						        아이디와 비밀번호가 기억나지 않아요.</a>
						    <div class="productinfo_view">
						            로그인 화면에서 아이디 찾기/비밀번호 찾기를 통해 확인 가능합니다.
						    </div>
						    </div>
						</td>
					</tr>
					
					<tr>
						<td scope="row" style="width:15%;">상품 문의</td>
						<td scope="row" style="width:65%; text-align:left;">
							<div id="id3" style="display:block">
						        <a class="button" style="text-decoration: none;" href="javascript:;" onclick="layer_toggle(document.getElementById('id3')); layer_toggle(document.getElementById('id4'));return false;">
						        구매했을 때 보다 가격이 떨어졌어요 차액 환불이 되나요?</a>
						    </div>
						    <div id="id4" style="display:none;" >
						        <a class="botton" style="text-decoration: none;" href="javascript:;" onclick="layer_toggle(document.getElementById('id3')); layer_toggle(document.getElementById('id4'));return false;">
						        구매했을 때 보다 가격이 떨어졌어요 차액 환불이 되나요?</a>
						    <div class="productinfo_view">
						            상품 금액은 온라인 판매처 특성상 유동적으로 변동될 수 있어 차액 환불은 가능하지않습니다.<br><br>
						            ※ 판매 가격 변동으로 인한 교환(환불) 신청 시 반품 배송비는 회원님 부담으로 진행됩니다.<br>
						            ※ 출고 처리중인 경우 취소는 가능하지않습니다.
						    </div>
						    </div>
						</td>
					</tr>
					
					<tr>
						<td scope="row" style="width:15%;">상품/문의</td>
						<td scope="row" style="width:65%; text-align:left;">
							<div id="id5" style="display:block">
						        <a class="button" style="text-decoration: none;" href="javascript:;" onclick="layer_toggle(document.getElementById('id5')); layer_toggle(document.getElementById('id6'));return false;">
						        재고가 없어요.언제쯤 구입할 수 있을까요?</a>
						    </div>
						    <div id="id6" style="display:none;" >
						        <a class="botton" style="text-decoration: none;" href="javascript:;" onclick="layer_toggle(document.getElementById('id5')); layer_toggle(document.getElementById('id6'));return false;">
						        재고가 없어요.언제쯤 구입할 수 있을까요?</a>
						    <div class="productinfo_view">
						            품절 상품 재입고 여부 및 일정은 정확한 확인이 가능하지않습니다.
						    </div>
						    </div>
						</td>
					</tr>
					
					<tr>
						<td scope="row" style="width:15%;">배송 일반</td>
						<td scope="row" style="width:65%; text-align:left;">
							<div id="id7" style="display:block">
						        <a class="button" style="text-decoration: none;" href="javascript:;" onclick="layer_toggle(document.getElementById('id7')); layer_toggle(document.getElementById('id8'));return false;">
						        일반배송 상품은 언제 배송 되나요?</a>
						    </div>
						    <div id="id8" style="display:none;" >
						        <a class="botton" style="text-decoration: none;" href="javascript:;" onclick="layer_toggle(document.getElementById('id7')); layer_toggle(document.getElementById('id8'));return false;">
						        일반배송 상품은 언제 배송 되나요?</a>
						    <div class="productinfo_view">
						            일반배송은 평일 기준으로 출고 됩니다.<br><br>
						            ※ 평일 기준 출고로 연휴 및 공휴일은 배송일에서 제외됩니다.<br>
						            ※ WOODSTUFF는 전 상품 100%무료 배송입니다.
						    </div>
						    </div>
						</td>
					</tr>
					
					<tr>
						<td scope="row" style="width:15%;">교환/반품</td>
						<td scope="row" style="width:65%; text-align:left;">
							<div id="id9" style="display:block">
						        <a class="button" style="text-decoration: none;" href="javascript:;" onclick="layer_toggle(document.getElementById('id9')); layer_toggle(document.getElementById('id10'));return false;">
						        상품은 보냈는데 언제 교환상품이 배송되나요?</a>
						    </div>
						    <div id="id10" style="display:none;" >
						        <a class="button" style="text-decoration: none;" href="javascript:;" onclick="layer_toggle(document.getElementById('id9')); layer_toggle(document.getElementById('id10'));return false;">
						        상품은 보냈는데 언제 교환상품이 배송되나요?</a>
						    <div class="productinfo_view">
						            교환 진행 과정은 아래 내용 참고해 주세요.<br><br>
						            ■교환 진행 과정<br>
						            상품 회수 > 반품 도착 > 검수 진행 > 교환 상품 출고<br><br>
						            ※ 상품 회수 후 반품 도착까지 평일 기준 1일~2일 소요됩니다.<br>
						            ※ 검수 기간은 평일 기준 1일~3일 소요됩니다.<br>
						            ※ 교환 상품 출고 까지는 평일 기준 1일~3일 소요됩니다.<br>
						            ※ 해외 배송 교환의 경우 평일 기준 2주 이상 소요됩니다.
						    </div>
						    </div>
						</td>
					</tr>
					
					<tr>
						<td scope="row" style="width:15%;">교환/반품</td>
						<td scope="row" style="width:75%; text-align:left;">
							<div id="id11" style="display:block">
						        <a class="button" style="text-decoration: none;" href="javascript:;" onclick="layer_toggle(document.getElementById('id11')); layer_toggle(document.getElementById('id12'));return false;">
						        상품을 받았는데 교환하고 싶어요.</a>
						    </div>
						    <div id="id12" style="display:none;" >
						        <a class="button" style="text-decoration: none;" href="javascript:;" onclick="layer_toggle(document.getElementById('id11')); layer_toggle(document.getElementById('id12'));return false;">
						        상품을 받았는데 교환하고 싶어요.</a>
						    <div class="productinfo_view">
						    		교환은 배송 완료 후 7일 이내일 경우에만 접수 가능합니다.<br><br>
						            1. 반품할 상품의 교환을 선택 해주세요.<br><br>
									2. 반품 방법을 선택해 주세요.<br>
									- 회수해 주세요 : 택배기사가 요청한 회수지로 평일 기준 1일 ~ 3일 이내 방문합니다.<br> 
									- 직접 발송했어요 : 상품을 받은 택배사와 같은 택배사로 반품 예약해야 합니다. <br>
									※ 반송장 번호가 아직 없다면 반송장 정보는 '다음에 등록하기'를 선택해 주세요. <br><br>
									3. 환불 배송비를 선결제해야 합니다.<br>
									신용카드 또는 가상 계좌 결제만 가능합니다.<br><br>
									4. 상품은 받아본 그대로 포장해서 반품해 주셔야 합니다.<br>
									※ 회원님의 사유로 교환 진행중인 상품이 품절될 경우, 반품비가 발생될 수 있고 이를 제외한 결제 금액이 환불 처리됩니다. 

						    </div>
						    </div>
						</td>
					</tr>
					
					<tr>
						<td scope="row" style="width:15%;">환불</td>
						<td scope="row" style="width:65%; text-align:left;">
							<div id="id13" style="display:block">
						        <a class="button" style="text-decoration: none;" href="javascript:;" onclick="layer_toggle(document.getElementById('id13')); layer_toggle(document.getElementById('id14'));return false;">
						        실제 카드 취소나 금액은 언제 입금되나요?</a>
						    </div>
						    <div id="id14" style="display:none;" >
						        <a class="button" style="text-decoration: none;" href="javascript:;" onclick="layer_toggle(document.getElementById('id13')); layer_toggle(document.getElementById('id14'));return false;">
						        실제 카드 취소나 금액은 언제 입금되나요?</a>
						    <div class="productinfo_view">
						            결제했던 수단으로 환불되고 각 결제 수단마다 기간이 다릅니다.<br>
									아래 결제수단별 환불 기간을 확인해 주세요.<br><br>
									■ 카드<br>
									환불 완료 후 평일 기준 1일 ~ 3일 이내 취소됩니다.<br>
									해외 비자 카드의 경우 부분 취소가 가능하지 않습니다.<br><br>
									■ 가상 계좌<br>
									환불 완료 후 평일 기준 1일 ~ 2일 이내 입금됩니다.<br>
									정상 계좌 확인을 위해 인증 후 환불 신청이 가능합니다.<br><br>
									■ 휴대전화 소액결제<br>
									휴대전화 결제 수수료를 포함해 휴대전화 결제 내역이 취소됩니다.<br>
									결제월과 환불월이 다르거나 부분 취소 시 계좌로 환불됩니다.<br><br>
									■ 토스, 페이코, 카카오 페이, 네이버 페이, 차이 페이 등<br>
									환불 완료 후 평일 기준 1일 ~ 2일 이내 연계된 카드는 취소, 계좌는 입금으로 처리 됩니다.
						    </div>
						    </div>
						</td>
					</tr>
					
					<tr>
						<td scope="row" style="width:15%;">AS</td>
						<td scope="row" style="width:65%; text-align:left;">
							<div id="id15" style="display:block">
						        <a class="button" style="text-decoration: none;" href="javascript:;" onclick="layer_toggle(document.getElementById('id15')); layer_toggle(document.getElementById('id16'));return false;">
						        상품이 불량인 것을 사용하고나서 확인했어요 어떻게 하나요?</a>
						    </div>
						    <div id="id16" style="display:none;" >
						        <a class="button" style="text-decoration: none;" href="javascript:;" onclick="layer_toggle(document.getElementById('id15')); layer_toggle(document.getElementById('id16'));return false;">
						        상품이 불량인 것을 사용하고나서 확인했어요 어떻게 하나요?</a>
						    <div class="productinfo_view">
						            착용 후 불량 확인 시에는 초기 불량 여부 확인이 어려워 교환 및 환불이 가능하지 않습니다.<br><br>
						            *미 사용 상태에서 불량 확인시, 무상으로 환불 및 교환 처리가 가능합니다.
						    </div>
						    </div>
						</td>
					</tr>
					
					<tr>
						<td scope="row" style="width:15%;">취소/반품</td>
						<td scope="row" style="width:65%; text-align:left;">
							<div id="id17" style="display:block">
						        <a class="button" style="text-decoration: none;" href="javascript:;" onclick="layer_toggle(document.getElementById('id17')); layer_toggle(document.getElementById('id18'));return false;">
						        주문을 취소(옵션변경)를 하고 싶어요.</a>
						    </div>
						    <div id="id18" style="display:none;" >
						        <a class="button" style="text-decoration: none;" href="javascript:;" onclick="layer_toggle(document.getElementById('id17')); layer_toggle(document.getElementById('id18'));return false;">
						        주문을 취소(옵션변경)를 하고 싶어요.</a>
						    <div class="productinfo_view">
						            주문 후 입금 확인 단계라면 주문/배송 조회에서 주문을 취소할 수 있습니다.<br><br> 
									입금하지 않은 주문의 옵션 변경을 원하는 경우 주문 취소 후 재주문해 주세요.<br><br>
									※ 입금예정 상태로 재고를 보류해두는 것을 반복할 경우, 안내 없이 WOODSTUFF 이용이 영구 제한될 수 있습니다.<br>
									※ 가상 계좌 결제는 2일 이내 입금하지 않을 경우 주문은 자동으로 취소됩니다.<br>
									※ 출고 처리 중 부터는 주소(옵션) 변경 및 취소가 가능하지 않아 상품 받아본 후 교환 또는 환불로 신청해 주셔야 합니다.<br>
						    </div>
						    </div>
						</td>
					</tr>
					
					<tr>
						<td scope="row" style="width:15%;">상품</td>
						<td scope="row" style="width:65%; text-align:left;">
							<div id="id19" style="display:block">
						        <a class="button" style="text-decoration: none;" href="javascript:;" onclick="layer_toggle(document.getElementById('id19')); layer_toggle(document.getElementById('id20'));return false;">
						        배송받은 상품이 상품 상세 사진과 다른 거 같아요.</a>
						    </div>
						    <div id="id20" style="display:none;" >
						        <a class="button" style="text-decoration: none;" href="javascript:;" onclick="layer_toggle(document.getElementById('id19')); layer_toggle(document.getElementById('id20'));return false;">
						        배송받은 상품이 상품 상세 사진과 다른 거 같아요.</a>
						    <div class="productinfo_view">
									색감 차이, 미세한 스크래치 등이 발생할 수 있으며 이러한 개체 차이는 제품의 결함 또는 하자가 아닙니다.<br><br>
									※ 해외/국내 운송 및 검수 과정에서 WOODSTUFF가 제공한 박스, 폴리 백, 더스트 백 등의 포장재가 일부 파손되거나 오염이 발생할 수 있고 이는 제품 자체의 결함 또는 하자와는 무관하며, 교환 및 환불이 가능하지 않습니다. <br>
									※ 포장재가 심하게 파손된 경우 검수 단계에서 일반 포장재로 교체되어 배송될 수 있습니다.<br>
									
						    </div>
						    </div>
						</td>
					</tr>
					
				</tbody>
			</table>
		</div>
	<div class="hk">
     WOODSTUFF의 궁금하신 점은 모두 WOODSTUFF고객센터로 문의해주세요.<br>
	 WOODSTUFF 고객센터로 상담하기<br><br>
	
	<ul>
		<li>★ WOODSTUFF 대표 고객센터 : 1111-1111</li>
		<li>★ WOODSTUFF 상담 : help.cafe@woodstuff@.kr</li>
		<li>★ 이메일(24시간 접수 가능)</li>
	</ul>
   </div>
	
	
	
	
	
	
	
	
   
   		
 <c:import url="/footer.do"></c:import>
</body>
</html>