<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, user-scalable=yes, initial-scale=1.0, maximun-scale=3.0, minimum-scale=0.5">

<link rel="stylesheet" href="/sk_web/css/base/reset.css">
<link rel="stylesheet" href="/sk_web/css/src/style.css">
</head>

<body oncontextmenu="return false">
<!-- layout -->
<div id="wrap">
  <header id="headBox">
		<h1>기본 에러 페이지 입니다.</h1>
  </header>
  
  <!-- ========= #infoBox ================================ -->
  <section id="infoBox">
    <div class="user_info">
			<p>
				${message}
			</p>
		</div>

		<div class="complete_next">
			<button class="shop"><a href="/index">처음으로 돌아가기</a></button>
		</div>
  </section>
</div> 

<script src="/sk_web/js/base/jquery-3.5.1.min.js"></script>
<script src="/sk_web/js/base/jquery-ui.min.js"></script>
</body>
</html>