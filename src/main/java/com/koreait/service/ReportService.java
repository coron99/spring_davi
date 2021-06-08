package com.koreait.service;

import java.util.List;

import com.koreait.domain.BodyVO;
import com.koreait.domain.MemberVO;

public interface ReportService {
	public void insert(BodyVO vo);
	
	public MemberVO getMember(String id);
	
	public BodyVO getBody(String id);
	
	public List<BodyVO> getBodyList();
	
	public List<BodyVO> bodyListById(String memberId);
}
