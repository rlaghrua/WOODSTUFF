package com.edu.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.edu.service.EventService;
import com.edu.vo.EventVO;


@Controller
@RequestMapping(value = "/event")
public class EventController {
	
	@Autowired
	private EventService es;
	
	@RequestMapping(value = "/event_main.do")
	public String eventMain(EventVO vo, HttpServletRequest request, Model model) throws Exception {
		
		ArrayList<EventVO> eventMain = null;
		eventMain = (ArrayList<EventVO>) es.eventMain(vo);
		request.setAttribute("eventMain", eventMain);
		
		return "event/event_main";
	}
	
}
