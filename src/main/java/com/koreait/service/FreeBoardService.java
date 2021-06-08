package com.koreait.service;

import java.util.List;

import com.koreait.domain.Criteria;
import com.koreait.domain.FreeBoardVO;
import com.koreait.domain.FreeReplyVO;

public interface FreeBoardService {
	public List<FreeBoardVO> getListWithPaging(Criteria cri);
	public int getTotal(Criteria cri);	
	public FreeBoardVO read(int freeNum);
	public void insert(FreeBoardVO vo);
	public boolean delete(int freeNum);
	public boolean update(FreeBoardVO vo);
	public boolean replyInsert(FreeReplyVO vo);
	public boolean replyDelete(int replyNum);
	public boolean replyUpdate(FreeReplyVO vo);
	public String parentNumToId(int parentReplyNum);
	public List<FreeReplyVO> replyList(int freeNum);
}
