package com.itwillbs.domain;

public class ClassDTO {

	
	private String class_num;
	private String class_title;
	private String class_intro;
	private String host_intro;
	private String cate_code;
	
	private String class_price;
	public String getClass_num() {
		return class_num;
	}
	public void setClass_num(String class_num) {
		this.class_num = class_num;
	}
	public String getClass_price() {
		return class_price;
	}
	public void setClass_price(String class_price) {
		this.class_price = class_price;
	}
	public String getClass_title() {
		return class_title;
	}
	public void setClass_title(String class_title) {
		this.class_title = class_title;
	}
	public String getClass_intro() {
		return class_intro;
	}
	public void setClass_intro(String class_intro) {
		this.class_intro = class_intro;
	}
	public String getCate_code() {
		return cate_code;
	}
	public void setCate_code(String cate_code) {
		this.cate_code = cate_code;
	}
	
	
	
	public String getHost_intro() {
		return host_intro;
	}
	public void setHost_intro(String host_intro) {
		this.host_intro = host_intro;
	}
	@Override
	public String toString() {
		return "ClassDTO [class_num=" + class_num + ", class_title=" + class_title + ", class_intro=" + class_intro
				+ ", cate_code=" + cate_code + "]";
	}
	
}
