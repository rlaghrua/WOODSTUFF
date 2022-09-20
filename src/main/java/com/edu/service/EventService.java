package com.edu.service;

import java.util.List;

import com.edu.vo.EventVO;


public interface EventService {
	
	List<EventVO> eventMain(EventVO vo) throws Exception;
	
	
	public EventVO read(int member_idx) throws Exception;
}
