package com.koreait.domain;

import lombok.Data;

/*MEMBERID VARCHAR2(300),
PASSWORD VARCHAR2(300),
PHONE VARCHAR2(300),
EMAIL VARCHAR2(300),
HEIGHT NUMBER(10),
WEIGHT NUMBER(10),
GOALWEIGHT NUMBER(10),
RESOLUTION VARCHAR2(300),*/
@Data
public class MemberVO {
	private String memberId;
	private String password;
	private String phone;
	private String email;
	private double height;
	private double weight;
	private double goalWeight;
	private String resolution;
}
