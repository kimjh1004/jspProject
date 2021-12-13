<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Expires" content="Mon, 06 Jan 1990 00:00:01 GMT">
<meta http-equiv="Expires" content="-1">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<style>
.indexA{
 display:block;
 position: absolute;
 top:0; left:0; bottom:0; right:0;
 width:200px; height:50px;
 border:1px solid #ccc;
 margin:auto; text-align: center;
 line-height: 50px;
}
</style>
</head>
<body>
<!-- layout -->

<form id="formId" method="GET">

<table>
	>>> ${sessionScope.login_id}
	<tr>
		<td>
			<a href="javascript:fnGoUrl('/complete')">complete</a>
		<td>
	</tr>
	<tr>
		<td>
			<a href="javascript:fnGoUrl('/consent')">consent</a>
		<td>
	</tr>
	<tr>
		<td>
			<a href="javascript:fnGoUrl('/newPassword')">newPassword</a>
		<td>
	</tr>
	<tr>
		<td>
			<a href="javascript:fnGoUrl('/newPasswordConfirm')">newPasswordConfirm</a>
		<td>
	</tr>
	<tr>
		<td>
			<a href="javascript:fnGoUrl('/password')">password</a>
		<td>
	</tr>
	<tr>
		<td>
			<a href="javascript:fnGoUrl('/resetPassword')">resetPassword</a>
		<td>
	</tr>
	<tr>
		<td>
			<a href="javascript:fnGoUrl('/resetPasswordConfirm')">resetPasswordConfirm</a>
		<td>
	</tr>
	<tr>
		<td>
			<a href="javascript:fnGoUrl('/sms-certi')">sms-certi</a>
		<td>
	</tr>
</table>
</form>

<label for="captcha" style="display:block">�ڵ� �α��� ����</label>
<div style="overflow:hidden">
	<div style="float:left">
		<img title="ĸ���̹���" src="/captchaImg.do" alt="ĸ���̹���"/>
		<div id="ccaudio" style="display:none"></div>
	</div>
</div>
<div style="padding:3px">
	<input id="reload" type="button" onclick="javaScript:getImage()" value="���ΰ�ħ"/>
</div>
<div style="padding:3px">	
	<input id="answer" type="text" value="">
	<input id="check" type="button" value="Ȯ��"/>
</div>



<!-- ����2 -->
<div class="g-recaptcha" data-sitekey="6LcqalMdAAAAAP67IYsGpyP3h7kLBZsw-a8zdXT-"></div> 
<script src='https://www.google.com/recaptcha/api.js'></script>


<!-- ����3-->
<script src="https://www.google.com/recaptcha/api.js?render=6LdLolcdAAAAAKlBchCH71_4FmrYd9zFXH0nfiYt"></script> 
<input type="hidden" id="g-recaptchar">
<button id="test_btn">�׽�Ʈ ��ư</button>
 

<script src="/sk_web/js/base/jquery-3.5.1.min.js"></script>
<script src="/sk_web/js/base/jquery-ui.min.js"></script>


<script>
	$(document).ready(function() {
	    //��ĸí ���� 3�ΰ�� ����
	    var reCaptcha_Key = '6LdLolcdAAAAAKlBchCH71_4FmrYd9zFXH0nfiYt';
	    grecaptcha.ready(function() {
        	grecaptcha.execute(reCaptcha_Key, {action: 'submit'}).then(function(token) {
        		$("#g-recaptchar").val(token);
        		/* 
        		$.ajax({
                   url: '/robot/token',
                   type : 'POST',
                   dataType: 'json',
                   data : {'token': token}
        		});
        		*/ 
           	});
        });

	    //��ĸí ���� 3�ΰ�� ��
		
		$("#test_btn, #check").click(function() {
	        $.ajax({
	            url: '/sms-certi',
	            type: 'post',
	            data: {
	                v2: $("#g-recaptcha-response").val(),
	                //v3 : $("#g-recaptchar").val(),
	                answer: $("#answer").val()
	                
	            },
	            success: function(data) {
	                 console.log(data);
	            }
	        });
	    });
	});
	
	function getImage(){
		console.log("�̹��� ���ΰ�ħ", ${ctx});
		var rand = Math.random();
		var url = '/captchaImg.do?rand='+rand;
		document.querySelector('img').setAttribute('src', url);
	}
	
	function fnGoUrl(url){
		$("#formId").attr("action", url);
		$("#formId").submit();
	}
</script>
</body>
</html>