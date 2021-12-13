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
 
<title> �޴��� ���� ��й�ȣ �Է� </title>
</head>

<body oncontextmenu="return false">
<!-- layout -->
<div id="wrap">
	<aside id="resetPopup">
		<div class="resetBox" style="height:180px;">
			<p>SKT �޴��� ���� ��й�ȣ��<br />
					�ʱ�ȭ �Ǿ����ϴ�.<br />
					�ٽ� �������ּ���.</p>

			<div class="resetBtn">
				<button class="reset-confirm">Ȯ��</button>
			</div>
		</div>
	</aside>
	<!-- ========= #headBox ================================ -->
  <header id="headBox">
    <button type="button" value="back" class="back" onClick="history.go(-1)";>
    </button>

    <h1>�޴��� ���� ��й�ȣ �Է�</h1>
  </header>
  
  
  <!-- ========= #infoBox ================================ -->
  <section id="infoBox">
		<div class="pwTitle">
			<h2><span>��*��</span>���� (<span>010-2473-****</span>)</h2>
			<p>��ǰ�� : <span>Tomb Runner 2</span></p>
			<p>�����ݾ� : <span style="color:#EA002C;">1,199��</span>�� �����Ͻðڽ��ϱ�?</p>
		</div>

		<div class="pwContent">
			<div class="pwInt">
				<p style="margin-top:40px;">
					������ ���Ͻø�<br />
					<span style="color:#EA002C;">���� ��й�ȣ</span>
					6�ڸ��� �Է����ּ���.
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

	<p class="resetP"><u>���� ��й�ȣ�� �����̳���?</u></p>

	<div class="pw">
		<p>���� Ű�е� �۵���</p>

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
				<div class="pin__numbers--item pwB reload" data-type="reload">��迭</div>
				<input type="submit" class="pin__numbers--item pwB submit" data-type="submit" value="�Ϸ�" style="padding-left:0;">
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