package com.koreait.mapper;

import java.util.List;

import com.koreait.domain.BodyVO;
import com.koreait.domain.MemberVO;

public interface ReportMapper {

	public void insert(BodyVO vo);
	
	public MemberVO getMember(String id);
	
	public BodyVO getBody(String id);
	
	public List<BodyVO> getBodyList();
	
	public double updateRate(String memberId);
	
	public List<BodyVO> bodyListById(String memberId);
}
