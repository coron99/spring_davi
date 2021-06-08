package com.koreait.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.koreait.domain.Criteria;
import com.koreait.domain.FreeBoardVO;
import com.koreait.domain.FreeReplyVO;
import com.koreait.mapper.FreeBoardMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@AllArgsConstructor
@Log4j
public class FreeBoardServiceImple implements FreeBoardService {
	private FreeBoardMapper mapper;
	
	@Override
	public List<FreeBoardVO> getListWithPaging(Criteria cri) {
		log.info("FreeBoard List.......");
		return mapper.getListWithPaging(cri);
	}

	@Override
	public int getTotal(Criteria cri) {
		log.info("FreeBoard getTotal.......");
		return mapper.getTotal(cri);
	}
	
	@Override
	public FreeBoardVO read(int freeNum) {
		log.info("FreeBoard read.....");
		return mapper.read(freeNum);
	}

	@Override
	public void insert(FreeBoardVO vo) {
		log.info("FreeBoard insert.....");
		mapper.insert(vo);
	}

	@Override
	public boolean delete(int freeNum) {
		log.info("FreeBoard delete....."+freeNum);
		return mapper.delete(freeNum)==1;
	}

	@Override
	public boolean update(FreeBoardVO vo) {
		log.info("FreeBoard update....."+vo.getFreeNum());
		return mapper.update(vo)==1;
	}

	@Override
	public boolean replyInsert(FreeReplyVO vo) {
		log.info("FreeBoard replyInsert.....");
		return mapper.replyInsert(vo) ==1;
	}

	@Override
	public boolean replyDelete(int replyNum) {
		log.info("FreeBoard replyDelete.....");		
		return mapper.replyDelete(replyNum) != 0;
	}

	@Override
	public boolean replyUpdate(FreeReplyVO vo) {
		log.info("FreeBoard replyUpdate.....");		
		return mapper.replyUpdate(vo)==1;
	}

	@Override
	public String parentNumToId(int parentReplyNum) {
		log.info("FreeBoard parentNumToId.....");		
		return mapper.parentNumToId(parentReplyNum);
	}

	@Override
	public List<FreeReplyVO> replyList(int freeNum) {
		log.info("FreeBoard replyList.....");		
		return mapper.replyList(freeNum);
	}

}
