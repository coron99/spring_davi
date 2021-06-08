package com.koreait.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.koreait.domain.FoodVO;

public interface FoodMapper {
	
	public int insert(FoodVO vo);
	
	public int insertMaterial(@Param("fno") Long fno,@Param("materials") List<String> materials);
	
	public int insertRecipe(@Param("fno") Long fno,@Param("recipes") List<String> recipes);
	
	public FoodVO get(Long fno);
	
	public List<String> getMaterial(Long fno);
	
	public List<String> getRecipe(Long fno);
	
	public List<FoodVO> getList(String eatTime);
	
	public List<FoodVO> getListAll();
	
	public int delete(Long bno);

}
