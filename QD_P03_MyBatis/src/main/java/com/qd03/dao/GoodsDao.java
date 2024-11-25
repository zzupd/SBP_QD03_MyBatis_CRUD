package com.qd03.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.qd03.dto.GoodsDto;

@Mapper
public interface GoodsDao {
	
	// 상품등록 실행
	public int mtdRegProc(Map<String, String> map);
	
	// 상품전체목록 출력
	public List<GoodsDto> mtdList();
	
	// 상품검색목록 출력
	public List<GoodsDto> mtdSearchList(String searchWord);
	
	// 상품 삭제
	public void mtdDel(String[] chkRemAry);

}
