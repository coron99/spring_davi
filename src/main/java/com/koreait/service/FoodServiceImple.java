package com.koreait.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.koreait.domain.FoodVO;
import com.koreait.domain.FoodsVO;
//import com.koreait.domain.FoodsVO;
import com.koreait.mapper.FoodMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@AllArgsConstructor
public class FoodServiceImple implements FoodService {
	
	private FoodMapper mapper;	
	
	@Transactional
	@Override
	public boolean write(FoodVO vo) {
		
		mapper.insert(vo);	
		
		Long fno = vo.getFno();
		
		if(vo.getRecipes() != null && vo.getMaterials() != null) {			
				mapper.insertRecipe(fno, vo.getRecipes());			
				mapper.insertMaterial(fno, vo.getMaterials());				
			return true;
		}
		return false;
	}

	@Override
	public FoodVO getFood(Long fno) {
		FoodVO vo = mapper.get(fno);
		vo.setMaterials(mapper.getMaterial(fno));
		vo.setRecipes(mapper.getRecipe(fno));
		return vo;
	}
		
	@Override
	public FoodsVO getFoodList() {			
		FoodsVO foods = new FoodsVO();
		foods.setBreakfast(mapper.getList("아침"));
		foods.setLunch(mapper.getList("점심"));
		foods.setDinner(mapper.getList("저녁"));		
		return foods;
	}
	
	
	@Override
	public List<FoodVO> getFoodListAll() {		
		return mapper.getListAll();
	}
	
	@Override
	public boolean remove(Long bno) {			
		return mapper.delete(bno) == 1;
	}


}
