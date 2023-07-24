package com.itwillbs.domain;

import java.sql.Timestamp;

public class ProductDTO {
	
	private int pro_num;
	private String pro_name;
	private String pro_content;
	private String pro_file;
	private int pro_price;
	private int stock;
	private Timestamp date;
	private String confirm;
	public int getPro_num() {
		return pro_num;
	}
	public void setPro_num(int pro_num) {
		this.pro_num = pro_num;
	}
	public String getPro_name() {
		return pro_name;
	}
	public void setPro_name(String pro_name) {
		this.pro_name = pro_name;
	}
	public String getPro_content() {
		return pro_content;
	}
	public void setPro_content(String pro_content) {
		this.pro_content = pro_content;
	}
	public String getPro_file() {
		return pro_file;
	}
	public void setPro_file(String pro_file) {
		this.pro_file = pro_file;
	}
	public int getPro_price() {
		return pro_price;
	}
	public void setPro_price(int pro_price) {
		this.pro_price = pro_price;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public Timestamp getDate() {
		return date;
	}
	public void setDate(Timestamp date) {
		this.date = date;
	}
	public String getConfirm() {
		return confirm;
	}
	public void setConfirm(String confirm) {
		this.confirm = confirm;
	}
	
	@Override
	public String toString() {
		return "productRegDTO [pro_num=" + pro_num + ", pro_name=" + pro_name + ", pro_content=" + pro_content
				+ ", pro_file=" + pro_file + ", pro_price=" + pro_price + ", stock=" + stock + ", date=" + date
				+ ", confirm=" + confirm + "]";
	}
	
	
	

}
