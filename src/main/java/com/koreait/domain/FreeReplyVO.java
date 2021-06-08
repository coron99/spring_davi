package com.koreait.domain;

import lombok.Data;

/*FREENUM NUMBER(10),  --게시글 번호
REPLYNUM NUMBER(10),  -- 댓글번호
PARENTREPLYNUM NUMBER(10) DEFAULT 0 NOT NULL, --부모 댓글의 번호 부모가없으면0
MEMBERID VARCHAR2(300) NOT NULL,
PARENTREPLYID VARCHAR2(300) DEFAULT NULL,
CONTENT VARCHAR2(3000),
REPLYDATE DATE,*/

@Data
public class FreeReplyVO {
	private int freeNum;
	private int replyNum;
	private int parentReplyNum;
	private String memberId;
	private String parentReplyId;
	private String content;
	private String replyDate;
}
