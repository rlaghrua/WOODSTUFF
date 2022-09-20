package com.edu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.edu.service.Userservice;
import com.edu.vo.UserVO;





@RequestMapping(value = "/user")
@Controller
public class UserController {

	@Autowired
	private Userservice userservice;

	@RequestMapping(value = "/user_list.do")
	public String list(Model model) {

		 List<UserVO> list = userservice.selectAll();
		  
		  model.addAttribute("list", list);
		 

		return "user/user_list";
	}
	
	@RequestMapping(value="/user_write.do")
	public String user_writer(Model model) {
		//System.out.println("get방식 메소드로 들어옴");
		//model.addAttribute("user_idx" , user_idx);
		 
		return "user/user_write";
		
	}
	
	@RequestMapping(value="/user_write.do", method=RequestMethod.POST)
	public String write(UserVO vo) {
		int result = userservice.write(vo);
		return "redirect:user_list.do";
		
	}
	
	@RequestMapping(value = "/user_view.do")
	public String view(int user_idx,Model model) {
		
		UserVO vo = userservice.view(user_idx);
		
		model.addAttribute("vo",vo);
		
		return "notice/notice_view";
	}
}