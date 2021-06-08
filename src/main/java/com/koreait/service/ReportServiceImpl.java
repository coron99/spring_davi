package com.koreait.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.koreait.domain.BodyVO;
import com.koreait.domain.MemberVO;
import com.koreait.mapper.ReportMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@AllArgsConstructor
public class ReportServiceImpl implements ReportService {
	
	private ReportMapper mapper;	
	
	@Override
	public void insert(BodyVO vo) {
		log.info("insert...." + vo);
		MemberVO member = mapper.getMember(vo.getMemberId());
		double total = member.getWeight() - member.getGoalWeight(); 
		double changeAmount = member.getWeight() - vo.getWeight();
		
		double status = Double.parseDouble(String.format("%.1f", (changeAmount/total) *100));
		
		if(status <= 0) {
			status = 0;
		}
		
		vo.setStatus(status);
		mapper.insert(vo);
	}

	@Override
	public MemberVO getMember(String id) {
		log.info("getMember...." + id);
		return mapper.getMember(id);
	}

	@Override
	public BodyVO getBody(String id) {
		log.info("getBody...." + id);
		return mapper.getBody(id);
	}

	@Override
	public List<BodyVO> getBodyList() {
		log.info("getBodyList....");
		return mapper.getBodyList();
	}

	@Override
	public List<BodyVO> bodyListById(String memberId) {
		return mapper.bodyListById(memberId);
	}

}
