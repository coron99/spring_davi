package com.koreait.mapper;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Options;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.koreait.domain.FreeReplyVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class) //테스트 코드가 스프링을 실행
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")//지정된 클래스나 문자열을 이용해서 필요한 객체들을 스프링 내에 객체로 등록
@Log4j
public class FreeBoardMapperTests {
	
	@Setter(onMethod_=@Autowired)
	private FreeBoardMapper mapper;
	
	@Setter(onMethod_=@Autowired)
	private FoodMapper foodmapper;
	
	
	/*@Test
	public void foodAdd() {
		List<String> materials = new ArrayList<String>();
		
		materials.add("asd");
		materials.add("asd2");
		materials.add("asd3");
		
		log.info(materials);
		
		foodmapper.insertMaterial(5L, materials);
	}*/
	
	
	
	/*@Test
	public void deleteTest() {
		mapper.replyDelete(3);
	}*/
	
	/*@Test
	public void updateTest() {
		FreeReplyVO cVo = new FreeReplyVO();
		cVo.setReplyNum(10);
		cVo.setContent("수정");
		mapper.replyUpdate(cVo);
	}*/
	
	/*@Test
	public void selectTest() {
		mapper.replyList(223);
	}*/
	
	/*@Test
	public void insertTest() {
		FreeReplyVO cVo = new FreeReplyVO();
		
		cVo.setContent("자식댓글 테스트~~~");
		cVo.setFreeNum(223);
		cVo.setMemberId("ksy12345");
		cVo.setParentReplyId(mapper.parentNumToId(17));
		cVo.setParentReplyNum(2);
		mapper.replyInsert(cVo);
		
	}*/
	
	/*@Test
	public void updateTest() {
		FreeBoardVO vo = new FreeBoardVO();
		vo.setFreeContent("수정테스트");
		vo.setFreeTitle("수정 테스트입니다.");
		vo.setFreeNum(180);
		
		log.info("modify"+mapper.update(vo));
	}*/
/*	@Test
	public void freeTest() {
		FreeBoardVO vo = new FreeBoardVO();
		vo.setFreeContent("아니 제가 무슨일이 있었냐면요");
		vo.setFreeHead("잡담");
		vo.setFreeNotice(1);
		vo.setMemberId("ksy1234");
		vo.setFreeTitle("아 테테테테테스트");
		
		
		log.info("delete"+mapper.delete(183));
		log.info("insert"+mapper.insert(vo));
	}*/
	/*	@Test
	public void testGetListWithPaging() {
		Criteria cri = new Criteria(1,10);
		log.info("List : " + mapper.getListWithPaging(cri));
	}*/
}
