package com.liu.OJSystem.pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="user")
public class User {
    
	@Id
	@GenericGenerator(name = "uuidGen" , strategy="uuid")
	@GeneratedValue(generator="uuidGen")
	@Column(name="user_id")
	private String user_id ; 
	
	@Column(name="position")
	private String position ;
	
	@Column(name="account")
	private String account;
	 
	@Column(name="password")
	private String password;

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	
	
}
