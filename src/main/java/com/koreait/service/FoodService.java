package com.koreait.service;

import java.util.List;

import com.koreait.domain.FoodVO;
import com.koreait.domain.FoodsVO;

public interface FoodService {
		
	public boolean write(FoodVO vo);
	
	public FoodsVO getFoodList();
	
	public List<FoodVO> getFoodListAll();
	
	public FoodVO getFood(Long fno);	
	
	public boolean remove(Long fno);
}
