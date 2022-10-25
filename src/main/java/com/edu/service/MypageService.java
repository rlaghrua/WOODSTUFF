package com.edu.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.edu.vo.ChangePwVO;
import com.edu.vo.EmailDTO;
import com.edu.vo.MemberVO;



//git 넘기기용
public interface MypageService {

	//프로필 정보 가져오기
	MemberVO selectOne(MemberVO vo);

	//아이디 찾기
	String findId(MemberVO vo);
	
	//비밀번호 찾기
	HashMap<String,Object> findPw(ChangePwVO vo);
	
	//비밀번호 변경
	int changePw(ChangePwVO vo);	
	
	//이메일 보내기
	public void sendMail(EmailDTO dto);
	

}
