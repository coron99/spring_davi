package com.koreait.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.koreait.domain.Criteria;
import com.koreait.domain.SnsBoardVO;
import com.koreait.mapper.SnsMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@AllArgsConstructor
public class SnsServiceImple implements SnsService {
	
	private SnsMapper mapper;
	
	@Override
	public boolean insert(SnsBoardVO board) {
		return mapper.insert(board) == 1;
	}

	@Override
	public List<SnsBoardVO> getList(Criteria cri) {
		return mapper.getList(cri);
	}

	@Override
	public boolean delete(Long bno) {
		return mapper.delete(bno)==1;
	}
	
	@Override
	public int getTotal() {
		return mapper.getTotal();
	}


	@Override
	public int getLikeCnt(Long bno) {
		log.info("getLikeCnt...." + bno);
		return mapper.getLikeCnt(bno);
	}

	@Override
	public boolean getLikebyId(String memberId, Long bno) {
		log.info("memberId: " + memberId);
		log.info("bno: " + bno);
		return mapper.getLikebyId(memberId, bno) == 1;
	}

	@Override
	public void insertOrDeleteLike(String memberId, Long bno) {
		log.info("insertOrDeleteLike....");
		mapper.insertOrDeleteLike(memberId, bno);
	}


	
}
