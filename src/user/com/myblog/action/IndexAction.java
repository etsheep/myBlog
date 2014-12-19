package com.myblog.action;

import org.apache.struts2.convention.annotation.Action;

import com.opensymphony.xwork2.ActionSupport;

/**
 * 主页跳转类
 * @author 羊
 *
 */
public class IndexAction extends ActionSupport{

	@Action("/index")
	public String index(){
		return SUCCESS;
	}
}
