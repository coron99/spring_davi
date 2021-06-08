package com.koreait.domain;

import java.util.List;

import lombok.Data;

@Data
public class FoodVO {
	
	private Long fno;
	private String foodName;
	private String summary;
	private Long calorie;
	private Long prepTime;
	private Long cookTime;
	private Long serves;
	private String difficulty;
	private String fileName;
	private String eatTime;
	private List<String> materials;
	private List<String> recipes;	

}
