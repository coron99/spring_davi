package com.koreait.mapper;

import java.util.List;

import com.koreait.domain.Criteria;
import com.koreait.domain.FreeBoardVO;
import com.koreait.domain.FreeReplyVO;

public interface FreeBoardMapper {
	//페이징 처리 된 리스트 가져오기
	public List<FreeBoardVO> getListWithPaging(Criteria cri);
	//게시글 개수 가져오기
	public int getTotal(Criteria cri);
	//게시글 하나의 정보 가져오기
	public FreeBoardVO read(int freeNum);
	public void insert(FreeBoardVO vo);
	public int delete(int freeNum);
	public int update(FreeBoardVO vo);
	public int replyInsert(FreeReplyVO vo);
	public int replyDelete(int replyNum);
	public int replyUpdate(FreeReplyVO vo);
	public String parentNumToId(int parentReplyNum);
	public List<FreeReplyVO> replyList(int freeNum);
}
