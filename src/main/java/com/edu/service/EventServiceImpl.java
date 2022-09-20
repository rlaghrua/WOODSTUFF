package com.edu.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;

import com.edu.dao.eventDao;

import com.edu.vo.EventVO;


@Service
public class EventServiceImpl implements EventService{
	
	@Autowired
	private eventDao dao;
	
	@Override
	public List<EventVO> eventMain(EventVO vo) throws Exception {
		ArrayList<EventVO> eventMain = (ArrayList<EventVO>) dao.eventMain(vo);
		return eventMain;
	}

	
	@Override
	public EventVO read(int member_idx) throws Exception {
		return dao.read(member_idx);
	}
	
	

}
