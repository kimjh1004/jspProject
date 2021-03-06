<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, user-scalable=yes, initial-scale=1.0, maximun-scale=3.0, minimum-scale=0.5">

<link rel="stylesheet" href="/sk_mob/css/base/reset.css">
<link rel="stylesheet" href="/sk_mob/css/src/style.css">
 
<title> 휴대폰 결제 비밀번호 입력 </title>
</head>

<body oncontextmenu="return false">
<!-- layout -->
<div id="wrap">
	<aside id="resetPopup">
		<div class="resetBox" style="height:180px;">
			<p>SKT 휴대폰 결제 비밀번호가<br />
					초기화 되었습니다.<br />
					다시 설정해주세요.</p>

			<div class="resetBtn">
				<button class="reset-confirm">확인</button>
			</div>
		</div>
	</aside>
	<!-- ========= #headBox ================================ -->
  <header id="headBox">
    <button type="button" value="back" class="back" onClick="history.go(-1)";>
    </button>

    <h1>휴대폰 결제 비밀번호 입력</h1>
  </header>
  
  
  <!-- ========= #infoBox ================================ -->
  <section id="infoBox">
		<div class="pwTitle">
			<h2><span>김*연</span>고객님 (<span>010-2473-****</span>)</h2>
			<p>상품명 : <span>Tomb Runner 2</span></p>
			<p>결제금액 : <span style="color:#EA002C;">1,199원</span>을 결제하시겠습니까?</p>
		</div>

		<div class="pwContent">
			<div class="pwInt">
				<p style="margin-top:40px;">
					결제를 원하시면<br />
					<span style="color:#EA002C;">결제 비밀번호</span>
					6자리를 입력해주세요.
				</p>
			</div>
		</div>
	</section>

	<div id="pin" style="margin-top:60px;">
		<div class="pin__dots">
			<div class="pin__dots--item"></div>
			<div class="pin__dots--item"></div>
			<div class="pin__dots--item"></div>
			<div class="pin__dots--item"></div>
			<div class="pin__dots--item"></div>
			<div class="pin__dots--item"></div>
		</div>
	</div>

	<p class="resetP"><u>결제 비밀번호를 잊으셨나요?</u></p>

	<div class="pw">
		<p>보안 키패드 작동중</p>

		<div class="pin__numbers">
			<div class="pin__number__div">
				<div class="pin__numbers--item number_area" data-type="number">9</div>
				<div class="pin__numbers--item number_area" data-type="number">6</div>
				<div class="pin__numbers--item number_area" data-type="number">7</div>
				<div class="pin__numbers--item number_area" data-type="nbsp">&nbsp;</div>
				

				<div class="pin__numbers--item number_area" data-type="number">5</div>
				<div class="pin__numbers--item number_area" data-type="number">2</div>
				<div class="pin__numbers--item number_area" data-type="number">0</div>
				<div class="pin__numbers--item number_area" data-type="number">1</div>
				

				<div class="pin__numbers--item number_area" data-type="number">4</div>
				<div class="pin__numbers--item number_area" data-type="number">8</div>
				<div class="pin__numbers--item number_area" data-type="number">3</div>
				<div class="pin__numbers--item number_area" data-type="nbsp">&nbsp;</div>
			</div>	

			<div class="pin__number__cont">
				<div class="pin__numbers--item pwB" data-type="remove-last"><div class="pinpad_back"></div></div>
				<div class="pin__numbers--item pwB reload" data-type="reload">재배열</div>
				<input type="submit" class="pin__numbers--item pwB submit" data-type="submit" value="완료" style="padding-left:0;">
			</div>
		</div>
	</div>
</div>

<!--script -->
<script src="/sk_mob/js/base/jquery-3.5.1.min.js"></script>
<script src="/sk_mob/js/base/jquery-ui.min.js"></script>

<script src="/sk_mob/js/src/password.js"></script>
<script>
	$('.resetP').click(function(){
		$('#resetPopup').show();
	});

	$('.reset-confirm').click(function(){
		location.href="resetPassword.html";
	});
</script>
</body>
</html>