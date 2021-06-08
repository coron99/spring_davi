package com.koreait.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.koreait.domain.BodyVO;
import com.koreait.domain.MemberVO;
import com.koreait.service.ReportService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/report/*")
@AllArgsConstructor
public class ReportController {
	
	private ReportService service;
	
	@GetMapping("/reportView")
	public void reportView(HttpSession session, Model model) {
		log.info("report들어옴");
		String id = (String)session.getAttribute("sessionId");
		BodyVO bodyVO = service.getBody(id);
		if(bodyVO == null) {
			model.addAttribute("check", "check");
		}else {
			MemberVO memberVO = service.getMember(id);
			double bmi = getBMI(memberVO.getHeight()/100.0, bodyVO.getWeight());
			model.addAttribute("bodyVO", bodyVO);
			model.addAttribute("memberVO", memberVO);
			model.addAttribute("rankingList", service.getBodyList());
			model.addAttribute("bmi", bmi);
		}
	}
	
	@GetMapping("/insert")
	public String insert(BodyVO vo) {
		service.insert(vo);
		return "redirect:/report/reportView";
	}
	
	private double getBMI(double height, double weight) {
		double bmi = weight/(height * height);
		double roundBmi = Math.round(bmi * 10)/ 10.0;
		return roundBmi;
	}
	
	@ResponseBody
	@GetMapping(value= "/barChartAjax", produces= MediaType.APPLICATION_JSON_UTF8_VALUE)
	public ResponseEntity<List<BodyVO>> barChartAjax(HttpSession session){
		List<BodyVO> list = service.bodyListById((String)session.getAttribute("sessionId"));
		return new ResponseEntity<List<BodyVO>>(list,HttpStatus.OK);
	}
	
}
