package com.utils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class Interceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest request,HttpServletResponse response,Object handler) throws Exception {
    	log.info("preHandle");
    	
    	HttpSession session = request.getSession();
        Object obj = session.getAttribute("user");
        log.info("obj >>, {}", obj);
                  
        if ( obj == null ){
        	System.out.println("로그인부터 하세요!!!");
        	 
             response.sendRedirect("/login");
             return false; // 더이상 컨트롤러 요청으로 가지 않도록 false로 반환함
        }
          
        return true;
    }

    @Override
    public void postHandle(HttpServletRequest request,HttpServletResponse response,Object handler, ModelAndView modelAndView) throws Exception {
        log.info("postHandle");
    }

    @Override
    public void afterCompletion(HttpServletRequest request,HttpServletResponse response,Object object,Exception ex) throws Exception {
        log.info("afterCompletion");
    }
}
