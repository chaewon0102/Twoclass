package com.itwillbs.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.itwillbs.domain.ClassDTO;
import com.itwillbs.domain.MemberDTO;
import com.itwillbs.domain.PageDTO;

@Repository
public class ClassDAO {
	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace = "com.itwillbs.mappers.classMapper";

	public ClassDTO getcontent(ClassDTO classDTO) {
		System.out.println(classDTO.getClass_num()+":"+classDTO.getClass_title());
		return sqlSession.selectOne(namespace+".getcontent", classDTO);
		//select구문 한개(One) 또는 list - 여러개 로 사용
		
	}
	
	public Integer getMaxNum() {
		System.out.println("BoardDAO getMaxNum()");
		return sqlSession.selectOne(namespace + ".getMaxNum");
		
	}
	
	public List<ClassDTO> getClassList(PageDTO pageDTO) {
		return sqlSession.selectList(namespace + ".getClassList", pageDTO);
	}

	public int getBoardCount() {
		return sqlSession.selectOne(namespace + ".getBoardCount");
	}
	
	
	
}
