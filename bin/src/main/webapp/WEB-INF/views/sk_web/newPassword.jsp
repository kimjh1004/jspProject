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
 
<title> 휴대폰 결제 비밀번호 등록 </title>
</head>

<body oncontextmenu="return false">
<!-- layout -->
<div id="wrap">
	<!-- ========= #headBox ================================ -->
  <header id="headBox">
    <button type="button" value="back" class="back" onClick="history.go(-1)";>
    </button>

    <h1>휴대폰 결제 비밀번호 등록</h1>
  </header>
  
  
  <!-- ========= #infoBox ================================ -->
  <section id="infoBox">
		<div class="pwTitle">
			<h2>결제 비밀번호 등록</h2>
			<p>나만의 결제 비밀번호를 등록하면 결제 시 <br />
				간편하게 이용할 수 있습니다.</p>
		</div>

		<div class="pwContent">
			<div class="pwInt">
				<p class="pwC-user">
					<span>김*연</span>고객님 (<span>010-2473-****</span>)
				</p>

				<p>휴대폰 결제 비밀번호 6자리를</p>
				<p>등록해주세요.</p>
			</div>
		</div>
	</section>

	<form id="target" method="get" action="newPasswordConfirm.html">
		<fieldset>
			<div id="pin">
				<div class="pin__dots">
					<div class="pin__dots--item"></div>
					<div class="pin__dots--item"></div>
					<div class="pin__dots--item"></div>
					<div class="pin__dots--item"></div>
					<div class="pin__dots--item"></div>
					<div class="pin__dots--item"></div>
				</div>
			</div>

			<div class="pw">
				<p>보안 키패드 작동중</p>

				<div class="pin__numbers">
					<div class="pin__number__div">
						<div class="pin__numbers--item number_area" data-type="number">5</div>
						<div class="pin__numbers--item number_area" data-type="number">4</div>
						<div class="pin__numbers--item number_area" data-type="nbsp">&nbsp;</div>
						<div class="pin__numbers--item number_area" data-type="number">1</div>
						

						<div class="pin__numbers--item number_area" data-type="nbsp">&nbsp;</div>
						<div class="pin__numbers--item number_area" data-type="number">3</div>
						<div class="pin__numbers--item number_area" data-type="number">7</div>
						<div class="pin__numbers--item number_area" data-type="number">2</div>
						
						

						<div class="pin__numbers--item number_area" data-type="number">6</div>
						<div class="pin__numbers--item number_area" data-type="number">8</div>
						<div class="pin__numbers--item number_area" data-type="number">9</div>
						<div class="pin__numbers--item number_area" data-type="number">0</div>
					</div>	

					<div class="pin__number__cont">
						<div class="pin__numbers--item pwB" data-type="remove-last"><div class="pinpad_back"></div></div>
						<div class="pin__numbers--item pwB reload" data-type="reload">재배열</div>
						<input type="submit" class="pin__numbers--item submit" data-type="submit" value="완료">
					</div>
				</div>
			</div>
		</fieldset>
	</form>		
</div>

<!--script -->
<script src="/sk_web/js/base/jquery-3.5.1.min.js"></script>
<script src="/sk_web/js/base/jquery-ui.min.js"></script>

<script src="/sk_web/js/src/keypad.js"></script>
</body>
</html>