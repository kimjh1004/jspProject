package com.utils;

import java.util.List;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.mobile.device.DeviceResolverHandlerInterceptor;
import org.springframework.mobile.device.site.SitePreferenceHandlerInterceptor;
import org.springframework.mobile.device.site.SitePreferenceHandlerMethodArgumentResolver;
import org.springframework.mobile.device.view.LiteDeviceDelegatingViewResolver;
import org.springframework.web.method.support.HandlerMethodArgumentResolver;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
public class Config implements WebMvcConfigurer {
	
	@Bean
	public LiteDeviceDelegatingViewResolver liteDeviceAwareViewResolver() {
	    InternalResourceViewResolver delegate =  new InternalResourceViewResolver();
	    delegate.setPrefix("/WEB-INF/views/");
	    delegate.setSuffix(".jsp");
	    
	    LiteDeviceDelegatingViewResolver resolver = new LiteDeviceDelegatingViewResolver(delegate);
	    resolver.setMobilePrefix("/sk_mob/");
	    resolver.setTabletPrefix("/sk_mob/");
	    resolver.setNormalPrefix("/sk_web/");
	    return resolver;
	}
	
	@Bean
	public DeviceResolverHandlerInterceptor 
	        deviceResolverHandlerInterceptor() {
	    return new DeviceResolverHandlerInterceptor();
	}

	@Bean
	public SitePreferenceHandlerInterceptor 
	        sitePreferenceHandlerInterceptor() {
	    return new SitePreferenceHandlerInterceptor();
	}

	@Bean
	public SitePreferenceHandlerMethodArgumentResolver 
	        sitePreferenceHandlerMethodArgumentResolver() {
	    return new SitePreferenceHandlerMethodArgumentResolver();
	}

	@Override
	public void addInterceptors(InterceptorRegistry registry) {
	    registry.addInterceptor(deviceResolverHandlerInterceptor());
	    registry.addInterceptor(sitePreferenceHandlerInterceptor());
	}
	@Override
	public void addArgumentResolvers(
	        List<HandlerMethodArgumentResolver> argumentResolvers) {
	    argumentResolvers.add(sitePreferenceHandlerMethodArgumentResolver());
	}
	
	//@Bean 
	//public DeviceResolverHandlerInterceptor deviceResolverHandlerInterceptor() { 
	//	return new DeviceResolverHandlerInterceptor(); 
	//}
	
	//@Override 
	//public void addInterceptors(InterceptorRegistry registry) { 
	//	registry.addInterceptor(deviceResolverHandlerInterceptor()); 
	//}

	//@Override 
	//public void addArgumentResolvers(List<HandlerMethodArgumentResolver> argumentResolvers) {
	//	argumentResolvers.add(new ServletWebArgumentResolverAdapter(new DeviceWebArgumentResolver()));
	//	argumentResolvers.add(new SitePreferenceHandlerMethodArgumentResolver());
	//}
}
