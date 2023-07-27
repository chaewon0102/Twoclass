package com.itwillbs.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.itwillbs.dao.ClassDAO;
import com.itwillbs.domain.ClassDTO;

@Service
public class ClassService {

	@Inject
	private ClassDAO classDAO;
	
	public List<ClassDTO> getClassList(ClassDTO classDTO) {
		return null;
	}
	
}
