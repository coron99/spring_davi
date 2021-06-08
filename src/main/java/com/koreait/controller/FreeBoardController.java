package com.koreait.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.gson.JsonObject;
import com.koreait.domain.Criteria;
import com.koreait.domain.FreeBoardVO;
import com.koreait.domain.FreeReplyVO;
import com.koreait.domain.PageDTO;
import com.koreait.service.FreeBoardService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@AllArgsConstructor
@RequestMapping("board/free/*")
public class FreeBoardController {
	private FreeBoardService service;
	
	@GetMapping("/list")
	public void list(Criteria cri,Model model) {
		model.addAttribute("list",service.getListWithPaging(cri));
		model.addAttribute("pageMaker", new PageDTO(cri, service.getTotal(cri)));
	}
	
	@GetMapping("/get")
	public void get(@ModelAttribute("cri")Criteria cri, @RequestParam("freeNum") int freeNum,Model model) {
		model.addAttribute("board", service.read(freeNum));
	}
	
	@GetMapping("/write")
	public void write(@ModelAttribute("cri") Criteria cri) {}
	
	@PostMapping("/write")
	public String write(FreeBoardVO vo) {
		if(vo.getFreeHead().equals("공지")) {
			vo.setFreeNotice(0);
		}else {
			vo.setFreeNotice(1);
		}
		service.insert(vo);
		return "redirect:/board/free/list";
	}
	
	@PostMapping("/modify")
	public String modify(FreeBoardVO vo,Criteria cri,RedirectAttributes rttr) {
		
		service.update(vo);
		
		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());
		rttr.addAttribute("keyword", cri.getKeyword());
		rttr.addAttribute("type", cri.getType());
		return  "redirect:/board/free/get?freeNum="+vo.getFreeNum();
	}
	
	@GetMapping("/delete")
	public String delete(int freeNum) {
		service.delete(freeNum);
		return "redirect:/board/free/list";
	}
	
	@ResponseBody
	@PostMapping(value= "/summer", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public String insert( MultipartFile multipartFile){
				JsonObject jsonObject = new JsonObject();
			
				log.info("써머노트 들어옴"+multipartFile);
				String uploadFolder = "C:\\upload";
				String uploadFolderPath = getFolder();
				File uploadPath = new File(uploadFolder, uploadFolderPath);
				
				if(!uploadPath.exists()) {
					uploadPath.mkdirs();
				}
				
					String uploadFileName = multipartFile.getOriginalFilename();
					uploadFileName = uploadFileName.substring(uploadFileName.lastIndexOf("\\") + 1);
					UUID uuid = UUID.randomUUID();
					uploadFileName = uuid.toString() +"_" + uploadFileName;
					File saveFile = new File(uploadPath,uploadFileName);
					try {multipartFile.transferTo(saveFile);} catch (Exception e) {;}
					log.info("saveFile:"+saveFile.toString());
					String path = saveFile.toString().replace("C:", "");
					jsonObject.addProperty("url", path);
					
				return jsonObject.toString();
	}
	
	@ResponseBody
	@GetMapping(value="/replies/{freeNum}", produces=MediaType.APPLICATION_JSON_UTF8_VALUE)
	public ResponseEntity<List<FreeReplyVO>> replyList(@PathVariable("freeNum") int freeNum){
		log.info("replyList......");
		log.info(service.replyList(freeNum));
		return new ResponseEntity<List<FreeReplyVO>>(service.replyList(freeNum),HttpStatus.OK);
	}
	
	@ResponseBody
	@PostMapping(value="/new", consumes= "application/json; charset=utf-8", produces=MediaType.APPLICATION_JSON_UTF8_VALUE)
	public ResponseEntity<List<FreeReplyVO>> replyAdd(@RequestBody FreeReplyVO vo){
		log.info("replyAdd...");
		if(vo.getParentReplyId() == null) {
			vo.setParentReplyId("");
			vo.setParentReplyNum(0);
		}
		log.info(vo);
		service.replyInsert(vo);
		return new ResponseEntity<List<FreeReplyVO>>(service.replyList(vo.getFreeNum()),HttpStatus.OK);
	}
	
	@ResponseBody
	@DeleteMapping(value="/delete/{freeNum}/{replyNum}",produces=MediaType.APPLICATION_JSON_UTF8_VALUE)
	public ResponseEntity<List<FreeReplyVO>> replyDelete(@PathVariable("replyNum") int replyNum,@PathVariable("freeNum") int freeNum) {
		log.info("replyDelete....");
		service.replyDelete(replyNum);
		return new ResponseEntity<List<FreeReplyVO>>(service.replyList(freeNum),HttpStatus.OK);
	}
	
	@ResponseBody
	@PostMapping(value="/modify",consumes="application/json; charset=utf-8",produces=MediaType.APPLICATION_JSON_UTF8_VALUE)
	public ResponseEntity<List<FreeReplyVO>> replyModify(@RequestBody FreeReplyVO vo){
		service.replyUpdate(vo);
		return new ResponseEntity<List<FreeReplyVO>>(service.replyList(vo.getFreeNum()),HttpStatus.OK);
	}
	
	@ResponseBody
	@PostMapping(value="/reReplyAdd",consumes="application/json; charset=utf-8",produces=MediaType.APPLICATION_JSON_UTF8_VALUE)
	public ResponseEntity<List<FreeReplyVO>> reReplyAdd(@RequestBody FreeReplyVO vo){
		service.replyInsert(vo);
		return new ResponseEntity<List<FreeReplyVO>>(service.replyList(vo.getFreeNum()),HttpStatus.OK);
	}
	
	private String getFolder() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		String str = sdf.format(date);
		return str.replace("-", File.separator);
	}

}

























