package com.koreait.domain;

import lombok.Data;

@Data
public class FreeBoardVO {
	private int freeNum;
	private String freeHead;
	private String memberId;
	private String freeTitle;
	private String freeContent;
	private String freeDate;
	private int freeNotice;
}
