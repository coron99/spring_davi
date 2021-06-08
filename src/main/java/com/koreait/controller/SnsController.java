package com.koreait.controller;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpSession;
import javax.xml.ws.RequestWrapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.annotation.RequestScope;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartRequest;

import com.koreait.domain.Criteria;
import com.koreait.domain.LikeVO;
import com.koreait.domain.SnsBoardVO;
import com.koreait.mapper.SnsMapper;
import com.koreait.service.SnsService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/sns/*")
public class SnsController {
	@Setter(onMethod_=@Autowired)
	private SnsService service;
	
	@PostMapping("/insert")
	public String insert( MultipartFile[] uploadFile,SnsBoardVO board) {
		//업로드 폴더 설정 
		String uploadFolder = "C:\\upload";
		String uploadFolderPath = getFolder();
		File uploadPath = new File(uploadFolder, uploadFolderPath);
		board.setUploadPath(uploadFolderPath);
		
		//업로드 폴더가 존재하지 않을경우 만들어준다.
		if(!uploadPath.exists()) {
			uploadPath.mkdirs();
		}
		
		//board의 content에 담겨서 넘어올 때 깨지는 현상을 방지하기 위해 먼저 담아주고
		//UTF-8방식으로 다시 바꿔서 담아준다.
		String content = board.getContent();
		try {
			//content = new String(content.getBytes("8859_1"),"UTF-8");
			board.setContent(content);
		} catch (Exception e) {;}
		
		
			
		//넘어온 파일의 배열만큼 크기로 돌린다. (우리의 경우는 1개기때문에 한번만 돈다.)
		for(MultipartFile multipartFile : uploadFile) {
			//IE에서는 파일 이름만 가져오지 않고 전체 경로를 가져오기 때문에 마지막에 위치한 파일 이름만 가져오도록 한다.
			String uploadFileName = multipartFile.getOriginalFilename();
			uploadFileName = uploadFileName.substring(uploadFileName.lastIndexOf("\\") + 1);
			//UUID가 붙지 않은 uploadFileName을 board.setFileName으로 넣어준다.
			board.setFileName(uploadFileName);
			
			//파일 이름이 중복되는 것을 방지하기 위해 uuid를 붙여준다.
			UUID uuid = UUID.randomUUID();
			board.setUuid(uuid.toString());
			uploadFileName = uuid.toString() +"_" + uploadFileName;
			
			File saveFile = new File(uploadPath,uploadFileName);
			//파일을 폴더에 올리기
			try {multipartFile.transferTo(saveFile);} catch (Exception e) {;}
			
		}
			service.insert(board);
			
		return "redirect:/sns/list";
	}
	
	
	@ResponseBody
	@DeleteMapping(value="/{bno}", produces=MediaType.TEXT_PLAIN_VALUE)
	public ResponseEntity<String> delete(@PathVariable("bno") Long bno) {
		log.info("delete : " + bno);
		ResponseEntity<String> result;
		if(service.delete(bno)) {
			result = new ResponseEntity<String>("success", HttpStatus.OK);		
		}else {
			result = new ResponseEntity<String>("fail", HttpStatus.OK);
		}
		return result;
	}
	
	@GetMapping("/list")
	public String list(Model model) {
		model.addAttribute("total",service.getTotal());
		return "board/sns/snsBoard";
	}
	
	@ResponseBody
	@GetMapping(value="/listAjax/{page}",produces=MediaType.APPLICATION_JSON_UTF8_VALUE)
	public ResponseEntity<List<SnsBoardVO>> listAjax(@PathVariable("page") int page, HttpSession session){
		Criteria cri = new Criteria(page,9);
		log.info("listAjax들어옴");
		return new ResponseEntity<>(service.getList(cri),HttpStatus.OK);
	}
	
	@ResponseBody
	@GetMapping(value="/likeAjax/{bno}",produces=MediaType.APPLICATION_JSON_UTF8_VALUE )
	public ResponseEntity<LikeVO> likeAjax(@PathVariable("bno") long bno, HttpSession session){
		log.info("likeAjax 들어옴");
		LikeVO vo = new LikeVO();
		String memberId = (String) session.getAttribute("sessionId");
		vo.setLikeCnt(service.getLikeCnt(bno));
		vo.setLikeCheck(service.getLikebyId(memberId, bno));
		return new ResponseEntity<LikeVO>(vo,HttpStatus.OK);
	}
	
	@ResponseBody
	@GetMapping(value="/likeClickAjax/{bno}",produces=MediaType.APPLICATION_JSON_UTF8_VALUE )
	public ResponseEntity<LikeVO> likeClickAjax(@PathVariable("bno") long bno, HttpSession session){
		log.info("likeClickAjax 들어옴");
		LikeVO vo = new LikeVO();
		
		String memberId = (String) session.getAttribute("sessionId");
		service.insertOrDeleteLike(memberId, bno);
		
		vo.setLikeCnt(service.getLikeCnt(bno));
		vo.setLikeCheck(service.getLikebyId(memberId, bno));
		return new ResponseEntity<LikeVO>(vo,HttpStatus.OK);
	}
	
	
	
	//업로드 폴더를 만들기 위한 메소드	
	private String getFolder() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		String str = sdf.format(date);
		return str.replace("-", File.separator);
	}
}




































