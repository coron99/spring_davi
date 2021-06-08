package com.koreait.mapper;

import com.koreait.domain.MemberVO;

public interface MemberMapper {
	public int join(MemberVO vo);
	public int login(MemberVO vo);
}
