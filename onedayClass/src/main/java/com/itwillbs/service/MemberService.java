package com.itwillbs.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.itwillbs.dao.MemberDAO;
import com.itwillbs.domain.MemberDTO;

@Service
public class MemberService {

	
	// MemberDAO 객체생성 
//	MemberDAO memberDAO =new MemberDAO();
	@Inject
	private MemberDAO memberDAO;
	
//	@Inject
//	public void setMemberDAO(MemberDAO memberDAO) {
//		this.memberDAO = memberDAO;
//	}

	public void insertMember(Map<String, String> param) {
		System.out.println("MemberService insertMember()");
		//날짜 저장
		
		// insertMember 메서드 호출
		memberDAO.insertMember(param);
	}
	
	public Map<String, String> userCheck(Map<String, String> param) {
		System.out.println("MemberService userCheck()");
		return memberDAO.userCheck(param);
	}
	
//	 MemberDTO memberDTO=memberService.getMember(id);
	 public Map<String, String> getMember(String mem_id) {
		 System.out.println("MemberService getMember()");
		 return memberDAO.getMember(mem_id);
	}

	public void updateMember(Map<String, String> param) {
		System.out.println("MemberService updateMember()");
		
		memberDAO.updateMember(param);
	}

	public void deleteMember(Map<String, String> param) {
		System.out.println("MemberService deleteMember()");
		
		memberDAO.deleteMember(param);
	}

	public List<MemberDTO> getMemberList() {
		System.out.println("MemberService getMemberList()");
		return memberDAO.getMemberList();
	}
	
	public MemberDTO idcheck(MemberDTO memberDTO){  // id찾기 
 		System.out.println("아이디찾기 서비스 ");
		return memberDAO.idcheck(memberDTO);
	}
	
	
	
	
}
