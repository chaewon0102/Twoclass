package com.itwillbs.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.itwillbs.domain.MemberDTO;
import com.itwillbs.service.MemberService;

@RestController
public class AjaxController {
	//MemberSerivice 멤버변수 선언 => 자동으로 객체 생성
	@Inject
	private MemberService memberService;
	
//	http://localhost:8080/myweb/member/idCheck?id=kim
	@RequestMapping(value = "/member/idCheck", method = RequestMethod.GET)
	public ResponseEntity<String> idCheck(HttpServletRequest request) {
		
		String mem_id=request.getParameter("mem_id");
		
		MemberDTO memberDTO=memberService.getMember(mem_id);
		
		String result="";
		if(memberDTO != null) {
			//아이디 있음 => 아이디 중복
			result = "iddup";
		}else {
			//아이디 없음 => 아이디 사용가능
			result = "idok";
		}
		// ResponseEntity 에 출력 결과를 담아서 리턴
		ResponseEntity<String> entity =
				new ResponseEntity<String>(result,HttpStatus.OK);
		return entity;
	}//idCheck()
	
//	http://localhost:8080/myweb/member/jsonlist
	@RequestMapping(value = "/member/jsonlist", method = RequestMethod.GET)
	public ResponseEntity<List<MemberDTO>> jsonlist(){
		List<MemberDTO> MemberList= memberService.getMemberList();
		//  List<MemberDTO> => json 변경하는 프로그램 설치
		//  https://mvnrepository.com/ => jackson-databind 검색
		// pom.xml => jackson-databind  2.13.3
		
//		<!-- https://mvnrepository.com/artifact/com.fasterxml.jackson.core/jackson-databind -->
//			<dependency>
//			    <groupId>com.fasterxml.jackson.core</groupId>
//			    <artifactId>jackson-databind</artifactId>
//			    <version>2.13.3</version>
//			</dependency>

			
		// ResponseEntity 에 출력 결과를 담아서 리턴
ResponseEntity<List<MemberDTO>> entity =
new ResponseEntity<List<MemberDTO>>(MemberList,HttpStatus.OK);
		return entity;
	}
	
}//class
