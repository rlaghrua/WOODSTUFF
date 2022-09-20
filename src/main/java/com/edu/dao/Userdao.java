package com.edu.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.edu.vo.UserVO;

@Repository
public class Userdao {
	@Autowired
	private SqlSession sqlsession;
	
	public List<UserVO> selectAll() {
		return sqlsession.selectList("UserMapper.user_list");
	}
	
	public int write(UserVO vo) {
		return sqlsession.insert("UserMapper.write", vo);
	}
	
	public UserVO view(int user_idx) {
		return sqlsession.selectOne("UserMapper.view", user_idx);
	}
}
