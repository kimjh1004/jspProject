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
 
<title> �������� </title>
</head>

<body oncontextmenu="return false">
<!-- layout -->
<div id="wrap">
  <!-- ========= #popup_toast(��������) ============================ -->
  <!-- ========= terms-views.js���� �Է� ���� form ================= -->
  <aside id="popupBox" style="display:none;">
    <div class="popup">
      <div class="popupH">
        <h2></h2>
      </div>

      <div class="popupC">
        <p></p>
      </div>

      <div class="popupE">
        <button type="button" class="termsE">�ݱ�</button>
      </div>
    </div>
  </aside>

  <!-- ========= #headBox ================================ -->
  <header id="headBox">
    <button type="button" value="back" class="back" onClick="history.go(-1)">
    </button>

    <h1>�޴��� ��������</h1>
  </header>
  
  <!-- ========= #infoBox ================================ -->
<form action="consent.html" method="get" name="sms" onsubmit="return certiCheck()">
  <section id="infoBox">
        <div class="smsContent">
          <fieldset class="user_set">
            <legend class="hidden">SMS ����</legend>
            <dl>
              <dt>
                <label for="name">�̸�</label>
              </dt>
              <dd class="input_area userName_area">
                <div>
                  <input type="text" name="name" id="name" value="" placeholder="�̸�">
                </div>

                <input type="radio" class="hidden radio-label" name="accept-offers" id="loc-btn">
                <label class="button-label locLabel" for="loc-btn">������</label>

                <input type="radio" class="hidden radio-label" name="accept-offers" id="for-btn">             
                <label class="button-label" for="for-btn">�ܱ���</label>
              </dd>
            </dl>
            
            <dl>
              <dt><label for="birthday">�������</label></dt>
              <dd class="input_area birthday_area">
                <div>
                  <input type="tel" id="birthday-front" name="" maxlength="6" placeholder="������� 6�ڸ�" autocomplete='off'>
                  <span class="space">&#45;</span>
                  <input type="tel" id="birthday-back" name="" maxlength="1" placeholder="�� 1�ڸ�" autocomplete='off'>
                  <span class="secret">
                    <ul>
                      <li></li>
                      <li></li>
                      <li></li>
                      <li></li>
                      <li></li>
                      <li></li>
                    </ul>
                  </span>
                </div>
              </dd>
            </dl>
    
            <!-- phone certi -->
            <dl>
              <dt><label for="phoneNumber">�޴�����ȣ</label></dt>
              <dd class="input_area phoneNumber_area">
                <div>
                  <input type="tel" id="phoneNumber" name="phoneNumber" value="" placeholder="'-'�����ϰ� ���ڸ� �Է�" maxlength="11">
                </div>
                <p class="phoneconfirmText error">&#42; �޴��� ��ȣ�� �ùٸ��� �ʽ��ϴ�.</p>
              </dd>
            </dl>

            <dl class="certiDL">
              <dt><label for="certiNumber">������ȣ</label></dt>
              <dd class="input_area certiNumber_area">
                <div>
                  <input type="tel" id="certiNumber" name="certiNumber" value="" placeholder="���� 6�ڸ� �Է�" maxlength="6" required>
                </div>

                <div id="timer">03:00</div>

                <p class="confirmText error">&#42; ������ȣ ����ġ, ������ȣ�� �ٽ� Ȯ�����ּ���.</p>

                <p>&#42; 3�� �̳��� ������ȣ(6�ڸ�)�� �Է����ּ���.</p>
                <p>&#42; �Է� �ð� �ʰ� �� "������"�� �����ּ���. <span id="resend"><u>������</u></span></p>
              </dd>
            </dl>
          </fieldset>
        </div>

        <div class="termsContent">
          <ul class="list">
            <li>
              <fieldset class="all_check">
                <legend class="hidden">��ü ����Ȯ��</legend>
                <input type="checkbox" id="allCheck" name="allCheck" value="��ü ����" />
                <label for="allCheck" class="all_check_title">��� ����</label>

                <div class="up_btn" onClick="turn(this)"></div>
              </fieldset>
            
              <fieldset class="require_check">
                <legend class="hidden"> ���� Ȯ�� </legend>
                <ul class="checkUl">
                  <li class="checkLi">
                    <input type="checkbox" name="termsInfo" class="checkbox" id="termsInfo" value="�������� ����/�̿� ����" required />
                    <label for="termsInfo">�������� ����/�̿� ����</label>
                    <span class="terms_views tv-1">��������</span>
                  </li>
          
                  <li class="checkLi">
                    <input type="checkbox" name="termsProcess" class="checkbox" id="termsProcess" value="�������� ����/�̿� ����" required />
                    <label for="termsProcess">�����ĺ�����ó�� ����</label>
                    <span class="terms_views tv-2">��������</span>
                  </li>
          
                  <li class="checkLi">
                    <input type="checkbox" name="termsService" class="checkbox" id="termsService" value="�������� ����/�̿� ����" required />
                    <label for="termsService">���� �̿��� ����</label>
                    <span class="terms_views tv-3">��������</span>
                  </li>
          
                  <li class="checkLi">
                    <input type="checkbox" name="termsUse" class="checkbox" id="termsUse" value="�������� ����/�̿� ����" required>
                    <label for="termsUse">��Ż� �̿��� ����</label>
                    <span class="terms_views tv-4">��������</span>
                  </li>
                  <p class="checkconfirmText error">&#42; ����� �������ּ���.</p>
                </ul>
              </fieldset>
            </li>
          </ul>
        </div>
  </section>
  
  <div class="smsBtn">
    <button type="button" id="certiBtn" disabled="true">������ȣ �ޱ�</button>
    <button type="submit" name="submit" id="nextBtn">���� �Ϸ�</button>
  </div>
</form>
</div>

<!--script -->
<script src="/sk_mob/js/base/jquery-3.5.1.min.js"></script>
<script src="/sk_mob/js/base/jquery-ui.min.js"></script>
<script src="/sk_mob/js/src/sms-certi.js"></script>
<script src="/sk_mob/js/src/terms-check.js"></script>
</body>
</html>