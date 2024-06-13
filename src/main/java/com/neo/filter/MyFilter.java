package com.neo.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import com.neo.bean.WebBean;

/*
 * 这个类是过滤类  请求处理之前过滤
 * 
 */
public class MyFilter implements Filter {
	
	

	public void destroy() {
		// TODO Auto-generated method stub
		
		System.out.println("=================");
	}


	public void doFilter(ServletRequest srequest, ServletResponse sresponse, FilterChain filterChain)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
		HttpServletRequest request = (HttpServletRequest) srequest;
		System.out.println("this is MyFilter,url :"+request.getRequestURI());// /welcome
		
		System.out.println("this is MyFilter,url :"+request.getLocalAddr());// 0:0:0:0:0:0:0:1
		System.out.println("this is MyFilter,url :"+request.getLocalName());//0:0:0:0:0:0:0:1
		System.out.println("this is MyFilter,url :"+request.getLocalPort());//8080
		System.out.println("this is MyFilter,url :"+request.getMethod());//GET
		System.out.println("this is MyFilter,url :"+request.getPathInfo());//null
		System.out.println("this is MyFilter,url :"+request.getPathTranslated());//null
		System.out.println("this is MyFilter,url :"+request.getProtocol());//HTTP/1.1
		System.out.println("this is MyFilter,url :"+request.getQueryString());//null
		System.out.println("this is MyFilter,url :"+request.getRemoteAddr());//0:0:0:0:0:0:0:1
		System.out.println("this is MyFilter,url :"+request.getRemoteHost());//0:0:0:0:0:0:0:1
		System.out.println("this is MyFilter,url :"+request.getRemoteUser());//null
		System.out.println("this is MyFilter,url :"+request.getServerName());//localhost
		System.out.println("this is MyFilter,url :"+request.getServerPort());//8080
		System.out.println("this is MyFilter,url :"+request.getServletPath());///welcome
		System.out.println("this is MyFilter,url :"+request.getAttributeNames());//java.util.Collections$3@9cc5045
		
		
		
		addWebClickCount();//
		
		filterChain.doFilter(srequest, sresponse);
	}


	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
	}
	
	
	
	/*
	 * 每次访问网站的访问量都添加一次
	 * 
	 * 
	 */
	public void addWebClickCount(){
		WebBean.setWebClickCount(WebBean.getWebClickCount()+1);
	}
}