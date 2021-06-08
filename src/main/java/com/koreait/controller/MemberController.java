package com.koreait.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.koreait.domain.MemberVO;
import com.koreait.service.MemberService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/member/*")
@AllArgsConstructor
public class MemberController {
	
	private MemberService service;
	
	@PostMapping("/join")
	public String join(MemberVO vo) {
		log.info("join.....");
		log.info("vo: " + vo);
		vo.setPassword(encrypt(vo.getPassword()));
		service.join(vo);
		return "redirect:/home";
	}
	
	@PostMapping("/login")
	public String login(MemberVO vo, HttpSession session) {
		log.info("login.....");
		vo.setPassword(encrypt(vo.getPassword()));
		log.info("vo: " + vo);
		if(service.login(vo)) {
			log.info("로그인 성공");
			session.setAttribute("sessionId", vo.getMemberId());			
		}
		return "redirect:/home";
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.removeAttribute("sessionId");
		return "redirect:/home";
	}
	
	// 암호화
	public String encrypt(String pw) {
		String en_pw = "";
		for (int i = 0; i < pw.length(); i++) {
			en_pw += (char)(pw.charAt(i) * 2);
		}
		return en_pw;
	}
	
}
