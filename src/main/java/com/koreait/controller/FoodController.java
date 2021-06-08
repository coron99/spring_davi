package com.koreait.controller;

import java.io.File;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.koreait.domain.FoodVO;
import com.koreait.service.FoodService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/food/*")
@AllArgsConstructor
public class FoodController {	
	
	private FoodService service;
	
	@GetMapping(value="/foods")
	public void foodList(Model model) {
		log.info("list ...");
		model.addAttribute("lists", service.getFoodList());
		model.addAttribute("list", service.getFoodListAll());					
	}
	
	@ResponseBody
	@GetMapping(value="/foodView",  produces=MediaType.APPLICATION_JSON_UTF8_VALUE)
	public ResponseEntity<FoodVO> food(Long fno) {
		log.info("foodView");
		FoodVO vo = service.getFood(fno);
		return new ResponseEntity<FoodVO>(vo, HttpStatus.OK);
	}	
	
	@GetMapping(value="/insert_food")
	public void insertFood() {
		log.info("insert_food 페이지이동");
	}
	
	@PostMapping(value="/insert_food")
	public String write(FoodVO vo, MultipartFile foodImg) {
		log.info("write food : " + vo);
		
		//업로드 폴더
		String uploadFolder = "C:\\upload\\food";		
		
		String fileName = foodImg.getOriginalFilename();		
		
		
		File uploadPath = new File(uploadFolder);
		File saveFile = new File(uploadPath, fileName);
		
		//폴더가 존재하지 않을경우 make
		if(!uploadPath.exists()) {
			uploadPath.mkdirs();
		}
		
		//파일업로드
		try {foodImg.transferTo(saveFile);} catch (Exception e) {;}
		
		
		
		vo.setFileName(fileName);
		
		service.write(vo);		
		return "redirect:/food/foods";
	}

}
