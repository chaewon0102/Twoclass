package com.itwillbs.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itwillbs.domain.ClassDTO;
import com.itwillbs.domain.PageDTO;
import com.itwillbs.service.ClassService;

@Controller
public class ClassController {

	
	@Inject
	private ClassService classService;
	
	 @Inject
	public void setMemberService(ClassService memberService) {
		this.classService = memberService;
	}
	
	 
	 
	@RequestMapping(value = "/onedayClassMain/classContent", method = RequestMethod.GET)
	public String classContent() {
	
		return "onedayClassMain/classContent";
	}//
	
	@RequestMapping(value = "/admin/classAdd", method = RequestMethod.GET)
	public String classAdd() {
	
		return "admin/classAdd";
	}//
	
	@RequestMapping(value = "/onedayClassMain/content", method = RequestMethod.GET)
	public String content() {
	
		return "onedayClassMain/content";
	}//
	
	
	
	
	@RequestMapping(value = "/onedayClassMain/createContent", method = RequestMethod.GET)
	public String createContent() {
	
		return "onedayClassMain/createContent";
	}//
	
	@RequestMapping(value = "/onedayClassMain/colist", method = RequestMethod.GET)
	public String colist(HttpServletRequest request, Model model) {
		
		int pageSize = 10;
		String pageNum = request.getParameter("pageNum");
		//페이지 번호가 없으면 1로 세팅
		if(pageNum == null) {
			pageNum = "1";
		}
		
		int currentPage = Integer.parseInt(pageNum);
		PageDTO pageDTO = new PageDTO();
		pageDTO.setPageSize(pageSize);
		pageDTO.setPageNum(pageNum);
		pageDTO.setCurrentPage(currentPage);
		
		List<ClassDTO> classList = classService.getClassList(pageDTO);
		
		System.out.println("=====================");
		
		//전체 글 개수
		int count = classService.getBoardCount();
		int pageBlock =3;
		int startPage = (currentPage -1)/pageBlock*pageBlock+1;
		int endPage=startPage+pageBlock-1;
		int pageCount = count / pageSize + (count % pageSize==0?0:1);
		if(endPage > pageCount) {
			endPage = pageCount;
		}
		
		
		pageDTO.setPageBlock(pageBlock);
		pageDTO.setCount(pageCount);
		pageDTO.setStartPage(startPage);
		pageDTO.setEndPage(endPage);
		pageDTO.setPageCount(pageCount);
		
		
		model.addAttribute("classList",classList);
		model.addAttribute("pageDTO", pageDTO);
		
		return "onedayClassMain/colist";
	}//
	
	
	
	
	
}
