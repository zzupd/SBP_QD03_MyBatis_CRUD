package com.qd03;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.qd03.dao.GoodsDao;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class ShopController {
	
	@Autowired
	private GoodsDao goodsDao;

	// 테스트용 시작페이지
	@GetMapping("/")
	@ResponseBody
	public String index() throws Exception {
		return "QD03 결과화면";
	}
	
	// 상품 등록
	@GetMapping("/reg")
	public String mtdReg() {
		return "/product/goodsReg";
	}
	
	// 상품 등록 실행
	@GetMapping("/regProc")
	public String mtdRegProc(
			@RequestParam(value="goodsCode") String goodsCode, 
			@RequestParam(value="goodsName") String goodsName, 
			@RequestParam(value="price", required=false, defaultValue="0") String price, 
			@RequestParam(value="cnt") String cnt 
			) {
		
		Map<String, String> map = new HashMap<>();
		map.put("item1", goodsCode);
		map.put("item2", goodsName);
		map.put("item3", price);
		map.put("item4", cnt);
		
		goodsDao.mtdRegProc(map);
		
		return "redirect:/list";
	}
	
	
	// 상품 목록
	@GetMapping("/list")
	public String mtdList(Model model) {
		
		model.addAttribute("listData", goodsDao.mtdList());
		
		return "/product/goodsList";
	}
	
	// 상품 삭제
	@GetMapping("/del")
	public String mtdDel(HttpServletRequest req) {
		try {
			req.setCharacterEncoding("UTF-8");
			String[] chkRemAry = req.getParameterValues("chkRem");
//			for (String str : chkRemAry) {
//				System.out.println("str : " + str);
//			}
			
			goodsDao.mtdDel(chkRemAry);
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return "redirect:/list";
	}
	
	// 검색시작
	@GetMapping("/search")
	public String mtdSearch(
			Model model, 
			@RequestParam(value="searchWord") String searchWord
			) {
		
		model.addAttribute("listData", goodsDao.mtdSearchList(searchWord));
		
		return "/product/goodsList";
	}
}
