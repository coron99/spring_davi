package com.koreait.domain;

import java.util.List;

import lombok.Data;

@Data
public class FoodsVO {
	
	private List<FoodVO> breakfast;
	private List<FoodVO> lunch;
	private List<FoodVO> dinner;
	

}
