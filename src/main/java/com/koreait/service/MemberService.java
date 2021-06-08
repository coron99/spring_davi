package com.koreait.service;

import com.koreait.domain.MemberVO;

public interface MemberService {
	public boolean join(MemberVO vo);
	public boolean login(MemberVO vo);
}
