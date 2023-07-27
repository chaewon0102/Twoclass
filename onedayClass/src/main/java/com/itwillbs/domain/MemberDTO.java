package com.itwillbs.domain;

import java.sql.Timestamp;

public class MemberDTO {
	//Member데이터 저장 => 전달
	//멤버변수 -> 데이터 은닉
	private String mem_num;
	private String mem_id;
	private String mem_pass;
	private String mem_name;
	private String mem_phone;
	private String mem_gender;
	private String mem_confirm;
	private String mem_file;
	private String mem_add;
	private Timestamp mem_indate;
	private Timestamp mem_outdate;
	private String mem_addcode;
	private String mem_addroad;
	private String mem_addjibun;
	private String mem_type;
	
	
	
	
	
	public String getMem_type() {
		return mem_type;
	}
	public void setMem_type(String mem_type) {
		this.mem_type = mem_type;
	}
	public String getMem_addcode() {
		return mem_addcode;
	}
	public void setMem_addcode(String mem_addcode) {
		this.mem_addcode = mem_addcode;
	}
	public String getMem_addroad() {
		return mem_addroad;
	}
	public void setMem_addroad(String mem_addroad) {
		this.mem_addroad = mem_addroad;
	}
	public String getMem_addjibun() {
		return mem_addjibun;
	}
	public void setMem_addjibun(String mem_addjibun) {
		this.mem_addjibun = mem_addjibun;
	}
	public String getMem_num() {
		return mem_num;
	}
	public void setMem_num(String mem_num) {
		this.mem_num = mem_num;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getMem_pass() {
		return mem_pass;
	}
	public void setMem_pass(String mem_pass) {
		this.mem_pass = mem_pass;
	}
	public String getMem_name() {
		return mem_name;
	}
	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}
	public String getMem_phone() {
		return mem_phone;
	}
	public void setMem_phone(String mem_phone) {
		this.mem_phone = mem_phone;
	}
	public String getMem_gender() {
		return mem_gender;
	}
	public void setMem_gender(String mem_gender) {
		this.mem_gender = mem_gender;
	}
	public String getMem_confirm() {
		return mem_confirm;
	}
	public void setMem_confirm(String mem_confirm) {
		this.mem_confirm = mem_confirm;
	}
	public String getMem_file() {
		return mem_file;
	}
	public void setMem_file(String mem_file) {
		this.mem_file = mem_file;
	}
	public String getMem_add() {
		return mem_add;
	}
	public void setMem_add(String mem_add) {
		this.mem_add = mem_add;
	}
	public Timestamp getMem_indate() {
		return mem_indate;
	}
	public void setMem_indate(Timestamp mem_indate) {
		this.mem_indate = mem_indate;
	}
	public Timestamp getMem_outdate() {
		return mem_outdate;
	}
	public void setMem_outdate(Timestamp mem_outdate) {
		this.mem_outdate = mem_outdate;
	}
	@Override
	public String toString() {
		return "MemberDTO [mem_num=" + mem_num + ", mem_id=" + mem_id + ", mem_pass=" + mem_pass + ", mem_name="
				+ mem_name + ", mem_phone=" + mem_phone + ", mem_gender=" + mem_gender + ", mem_confirm=" + mem_confirm
				+ ", mem_file=" + mem_file + ", mem_add=" + mem_add + ", mem_indate=" + mem_indate + ", mem_outdate="
				+ mem_outdate + ", mem_addcode=" + mem_addcode + ", mem_addroad=" + mem_addroad + ", mem_addjibun="
				+ mem_addjibun + ", mem_type=" + mem_type + "]";
	}
	
	
	
	
	
	
	
	
	
	
}
