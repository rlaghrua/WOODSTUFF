package com.edu.service;

import java.util.List;

import com.edu.vo.UserVO;

public interface Userservice {
	List<UserVO> selectAll();
	
	int write(UserVO vo);
	
	UserVO view(int user_idx);
}


