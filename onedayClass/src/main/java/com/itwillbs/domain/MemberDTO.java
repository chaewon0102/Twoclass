package com.itwillbs.domain;

import java.sql.Timestamp;

public class MemberDTO {
	//Member데이터 저장 => 전달
	//멤버변수 -> 데이터 은닉
	private String id;
	private String pass;
	private String name;
	private Timestamp date;
	
	//메서드() alt shfit s -> r set() get()
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Timestamp getDate() {
		return date;
	}
	public void setDate(Timestamp date) {
		this.date = date;
	}
	
	
	
	
}
