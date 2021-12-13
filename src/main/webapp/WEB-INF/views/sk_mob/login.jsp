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

<form id="formId" action="/index" method="POST">
 	<input type="text" id="userId" name="userId">
 	<input type="button" onClick="fnGoUrl();" value="모바일">
</form>

<script>
	function fnGoUrl(){
		
		window.open('/consent', '네이버팝업', 'width=400px,height=800px,scrollbars=yes');

		
		//$("#formId").attr("action", url);
		//$("#formId").submit();
	}
</script>
</body>
</html>