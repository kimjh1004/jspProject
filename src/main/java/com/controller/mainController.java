package com.controller;

import java.io.IOException;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.client.RestTemplate;

import nl.captcha.Captcha;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.mobile.device.site.SitePreference;

import com.utils.CaptchaUtil;
import com.utils.VerifyRecaptcha;
import com.vo.User;

import lombok.extern.slf4j.Slf4j;

@Controller
@SessionAttributes("user")
@Slf4j
public class mainController {
	
	private static final String IS_MOBILE = "/sk_mob";
	private static final String IS_WEB	  = "/sk_web";
 
	@GetMapping("/login")
	public String login() {
//	public String login(SitePreference sitePreference, HttpServletRequest request, Model model) {
//		if (sitePreference == SitePreference.NORMAL) {
//            log.info("Site preference is normal");
//        } else if (sitePreference == SitePreference.MOBILE) {
//            log.info("Site preference is mobile");
//        } else if (sitePreference == SitePreference.TABLET) {
//            log.info("Site preference is tablet");
//        }  
//		 
//
//        model.addAttribute("name", "hanumoka");
        return "/login";
	}
	
	@GetMapping("/index")
	public String index() {
		return "/index";
	}

	
	@PostMapping("/index")
	public String index(SitePreference sitePreference, HttpServletRequest request, HttpSession session,Model model) throws Exception{
		String id = request.getParameter("userId");
		System.out.println("파라메타 :" + id);
		
		User user = new User();
		
		if (sitePreference == SitePreference.NORMAL) {
			user.setIsWeb("Y");
        } else if (sitePreference == SitePreference.MOBILE) {
        	user.setIsWeb("N");
        } else if (sitePreference == SitePreference.TABLET) {
        	user.setIsWeb("N");
        }  
		 
		user.setUserId(id);
		
		session.setMaxInactiveInterval(60 * 1);
		session.setAttribute("login_id", id);
		
		model.addAttribute("user", user);
		log.info("USER >>>" + user);
		
		return "/index";
	}
	
	@GetMapping("/complete")
    public String complete(){
		return "/complete";
    }
	
	@GetMapping("/consent")
    public String aopConsent(HttpServletRequest req) throws Exception {
		return "/consent";
    }
	
	@GetMapping("/newPassword")
    public String newPassword(HttpServletRequest req, HttpSession session) throws Exception {
		String userAgent = req.getHeader("User-Agent").toUpperCase();
		
		if(userAgent.indexOf("MOBILE") > -1) {
			System.out.println("모바일 환경입니다");
			return IS_MOBILE + "/newPassword";
		}else {
			System.out.println("pc 환경입니다.");
			return IS_WEB + "/newPassword";
		}
    }
	
	@GetMapping("/newPasswordConfirm")
    public String newPasswordConfirm(HttpServletRequest req) throws Exception {
		String userAgent = req.getHeader("User-Agent").toUpperCase();
		
		if(userAgent.indexOf("MOBILE") > -1) {
			System.out.println("모바일 환경입니다");
			return IS_MOBILE + "/newPasswordConfirm";
		}else {
			System.out.println("pc 환경입니다.");
			return IS_WEB + "/newPasswordConfirm";
		}
    }
	
	@GetMapping("/password")
    public String password(HttpServletRequest req) throws Exception {
		String userAgent = req.getHeader("User-Agent").toUpperCase();
		
		if(userAgent.indexOf("MOBILE") > -1) {
			System.out.println("모바일 환경입니다");
			return IS_MOBILE + "/password";
		}else {
			System.out.println("pc 환경입니다.");
			return IS_WEB + "/password";
		}
    }
	
	@GetMapping("/resetPassword")
    public String resetPassword(HttpServletRequest req) throws Exception {
		String userAgent = req.getHeader("User-Agent").toUpperCase();
		
		if(userAgent.indexOf("MOBILE") > -1) {
			System.out.println("모바일 환경입니다");
			return IS_MOBILE + "/resetPassword";
		}else {
			System.out.println("pc 환경입니다.");
			return IS_WEB + "/resetPassword";
		}
    }
	
	@GetMapping("/resetPasswordConfirm")
    public String resetPasswordConfirm(HttpServletRequest req) throws Exception {
		String userAgent = req.getHeader("User-Agent").toUpperCase();
		
		if(userAgent.indexOf("MOBILE") > -1) {
			System.out.println("모바일 환경입니다");
			return IS_MOBILE + "/resetPasswordConfirm";
		}else {
			System.out.println("pc 환경입니다.");
			return IS_WEB + "/resetPasswordConfirm";
		}
	}
	
	@GetMapping("/sms-certi")
    public String certi(HttpServletRequest req) throws Exception {
		String userAgent = req.getHeader("User-Agent").toUpperCase();
		
		if(userAgent.indexOf("MOBILE") > -1) {
			System.out.println("모바일 환경입니다");
			return IS_MOBILE + "/sms-certi";
		}else {
			System.out.println("pc 환경입니다.");
			return IS_WEB + "/sms-certi";
		}
    }
	
	// captcha 이미지 가져오는 메서드
	@GetMapping("/captchaImg.do")
	@ResponseBody
	public void captchaImg(HttpServletRequest req, HttpServletResponse res) throws Exception{
		new CaptchaUtil().getImgCaptCha(req, res);
	}
	
	@PostMapping("/sms-certi")
	@ResponseBody
    public int VerifyRecaptcha(HttpServletRequest req, HttpServletResponse res) {
		/*
		System.out.println("answer : " + req.getParameter("answer"));
	    Captcha captcha = (Captcha) req.getSession().getAttribute(Captcha.NAME);
	    if(captcha.isCorrect((String) req.getParameter("answer"))) {
	    	System.out.println("일치!!");
	    }else {
	    	System.out.println("불일치!!");
	    }
	    System.out.println("captcha >>>" + captcha);
	    */
	    //3버전
	    VerifyRecaptcha.setSecretKey("6LdLolcdAAAAAJ21YBRM9DO-TRc6W37v67GaREtG");
	    String gRecaptchaResponse = req.getParameter("v3");
	    
        System.out.println("gRecaptchaResponse :" + gRecaptchaResponse);
	    //0 = 성공, 1 = 실패, -1 = 오류
        try {
        	 
        	if(VerifyRecaptcha.verify(gRecaptchaResponse)) {
                System.out.println("연결 성공");
        		return 0;
        	}else {
        		System.out.println("연결 실패!!");
        		return 1;
        	}
        } catch (IOException e) {
            e.printStackTrace();
            return -1;
        }
    }


}
