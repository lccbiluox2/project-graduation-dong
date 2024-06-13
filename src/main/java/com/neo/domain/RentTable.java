package com.neo.domain;

/*
 * 房子出租  
 * 
 */
public class RentTable {
		
	private int        id 				 	;  // 
	private String     h_name 				;  // 房屋名称
	private String     h_address 			;  // 房屋总体地址
	private String     h_province 			;  // 房屋所在省
	private String     h_city 				;  // 房屋所在市
	private String     h_qu 				;  // 房屋所在区
	private String     h_address_detail 	;  // 房屋所在自定义的详细地址
	private String     h_price 				;  // 房屋价格
	private int        h_home_count 		;  // 房屋室内个数
	private String     h_beizhu 			;  // 房屋备注
	private String     h_desc 				;  // 描述
	private String     h_phone				;  // 房屋电话
	private String     h_create_time 		;  // 发布该条信息的时间
	private String     h_end_time 			;  // 该条信息什么时候结束
	private String     h_hignt 				;  // 房屋在地下室  一楼  高处 高度等
	private int        h_is_new 			;  // 房屋是否是新的
	private int        h_type 				;  // 房屋类型 1.新房 2 二手房  4 商铺 4 写字楼 
	private int        h_state 				;  // 房屋状态 1.在售 2.已出售 3撤销 4待定
	private int        user_id 				;  // 发布该条信息人的id
	private String     user_name 			;  // 发布该条信息人的name
	private String     user_phone 			;  // 发布该条信息人的phone
	private int        c_id 				;  // 评论的id
	
	
	
	
	@Override
	public String toString() {
		return "RentTable [id=" + id + ", h_name=" + h_name + ", h_address=" + h_address + ", h_province=" + h_province
				+ ", h_city=" + h_city + ", h_qu=" + h_qu + ", h_address_detail=" + h_address_detail + ", h_price="
				+ h_price + ", h_home_count=" + h_home_count + ", h_beizhu=" + h_beizhu + ", h_desc=" + h_desc
				+ ", h_phone=" + h_phone + ", h_create_time=" + h_create_time + ", h_end_time=" + h_end_time
				+ ", h_hignt=" + h_hignt + ", h_is_new=" + h_is_new + ", h_type=" + h_type + ", h_state=" + h_state
				+ ", user_id=" + user_id + ", user_name=" + user_name + ", user_phone=" + user_phone + ", c_id=" + c_id
				+ "]";
	}
	public int getId() {
		return id;
	}
	public String getH_name() {
		return h_name;
	}
	public String getH_address() {
		return h_address;
	}
	public String getH_province() {
		return h_province;
	}
	public String getH_city() {
		return h_city;
	}
	public String getH_qu() {
		return h_qu;
	}
	public String getH_address_detail() {
		return h_address_detail;
	}
	public String getH_price() {
		return h_price;
	}
	public int getH_home_count() {
		return h_home_count;
	}
	public String getH_beizhu() {
		return h_beizhu;
	}
	public String getH_desc() {
		return h_desc;
	}
	public String getH_phone() {
		return h_phone;
	}
	public String getH_create_time() {
		return h_create_time;
	}
	public String getH_end_time() {
		return h_end_time;
	}
	public String getH_hignt() {
		return h_hignt;
	}
	public int getH_is_new() {
		return h_is_new;
	}
	public int getH_type() {
		return h_type;
	}
	public int getH_state() {
		return h_state;
	}
	public int getUser_id() {
		return user_id;
	}
	public String getUser_name() {
		return user_name;
	}
	public String getUser_phone() {
		return user_phone;
	}
	public int getC_id() {
		return c_id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setH_name(String h_name) {
		this.h_name = h_name;
	}
	public void setH_address(String h_address) {
		this.h_address = h_address;
	}
	public void setH_province(String h_province) {
		this.h_province = h_province;
	}
	public void setH_city(String h_city) {
		this.h_city = h_city;
	}
	public void setH_qu(String h_qu) {
		this.h_qu = h_qu;
	}
	public void setH_address_detail(String h_address_detail) {
		this.h_address_detail = h_address_detail;
	}
	public void setH_price(String h_price) {
		this.h_price = h_price;
	}
	public void setH_home_count(int h_home_count) {
		this.h_home_count = h_home_count;
	}
	public void setH_beizhu(String h_beizhu) {
		this.h_beizhu = h_beizhu;
	}
	public void setH_desc(String h_desc) {
		this.h_desc = h_desc;
	}
	public void setH_phone(String h_phone) {
		this.h_phone = h_phone;
	}
	public void setH_create_time(String h_create_time) {
		this.h_create_time = h_create_time;
	}
	public void setH_end_time(String h_end_time) {
		this.h_end_time = h_end_time;
	}
	public void setH_hignt(String h_hignt) {
		this.h_hignt = h_hignt;
	}
	public void setH_is_new(int h_is_new) {
		this.h_is_new = h_is_new;
	}
	public void setH_type(int h_type) {
		this.h_type = h_type;
	}
	public void setH_state(int h_state) {
		this.h_state = h_state;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}
	public void setC_id(int c_id) {
		this.c_id = c_id;
	}
	
	
	
	
	
}
