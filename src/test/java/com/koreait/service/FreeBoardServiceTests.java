package com.koreait.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.koreait.domain.BodyVO;
import com.koreait.domain.Criteria;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class) //테스트 코드가 스프링을 실행
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")//지정된 클래스나 문자열을 이용해서 필요한 객체들을 스프링 내에 객체로 등록
@Log4j
public class FreeBoardServiceTests {
	@Setter(onMethod_=@Autowired)
	private FreeBoardService service;
	
	@Setter(onMethod_=@Autowired)
	private SnsService snsService;
	
	@Setter(onMethod_=@Autowired)
	private ReportService reportService;
	
	@Test
	public void test() {
		BodyVO vo = new BodyVO();
		vo.setMemberId("jhp1115");
		vo.setWeight(90);
		reportService.insert(vo);
	}
	
	/*@Test
	public void testGetList() {
		Criteria cri = new Criteria(2,10);
		log.info(service.getListWithPaging(cri));
	}
	
	@Test
	public void testGetTotal() {
		Criteria cri = new Criteria(2,10);
		log.info("겟 토탈 :" + service.getTotal(cri));
	}*/
}
