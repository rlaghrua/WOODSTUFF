package com.edu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.edu.dao.Userdao;
import com.edu.vo.UserVO;


@Service
public class UserserviceImpl implements Userservice {
	
	@Autowired
	private Userdao userdao;
	
	public List<UserVO> selectAll() {
		return userdao.selectAll();
	}
	
	@Override
	public int write(UserVO vo) {
		// TODO Auto-generated method stub
		return userdao.write(vo);
	}
	
	@Override
	public UserVO view(int user_idx) {
		
		return userdao.view(user_idx);
	}
}
