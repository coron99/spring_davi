package com.koreait.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.koreait.domain.Criteria;
import com.koreait.domain.SnsBoardVO;

public interface SnsService {
	public boolean insert(SnsBoardVO board);
	public List<SnsBoardVO> getList(Criteria cri);
	public boolean delete(Long bno);
	public int getTotal();
	public int getLikeCnt(Long bno);
	public void insertOrDeleteLike(String memberId,Long bno);
	public boolean getLikebyId(String memberId, Long bno);
}
