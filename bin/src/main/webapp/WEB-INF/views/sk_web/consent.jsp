<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, user-scalable=yes, initial-scale=1.0, maximun-scale=3.0, minimum-scale=0.5">

<link rel="stylesheet" href="/sk_web/css/base/reset.css">
<link rel="stylesheet" href="/sk_web/css/src/style.css">
 
<title> 휴대폰 결제 서비스 이용 동의 </title>
</head>

<body oncontextmenu="return false">
<!-- layout -->
<div id="wrap">
	<!-- ========= #headBox ================================ -->
  <header id="headBox">
    <button type="button" value="back" class="back" onClick="history.go(-1)";>
    </button>

    <h1>휴대폰 결제 서비스 이용 동의</h1>
  </header>
  
  
  <!-- ========= #infoBox ================================ -->
  <section id="infoBox">
		<div class="terms-of-use">
			<p>
				W[SK텔레콤 휴대폰 결제서비스 이용약관]
				<br />
				<br />
				<br />
				제1조 (목적)
				이 약관은 ‘휴대폰 결제 서비스’를 제공하는 ‘에스케이텔레콤 주식회사’(이하 ‘‘회사’’라 합니다)와 ‘휴대폰 결제서비스’ 이용자 (이하 ‘이용자’라 합니다)간에 ‘휴대폰 결제서비스’ 이용에 관한 ‘회사’와 ‘이용자’의 권리와 의무, 기타 제반 사항을 정함을 목적으로 합니다.
				<br />
				<br />
				<br />
				제2조 (용어의 정의)
				이 약관은 ‘휴대폰 결제 서비스’를 제공하는 ‘에스케이텔레콤 주식회사’(이하 ‘‘회사’’라 합니다)와 ‘휴대폰 결제서비스’ 이용자 (이하 ‘이용자’라 합니다)간에 ‘휴대폰 결제서비스’ 이용에 관한 ‘회사’와 ‘이용자’의 권리와 의무, 기타 제반 사항을 정함을 목적으로 합니다.
				<br />
				<br />
				<br />
				제 3 조 (약관의 효력 및 변경)
				이 약관은 ‘휴대폰 결제 서비스’를 제공하는 ‘에스케이텔레콤 주식회사’(이하 ‘‘회사’’라 합니다)와 ‘휴대폰 결제서비스’ 이용자 (이하 ‘이용자’라 합니다)간에 ‘휴대폰 결제서비스’ 이용에 관한 ‘회사’와 ‘이용자’의 권리와 의무, 기타 제반 사항을 정함을 목적으로 합니다.
				이 약관은 ‘휴대폰 결제 서비스’를 제공하는 ‘에스케이텔레콤 주식회사’(이하 ‘‘회사’’라 합니다)와 ‘휴대폰 결제서비스’ 이용자 (이하 ‘이용자’라 합니다)간에 ‘휴대폰 결제서비스’ 이용에 관한 ‘회사’와 ‘이용자’의 권리와 의무, 기타 제반 사항을 정함을 목적으로 합니다.
				<br />
				<br />
				<br />
				제 25 조 (관할법원)
				① 서비스 이용과 관련하여 회사와 회원 사이에 분쟁이 발생한 경우,
				회사와 회원은 분쟁의 해결을 위해 성실히 협의합니다.
				② 본 조 제 1항의 협의에서도 분쟁이 해결되지 않을 경우 양 당사자는
				민사소송법상의 관할법원에 소를 제기할 수 있습니다.
				<br />
				<br />
				<br />
				부칙
				(시행일) 본 약관은 YYYY년 MM월 DD일부터 시행합니다.
				</p>
		</div>
	</section>

	<footer id="footBox">
		<form action="/complete" method="get" name="consent">
			<fieldset>
				<div class="consentBox">
					<input type="checkbox" name="consentCheck" id="consentCheck" class="checkbox" value="서비스 가입동의" required>
					<label for="consentCheck" id="consent_p">위 내용을 확인하였으며 서비스 가입 이용에 동의합니다.</label>
				</div>

				<div class="consentBtn">
					<button type="submit" class="nextBtn" disabled>
						동의하고 진행하기
					</button>
				</div>
				
			</fieldset>
		</form>
	</footer>
</div> 

<!--script -->
<script src="/sk_web/js/base/jquery-3.5.1.min.js"></script>
<script src="/sk_web/js/base/jquery-ui.min.js"></script>

<script src="/sk_web/js/src/pay-check.js"></script>
</body>
</html>