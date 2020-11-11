package jp.ken.dvdrental.model;

import java.io.Serializable;
import java.util.Date;

public class OrderRecordModel implements Serializable {
	
	private int id; 
	private int total;
	private Date orderTime;
	private String user_Id;
	
	
	
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	
	
	
	
	public Date getOrderTime() {
		return orderTime;
	}
	public void setOrderTime(Date orderTime) {
		this.orderTime = orderTime;
	}
	public String getUser_Id() {
		return user_Id;
	}
	public void setUser_Id(String user_Id) {
		this.user_Id = user_Id;
	}
	
	

	
	
}