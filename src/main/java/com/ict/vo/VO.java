package com.ict.vo;

import org.springframework.web.multipart.MultipartFile;

public class VO {
	private int p_num, s_price, n_price, a_price, u_num;
	private String p_name, p_img, p_info, trade, s_day, e_day, category;
	private MultipartFile f_name;
	public MultipartFile getF_name() {
		return f_name;
	}
	public void setF_name(MultipartFile f_name) {
		this.f_name = f_name;
	}
	public int getP_num() {
		return p_num;
	}
	public void setP_num(int p_num) {
		this.p_num = p_num;
	}
	public int getS_price() {
		return s_price;
	}
	public void setS_price(int s_price) {
		this.s_price = s_price;
	}
	public int getN_price() {
		return n_price;
	}
	public void setN_price(int n_price) {
		this.n_price = n_price;
	}
	public int getA_price() {
		return a_price;
	}
	public void setA_price(int a_price) {
		this.a_price = a_price;
	}
	public int getU_num() {
		return u_num;
	}
	public void setU_num(int u_num) {
		this.u_num = u_num;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public String getP_img() {
		return p_img;
	}
	public void setP_img(String p_img) {
		this.p_img = p_img;
	}
	public String getP_info() {
		return p_info;
	}
	public void setP_info(String p_info) {
		this.p_info = p_info;
	}
	public String getTrade() {
		return trade;
	}
	public void setTrade(String trade) {
		this.trade = trade;
	}
	public String getS_day() {
		return s_day;
	}
	public void setS_day(String s_day) {
		this.s_day = s_day;
	}
	public String getE_day() {
		return e_day;
	}
	public void setE_day(String e_day) {
		this.e_day = e_day;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	
	
}
