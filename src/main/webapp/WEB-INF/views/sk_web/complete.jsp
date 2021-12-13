<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, user-scalable=yes, initial-scale=1.0, maximun-scale=3.0, minimum-scale=0.5">

<link rel="stylesheet" href="/sk_web/css/base/reset.css">
<link rel="stylesheet" href="/sk_web/css/src/style.css">
 
<title> ���� �Ϸ� </title>
</head>

<body oncontextmenu="return false">
<!-- layout -->
<div id="wrap">
  <!-- ========= #popup_toast ============================ -->
  <aside id="popup">
    <div class="popupBox">

    </div>
  </aside>

  <!-- ========= #headBox ================================ -->
  <header id="headBox">
		<button type="button" value="close" class="close" onClick="window.close()";></button>

		<h1>���� �Ϸ�</h1>
  </header>
  
  <!-- ========= #infoBox ================================ -->
  <section id="infoBox">
    <div class="user_info">
			<p style="font-weight:500; font-size:16px; letter-spacing :-1px;">
				<span>��*��</span> ���� (<span>${user}</span>)
			</p>
			<br />
			<p>
				��ǰ�� : <span>Tomb Runner 2</span>
			</p>
			<p>
				�����ݾ� : <span style="color:#EA002C; font-weight:600;">1,199��</span>
			</p>
		</div>

		<p class="completeM">������ �Ϸ�Ǿ����ϴ�.</p>

		<div class="complete_next">
			<button class="shop"><a href="#">��� �����ϱ�</a></button>
			<button class="cart" style="float:right;"><a href="#">���ų��� Ȯ���ϱ�</a></button>
		</div>

		
  </section>
</div> 

<!--script -->
<script src="/sk_web/js/base/jquery-3.5.1.min.js"></script>
<script src="/sk_web/js/base/jquery-ui.min.js"></script>
</body>
</html>