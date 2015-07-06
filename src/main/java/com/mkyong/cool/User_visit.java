package com.mkyong.cool;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "user_visit")
public class User_visit {
	@Id
	@GeneratedValue
	Integer id;
	@Column(name = "name")
	public
	String name = "";
	@Column(name = "page_id")
	public
	Integer page_id = 0;
	@Column(name = "date")
	public
	String date = "";
	
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getPage_id() {
		return page_id;
	}
	public void setPage_id(Integer page_id) {
		this.page_id = page_id;
	}
	
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	

}
