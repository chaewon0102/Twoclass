package com.itwillbs.dao;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.itwillbs.domain.MemberDTO;

@Repository
public class MemberDAO {
	
	//마이바티스 객체생성 => 멤버변수 root-context.xml  -> 자동 주입
	@Inject
	private SqlSession sqlSession;
	
	//mapper파일 이름 => 변수 정의
	private static final String namespace="com.itwillbs.mappers.memberMapper";
	
////	private DataSource dataSource;
//	private SimpleJdbcTemplate jdbcTemplate;
//	
//	@Inject
//	public void setDataSource(DataSource dataSource) {
////		this.dataSource = dataSource;
//		jdbcTemplate=new SimpleJdbcTemplate(dataSource);
//	}

	public void insertMember(Map<String, String> param) {
//		jdbcTemplate.update(insertMember, memberDTO.getId(),memberDTO.getPass(),memberDTO.getName(),memberDTO.getDate());
		sqlSession.insert(namespace+".insertMember", param);
	}
	
	public Map<String, String> userCheck(Map<String, String> param) {
		System.out.println("MemberDAO userCheck()");
		return sqlSession.selectOne(namespace+".userCheck", param);
	}

	public Map<String, String> getMember(String mem_id) {
		System.out.println("MemberDAO getMember()");
		return sqlSession.selectOne(namespace+".getMember",mem_id);
	}

	public void updateMember(Map<String, String> param) {
		System.out.println("MemberDAO updateMember()");
		
		sqlSession.update(namespace+".updateMember", param);
	}

	public void deleteMember(Map<String, String> param) {
		System.out.println("MemberDAO updateMember()");
		
		sqlSession.delete(namespace+".deleteMember", param);
	}

	public List<MemberDTO> getMemberList() {
		System.out.println("MemberDAO getMemberList()");
		return sqlSession.selectList(namespace+".getMemberList");
	}

	public MemberDTO idcheck(MemberDTO memberDTO) {  //id찾기
		System.out.println("아이디찾기 dao");
		return sqlSession.selectOne(namespace+".idcheck", memberDTO);
	}
	
}
