package com.myblog.action;

import org.apache.struts2.ServletActionContext;

import com.alibaba.fastjson.JSON;
import com.myblog.model.UserModel;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

/**
 * Action的基础类，放置action的公共方法
 * @author 羊
 *
 * @param <T> 实体类型
 */
public abstract class BaseAction<T> extends ActionSupport implements ModelDriven<T>{

	/**
	 * 获取当前session中的user对象
	 * @return user对象
	 */
	public UserModel getCurrentUser(){
		UserModel user = (UserModel) ServletActionContext.getRequest().getSession().getAttribute("user");
		return user;
	}
	
	/**
	 * 获取用户id
	 * @return id
	 */
	public String getUserId(){
		String userId = "";
		if (getCurrentUser() != null){
			userId = getCurrentUser().getUserId();
		}
		return userId;
	}
	
	
	/**
	 * 向前台发送json格式数据
	 * 
	 * @param object
	 */
	public void writeJson(Object object) {
		try {
			String json = JSON.toJSONStringWithDateFormat(object, "yyyy-MM-dd HH:mm:ss");
			ServletActionContext.getResponse().setContentType("text/html;charset=utf-8");
			ServletActionContext.getResponse().getWriter().write(json);
			ServletActionContext.getResponse().getWriter().flush();
			ServletActionContext.getResponse().getWriter().close();
		} catch (Exception e) {
//			logger.error(e.getStackTrace());
			e.printStackTrace();
		}
	}
	
	/**
	 * 向前台发送json格式数据
	 * 
	 * @param jsonStr
	 */
	public void writeJsonStr(String jsonStr) {
		try {
			ServletActionContext.getResponse().setContentType("text/html;charset=utf-8");
			ServletActionContext.getResponse().getWriter().write(jsonStr);
			ServletActionContext.getResponse().getWriter().flush();
			ServletActionContext.getResponse().getWriter().close();
		} catch (Exception e) {
//			logger.error(e.getStackTrace());
			e.printStackTrace();
		}
	}
}
