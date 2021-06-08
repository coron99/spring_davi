package com.koreait.domain;

import lombok.Data;

/*	BNO NUMBER(10),
	FILENAME VARCHAR2(300),
	CONTENT VARCHAR2(300),
	MEMBERID VARCHAR2(300),
	REGDATE DATE,
	UPLOADPATH VARCHAR2(300),
	UUID VARCHAR2(300),*/

@Data
public class SnsBoardVO {
	private Long bno;
	private String fileName;
	private String content; 
	private String memberId;
	private String regDate;
	private String uploadPath;
	private String uuid;
/*	private int likeCnt;
	private boolean likeCheck;*/
}
