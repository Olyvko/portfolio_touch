package com.mkyong.cool;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "contact")
public class Contact {
	@Id
	@GeneratedValue
	Integer id;
	@Column(name = "id_user")
	public
	Integer id_user = 0;
	@Column(name = "name_user")
	public
	String name_user = "";
	@Column(name = "id_dialog")
	public
	Integer id_dialog = 0;
	@Column(name = "message")
	public
	String message = "";
	@Column(name = "date")
	public
	String date = "";
	

	public Integer getid() {
		return id;
	}
	public void setid(Integer id) {
		this.id = id;
	}
	public Integer getid_user() {
		return id_user;
	}
	public void setid_user(Integer id_user) {
		this.id_user = id_user;
	}
	public String getname_user() {
		return name_user;
	}
	public void setname_user(String name_user) {
		this.name_user = name_user;
	}
	public Integer getid_dialog() {
		return id_dialog;
	}
	public void setid_dialog(Integer id_dialog) {
		this.id_dialog = id_dialog;
	}

	public String getmessage() {
		return message;
	}
	public void setmessage(String message) {
		this.message = message;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	
}
