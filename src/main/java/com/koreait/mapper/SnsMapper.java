package com.koreait.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.koreait.domain.Criteria;
import com.koreait.domain.SnsBoardVO;

public interface SnsMapper {
	public int insert(SnsBoardVO board);
	public List<SnsBoardVO> getList(Criteria cri);
	public int delete(Long bno);
	public int getTotal();
	public int getLikeCnt(Long bno);
	public void insertOrDeleteLike(@Param("memberId") String memberId, @Param("bno") Long bno);
	public int getLikebyId(@Param("memberId") String memberId, @Param("bno") Long bno);
}
