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
 
<title> �޴��� ���� ���� �̿� ���� </title>
</head>

<body oncontextmenu="return false">
<!-- layout -->
<div id="wrap">
	<!-- ========= #headBox ================================ -->
  <header id="headBox">
    <button type="button" value="back" class="back" onClick="history.go(-1)";>
    </button>

    <h1>�޴��� ���� ���� �̿� ����</h1>
  </header>
  
  
  <!-- ========= #infoBox ================================ -->
  <section id="infoBox">
		<div class="terms-of-use">
			<p>
				W[SK�ڷ��� �޴��� �������� �̿���]
				<br />
				<br />
				<br />
				��1�� (����)
				�� ����� ���޴��� ���� ���񽺡��� �����ϴ� �����������ڷ��� �ֽ�ȸ�硯(���� ����ȸ�硯���� �մϴ�)�� ���޴��� �������񽺡� �̿��� (���� ���̿��ڡ��� �մϴ�)���� ���޴��� �������񽺡� �̿뿡 ���� ��ȸ�硯�� ���̿��ڡ��� �Ǹ��� �ǹ�, ��Ÿ ���� ������ ������ �������� �մϴ�.
				<br />
				<br />
				<br />
				��2�� (����� ����)
				�� ����� ���޴��� ���� ���񽺡��� �����ϴ� �����������ڷ��� �ֽ�ȸ�硯(���� ����ȸ�硯���� �մϴ�)�� ���޴��� �������񽺡� �̿��� (���� ���̿��ڡ��� �մϴ�)���� ���޴��� �������񽺡� �̿뿡 ���� ��ȸ�硯�� ���̿��ڡ��� �Ǹ��� �ǹ�, ��Ÿ ���� ������ ������ �������� �մϴ�.
				<br />
				<br />
				<br />
				�� 3 �� (����� ȿ�� �� ����)
				�� ����� ���޴��� ���� ���񽺡��� �����ϴ� �����������ڷ��� �ֽ�ȸ�硯(���� ����ȸ�硯���� �մϴ�)�� ���޴��� �������񽺡� �̿��� (���� ���̿��ڡ��� �մϴ�)���� ���޴��� �������񽺡� �̿뿡 ���� ��ȸ�硯�� ���̿��ڡ��� �Ǹ��� �ǹ�, ��Ÿ ���� ������ ������ �������� �մϴ�.
				�� ����� ���޴��� ���� ���񽺡��� �����ϴ� �����������ڷ��� �ֽ�ȸ�硯(���� ����ȸ�硯���� �մϴ�)�� ���޴��� �������񽺡� �̿��� (���� ���̿��ڡ��� �մϴ�)���� ���޴��� �������񽺡� �̿뿡 ���� ��ȸ�硯�� ���̿��ڡ��� �Ǹ��� �ǹ�, ��Ÿ ���� ������ ������ �������� �մϴ�.
				<br />
				<br />
				<br />
				�� 25 �� (���ҹ���)
				�� ���� �̿�� �����Ͽ� ȸ��� ȸ�� ���̿� ������ �߻��� ���,
				ȸ��� ȸ���� ������ �ذ��� ���� ������ �����մϴ�.
				�� �� �� �� 1���� ���ǿ����� ������ �ذ���� ���� ��� �� ����ڴ�
				�λ�Ҽ۹����� ���ҹ����� �Ҹ� ������ �� �ֽ��ϴ�.
				<br />
				<br />
				<br />
				��Ģ
				(������) �� ����� YYYY�� MM�� DD�Ϻ��� �����մϴ�.
				</p>
		</div>
	</section>

	<footer id="footBox">
		<form action="/complete" method="get" name="consent">
			<fieldset>
				<div class="consentBox">
					<input type="checkbox" name="consentCheck" id="consentCheck" class="checkbox" value="���� ���Ե���" required>
					<label for="consentCheck" id="consent_p">�� ������ Ȯ���Ͽ����� ���� ���� �̿뿡 �����մϴ�.</label>
				</div>

				<div class="consentBtn">
					<button type="submit" class="nextBtn" disabled>
						�����ϰ� �����ϱ�
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