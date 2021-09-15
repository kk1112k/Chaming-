/**
 * <pre>
 * 프로젝트명 : HiBoard
 * 패키지명   : com.icia.web.controller
 * 파일명     : IndexController.java
 * 작성일     : 2021. 1. 21.
 * 작성자     : daekk
 * </pre>
 */
package com.icia.chaming.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.icia.chaming.util.CookieUtil;

/**
 * <pre>
 * 패키지명   : com.icia.web.controller
 * 파일명     : IndexController.java
 * 작성일     : 2021. 1. 21.
 * 작성자     : daekk
 * 설명       : 인덱스 컨트롤러
 * </pre>
 */
@Controller("indexController")
public class IndexController
{
	private static Logger logger = LoggerFactory.getLogger(IndexController.class);

	/**
	 * <pre>
	 * 메소드명   : index
	 * 작성일     : 2021. 1. 21.
	 * 작성자     : daekk
	 * 설명       : 인덱스 페이지 
	 * </pre>
	 * @param request  HttpServletRequest
	 * @param response HttpServletResponse
	 * @return String
	 */
	@RequestMapping(value = "/index", method=RequestMethod.GET)
	public String index(HttpServletRequest request, HttpServletResponse response)
	{
		return "/index";
	}
	
	@RequestMapping(value = "/login", method=RequestMethod.GET)
	public String login(HttpServletRequest request, HttpServletResponse response)
	{
		return "/login";
	}
	
	@RequestMapping(value = "/join", method=RequestMethod.GET)
	public String join(HttpServletRequest request, HttpServletResponse response)
	{
		return "/join";
	}
	
	@RequestMapping(value = "/myPage", method=RequestMethod.GET)
	public String myPage(HttpServletRequest request, HttpServletResponse response)
	{
		return "/myPage";
	}
	
	@RequestMapping(value = "/newsFeed", method=RequestMethod.GET)
	public String newsFeed(HttpServletRequest request, HttpServletResponse response)
	{
		return "/newsFeed";
	}
	
	@RequestMapping(value = "/chatting", method=RequestMethod.GET)
	public String chatting(HttpServletRequest request, HttpServletResponse response)
	{
		return "/chatting";
	}
	
	@RequestMapping(value = "/detail", method=RequestMethod.GET)
	public String detail(HttpServletRequest request, HttpServletResponse response)
	{
		return "/detail";
	}
	
	@RequestMapping(value = "/send", method=RequestMethod.GET)
	public String send(HttpServletRequest request, HttpServletResponse response)
	{
		return "/send";
	}
	

}
