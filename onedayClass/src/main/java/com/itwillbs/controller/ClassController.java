package com.itwillbs.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itwillbs.domain.ClassDTO;
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
	
	@RequestMapping(value = "/onedayClassMain/admin/classCreate", method = RequestMethod.GET)
	public String createClass() {
	
		return "/onedayClassMain/admin/classCreate";
	}//
}
