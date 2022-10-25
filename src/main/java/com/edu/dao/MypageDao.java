package com.edu.dao;

import java.util.HashMap;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.edu.vo.ChangePwVO;
import com.edu.vo.MemberVO;


//git 넘기기용

@Repository
public class MypageDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	/*member*/
	
	
	public int update_profile(MemberVO vo) {
		return sqlSession.update("MypageMapper.update_profile",vo);
	}
	
	public String findId(MemberVO vo) {
		return sqlSession.selectOne("MypageMapper.findId", vo);
	}
	
	public HashMap<String, Object> findPw(ChangePwVO vo) {
		return sqlSession.selectOne("MypageMapper.findPw", vo);
	}
	
	public int changePw(ChangePwVO vo) {
		return sqlSession.update("MypageMapper.changePw", vo);
	}
	
	
	

}
