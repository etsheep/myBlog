package com.myblog.model;

import java.io.Serializable;
import java.util.Date;

/**
 * 用户属性类
 * @author 羊
 *
 */
public class UserModel implements Serializable{

	private String userId;
	private String userName;
	private String password;
	private Date LogTime;
	private String headPic;
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Date getLogTime() {
		return LogTime;
	}
	public void setLogTime(Date logTime) {
		LogTime = logTime;
	}
	public String getHeadPic() {
		return headPic;
	}
	public void setHeadPic(String headPic) {
		this.headPic = headPic;
	}
	
	
	
}
