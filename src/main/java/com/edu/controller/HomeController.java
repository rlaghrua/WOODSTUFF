package com.edu.controller;

import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.edu.vo.MemberVO;


/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping(value = "/")
public class HomeController {
	
	


	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model,  HttpServletRequest request) throws Exception {
		
		// 세션에 있는 사용자의 정보를 가져옴
		HttpSession session = request.getSession();
		MemberVO login = (MemberVO) session.getAttribute("login");
		return "home";
	}
	
	@RequestMapping(value = "/header.do")
	public String header(Model model, HttpServletRequest request) {
		// 세션에 있는 사용자의 정보를 가져옴
		HttpSession session = request.getSession();
		MemberVO login = (MemberVO) session.getAttribute("login");
		

		//git commit용
		return "header";
	}
	
	@RequestMapping(value = "/footer.do")
	public String footer(Locale locale, Model model) {
	
		//git commit용
		return "footer";
	}
	
	
	@RequestMapping(value = "/index.do")
	public String home2(Model model,  HttpServletRequest request) throws Exception {
		// 세션에 있는 사용자의 정보를 가져옴
		HttpSession session = request.getSession();
		MemberVO login = (MemberVO) session.getAttribute("login");
		
		
		
		
		
	
		return "home";
	}
}
	
	
	
	
	

