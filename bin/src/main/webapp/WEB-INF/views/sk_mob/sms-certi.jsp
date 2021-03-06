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
 
<title> 본인인증 </title>
</head>

<body oncontextmenu="return false">
<!-- layout -->
<div id="wrap">
  <!-- ========= #popup_toast(전문보기) ============================ -->
  <!-- ========= terms-views.js에서 입력 가능 form ================= -->
  <aside id="popupBox" style="display:none;">
    <div class="popup">
      <div class="popupH">
        <h2></h2>
      </div>

      <div class="popupC">
        <p></p>
      </div>

      <div class="popupE">
        <button type="button" class="termsE">닫기</button>
      </div>
    </div>
  </aside>

  <!-- ========= #headBox ================================ -->
  <header id="headBox">
    <button type="button" value="back" class="back" onClick="history.go(-1)">
    </button>

    <h1>휴대폰 본인인증</h1>
  </header>
  
  <!-- ========= #infoBox ================================ -->
<form action="consent.html" method="get" name="sms" onsubmit="return certiCheck()">
  <section id="infoBox">
        <div class="smsContent">
          <fieldset class="user_set">
            <legend class="hidden">SMS 인증</legend>
            <dl>
              <dt>
                <label for="name">이름</label>
              </dt>
              <dd class="input_area userName_area">
                <div>
                  <input type="text" name="name" id="name" value="" placeholder="이름">
                </div>

                <input type="radio" class="hidden radio-label" name="accept-offers" id="loc-btn">
                <label class="button-label locLabel" for="loc-btn">내국인</label>

                <input type="radio" class="hidden radio-label" name="accept-offers" id="for-btn">             
                <label class="button-label" for="for-btn">외국인</label>
              </dd>
            </dl>
            
            <dl>
              <dt><label for="birthday">생년월일</label></dt>
              <dd class="input_area birthday_area">
                <div>
                  <input type="tel" id="birthday-front" name="" maxlength="6" placeholder="생년월일 6자리" autocomplete='off'>
                  <span class="space">&#45;</span>
                  <input type="tel" id="birthday-back" name="" maxlength="1" placeholder="뒤 1자리" autocomplete='off'>
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
              <dt><label for="phoneNumber">휴대폰번호</label></dt>
              <dd class="input_area phoneNumber_area">
                <div>
                  <input type="tel" id="phoneNumber" name="phoneNumber" value="" placeholder="'-'제외하고 숫자만 입력" maxlength="11">
                </div>
                <p class="phoneconfirmText error">&#42; 휴대폰 번호가 올바르지 않습니다.</p>
              </dd>
            </dl>

            <dl class="certiDL">
              <dt><label for="certiNumber">인증번호</label></dt>
              <dd class="input_area certiNumber_area">
                <div>
                  <input type="tel" id="certiNumber" name="certiNumber" value="" placeholder="숫자 6자리 입력" maxlength="6" required>
                </div>

                <div id="timer">03:00</div>

                <p class="confirmText error">&#42; 인증번호 불일치, 인증번호를 다시 확인해주세요.</p>

                <p>&#42; 3분 이내로 인증번호(6자리)를 입력해주세요.</p>
                <p>&#42; 입력 시간 초과 시 "재전송"을 눌러주세요. <span id="resend"><u>재전송</u></span></p>
              </dd>
            </dl>
          </fieldset>
        </div>

        <div class="termsContent">
          <ul class="list">
            <li>
              <fieldset class="all_check">
                <legend class="hidden">전체 동의확인</legend>
                <input type="checkbox" id="allCheck" name="allCheck" value="전체 동의" />
                <label for="allCheck" class="all_check_title">모두 동의</label>

                <div class="up_btn" onClick="turn(this)"></div>
              </fieldset>
            
              <fieldset class="require_check">
                <legend class="hidden"> 동의 확인 </legend>
                <ul class="checkUl">
                  <li class="checkLi">
                    <input type="checkbox" name="termsInfo" class="checkbox" id="termsInfo" value="개인정보 수집/이용 동의" required />
                    <label for="termsInfo">개인정보 수집/이용 동의</label>
                    <span class="terms_views tv-1">전문보기</span>
                  </li>
          
                  <li class="checkLi">
                    <input type="checkbox" name="termsProcess" class="checkbox" id="termsProcess" value="개인정보 수집/이용 동의" required />
                    <label for="termsProcess">고유식별정보처리 동의</label>
                    <span class="terms_views tv-2">전문보기</span>
                  </li>
          
                  <li class="checkLi">
                    <input type="checkbox" name="termsService" class="checkbox" id="termsService" value="개인정보 수집/이용 동의" required />
                    <label for="termsService">서비스 이용약관 동의</label>
                    <span class="terms_views tv-3">전문보기</span>
                  </li>
          
                  <li class="checkLi">
                    <input type="checkbox" name="termsUse" class="checkbox" id="termsUse" value="개인정보 수집/이용 동의" required>
                    <label for="termsUse">통신사 이용약관 동의</label>
                    <span class="terms_views tv-4">전문보기</span>
                  </li>
                  <p class="checkconfirmText error">&#42; 약관에 동의해주세요.</p>
                </ul>
              </fieldset>
            </li>
          </ul>
        </div>
  </section>
  
  <div class="smsBtn">
    <button type="button" id="certiBtn" disabled="true">인증번호 받기</button>
    <button type="submit" name="submit" id="nextBtn">인증 완료</button>
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