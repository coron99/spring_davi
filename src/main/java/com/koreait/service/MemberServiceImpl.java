package com.koreait.service;

import org.springframework.stereotype.Service;

import com.koreait.domain.MemberVO;
import com.koreait.mapper.MemberMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@AllArgsConstructor
@Log4j
public class MemberServiceImpl implements MemberService {
	
	private MemberMapper mapper;	
	
	@Override
	public boolean join(MemberVO vo) {
		return mapper.join(vo) == 1;
	}

	@Override
	public boolean login(MemberVO vo) {
		return mapper.login(vo) == 1;
	}

}
