package com.itwillbs.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.itwillbs.dao.ClassDAO;
import com.itwillbs.domain.ClassDTO;
import com.itwillbs.domain.PageDTO;

@Service
public class ClassService {

	@Inject
	private ClassDAO classDAO;
	
	
	public ClassDTO getcontent(ClassDTO classDTO) {
		System.out.println("getcontent()");
		return classDAO.getcontent(classDTO);
	}
	
	
	/*
	 * public List<ClassDTO> getClassList(ClassDTO classDTO) { return null; }
	 */
	
	
	public List<ClassDTO> getClassList(PageDTO pageDTO) {
		//시작하는 행 번호 구하기
		int startRow = (pageDTO.getCurrentPage() -1)*pageDTO.getPageSize()+1;
		
		// 끝나는 행 번호 구하기
		int endRow = startRow + pageDTO.getPageSize() -1;
		pageDTO.setStartRow(startRow -1);
		pageDTO.setEndRow(endRow);
		
		return classDAO.getClassList(pageDTO);
	}
	
	
	
	public int getBoardCount() {
		System.out.println("getBoardCount");
		
		
		return classDAO.getBoardCount();
	} 
	
	
}
