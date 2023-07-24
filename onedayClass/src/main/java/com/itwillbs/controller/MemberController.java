package com.itwillbs.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itwillbs.domain.MemberDTO;
import com.itwillbs.service.MemberService;

@Controller
public class MemberController {
	//주소는 get방식 
	//form테그는 post방식	
	// MemberService 객체생성 
//	MemberService memberService =new MemberService();
	@Inject
	private MemberService memberService;
	
	//생성자-> 스프링파일 xml에서 객체생성해서 생성자를 통해서 전달
//	public MemberController(MemberService memberService) {
//		this.memberService = memberService;
//	}
	//set메서드 -> 스프링파일 xml에서 객체생성해서 set메서드를 통해서 전달
//	@Inject
//	public void setMemberService(MemberService memberService) {
//		this.memberService = memberService;
//	}


	//	가상주소 http://localhost:8080/myweb/member/insert  
//	=> member/insert.jsp
	@RequestMapping(value = "/member/insert", method = RequestMethod.GET)
	public String insert() {
	//  /WEB-INF/views/파일이름.jsp
		// /WEB-INF/views/member/insert.jsp 이동
		return "member/insert";
	}
	


	@RequestMapping(value = "/member/insertPro", method = RequestMethod.POST)
	public String insertPro(MemberDTO memberDTO) {
		// 사용하고자하는 모든 것을  변수에 받아서 사용
		// HttpServletRequest request
		// MemberDTO memberDTO 자동화되는 조건
		// 1) insert.jsp 태그 이름 id,pass,name
		// 2) MemberDTO 멤버변수 이름 id,pass,name
		// 3) 두개의 이름 일치해야 자동으로 가져옴
		System.out.println("MemberController insertPro()");
//		MemberDTO memberDTO=new MemberDTO();
//		memberDTO.setId(request.getParameter("id"));
//		memberDTO.setPass(request.getParameter("pass"));
//		memberDTO.setName(request.getParameter("name"));
		System.out.println(memberDTO.getId());
		System.out.println(memberDTO.getPass());
		System.out.println(memberDTO.getName());
	    //회원가입 처리작업 
		//->com.itwillbs.service 패키지  MemberService insertMember()메서드
		//->com.itwillbs.dao 패키지      MemberDAO insertMember()메서드
		
		// insertMember 메서드 호출
		memberService.insertMember(memberDTO);
		
		// 주소가 변경되면서 로그인 이동
		// response.sendRedirect("/member/login");
		return "redirect:/member/login";
	}
	
//	가상주소 http://localhost:8080/myweb/member/login 
//	=> member/login.jsp
	@RequestMapping(value = "/member/login", method = RequestMethod.GET)
	public String login() {
	//  /WEB-INF/views/파일이름.jsp
	// /WEB-INF/views/member/login.jsp 이동
		return "member/login";
	}
	
	@RequestMapping(value = "/member/loginPro", method = RequestMethod.POST)
	public String loginPro(MemberDTO memberDTO,HttpSession session) {
		System.out.println("MemberController loginPro()");
		MemberDTO memberDTO2=memberService.userCheck(memberDTO);
		if(memberDTO2 !=null) {
			//아이디 비밀번호 일치 => 세션생성 => /member/main 이동
			session.setAttribute("id", memberDTO.getId());
			return "redirect:/member/main";
		}else {
			//아이디 비밀번호 틀림 => member/msg.jsp 이동 
			return "member/msg";
		}
	}
	
//	가상주소 http://localhost:8080/myweb/member/main => member/main.jsp
	@RequestMapping(value = "/member/main", method = RequestMethod.GET)
	public String main() {
	//  /WEB-INF/views/파일이름.jsp
	// /WEB-INF/views/member/main.jsp 이동
		return "member/main";
	}
	
//	가상주소 http://localhost:8080/myweb/member/logout
	@RequestMapping(value = "/member/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		//로그아웃 -> 세션값 삭제
		session.invalidate();
		return "redirect:/member/main";
	}
	
//		가상주소 http://localhost:8080/myweb/member/info => member/info.jsp
	@RequestMapping(value = "/member/info", method = RequestMethod.GET)
	public String info(HttpSession session, Model model) {
		// 나의정보 조회 => 나의 아이디 세션에서 가져오기=>디비조회
		String id=(String)session.getAttribute("id");
		
		MemberDTO memberDTO=memberService.getMember(id);
		
		// memberDTO 담아서 info.jsp 가지고 이동
		// 스프링에서 제공하는 Model 에 담아서 가면 jsp에 바로 사용
		model.addAttribute("memberDTO", memberDTO);
	//  /WEB-INF/views/파일이름.jsp
	// /WEB-INF/views/member/info.jsp 이동
		return "member/info";
	}
//		가상주소 http://localhost:8080/myweb/member/update => member/update.jsp
	@RequestMapping(value = "/member/update", method = RequestMethod.GET)
	public String update(HttpSession session, Model model) {
		// 나의정보 조회 => 나의 아이디 세션에서 가져오기=>디비조회
		String id=(String)session.getAttribute("id");
		// MemberDTO memberDTO = memberService.getMember(id) 메서드 호출
		MemberDTO memberDTO=memberService.getMember(id);
		// memberDTO 담아서 update.jsp 가지고 이동
		// 스프링에서 제공하는 Model 에 담아서 가면 jsp에 바로 사용
		model.addAttribute("memberDTO", memberDTO);
	//  /WEB-INF/views/파일이름.jsp
	// /WEB-INF/views/member/update.jsp 이동
		return "member/update";
	}
	
	@RequestMapping(value = "/member/updatePro", method = RequestMethod.POST)
	public String updatePro(MemberDTO memberDTO) {
		System.out.println("MemberController updatePro()");
		MemberDTO memberDTO2=memberService.userCheck(memberDTO);
		if(memberDTO2 !=null) {
			//아이디 비밀번호 일치 => 수정작업 => /member/main 이동
			memberService.updateMember(memberDTO);
			return "redirect:/member/main";
		}else {
			//아이디 비밀번호 틀림 => member/msg.jsp 이동 
			return "member/msg";
		}
	}
	
//		가상주소 http://localhost:8080/myweb/member/delete => member/delete.jsp
	@RequestMapping(value = "/member/delete", method = RequestMethod.GET)
	public String delete() {
	//  /WEB-INF/views/파일이름.jsp
	// /WEB-INF/views/member/delete.jsp 이동
		return "member/delete";
	}
	
	@RequestMapping(value = "/member/deletePro", method = RequestMethod.POST)
	public String deletePro(MemberDTO memberDTO,HttpSession session) {
		System.out.println("MemberController deletePro()");
		MemberDTO memberDTO2=memberService.userCheck(memberDTO);
		if(memberDTO2 !=null) {
			//아이디 비밀번호 일치 => 삭제작업 
			//                 =>세션값초기화=> /member/main 이동
			memberService.deleteMember(memberDTO);
			session.invalidate();
			return "redirect:/member/main";
		}else {
			//아이디 비밀번호 틀림 => member/msg.jsp 이동 
			return "member/msg";
		}
	}
	
//		가상주소 http://localhost:8080/myweb/member/list => member/list.jsp
	@RequestMapping(value = "/member/list", method = RequestMethod.GET)
	public String list(Model model) {
		System.out.println("MemberController list()");
		List<MemberDTO> mList=memberService.getMemberList();
		
		model.addAttribute("mList",mList);
	//  /WEB-INF/views/파일이름.jsp
	// /WEB-INF/views/member/list.jsp 이동
		return "member/list";
	}
			
}
