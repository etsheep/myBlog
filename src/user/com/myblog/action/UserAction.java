package com.myblog.action;

import java.util.UUID;

import org.apache.struts2.convention.annotation.Action;

import com.myblog.model.UserModel;
import com.myblog.page.PageJson;
import com.myblog.util.StringUtils;
import com.opensymphony.xwork2.ActionContext;

/**
 * 用户属性操作处理类
 * @author 羊
 *
 */
public class UserAction extends BaseAction<UserModel>{

	private UserModel userModel = new UserModel();
	@Override
	public UserModel getModel() {
		// TODO Auto-generated method stub
		return userModel;
	}

	
	@Action("login")
	public void login(){
		PageJson p = new PageJson();
		//判断用户名和密码是否为空
		String userName = userModel.getUserName();
		String password = userModel.getPassword();
		if (!StringUtils.isBlank(userName) && !StringUtils.isBlank(password)){
			//判断用户名和密码是否匹配
			if (userName.equals("admin") && password.equals("123456")){
				//模拟登陆成功,设置session
				userModel.setUserId(UUID.randomUUID().toString());
				ActionContext.getContext().getSession().put("user", userModel);
				p.setSuccess(true);
			}
		}else{
			//返回错误
			p.setSuccess(false);
		}
		super.writeJson(p);
	}
	
	@Action("loginOut")
	public void loginOut(){
		ActionContext.getContext().getSession().remove("user");
//		try {
//			ServletActionContext.getResponse().sendRedirect("index");
//		} catch (IOException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		return SUCCESS;
	}
	
	
	@Action("checkName")
	public void checkName(){
		PageJson p = new PageJson();
		String userName = userModel.getUserName();
				
		if (!StringUtils.isBlank(userName)){
			//模拟在数据库中寻找是否存在相同的用户名
			if (!userName.equals("blog")){
				p.setSuccess(true);
			}else{
				p.setMsg("用户名已存在");
				p.setSuccess(false);
			}
		}else{
			p.setMsg("请输入正确的用户名");
			p.setSuccess(false);
		}
		super.writeJson(p);
	}
	
	
	@Action("register")
	public void register(){
		PageJson p = new PageJson();
		String userName = userModel.getUserName();
		String password = userModel.getPassword();
		
		if (!StringUtils.isBlank(userName) && !StringUtils.isBlank(password)){
			//模拟在数据库中寻找是否存在相同的用户名
			if (!userName.equals("blog")){
				//把账号信息写入数据库和session
				userModel.setUserId(UUID.randomUUID().toString());
				ActionContext.getContext().getSession().put("user", userModel);
				p.setSuccess(true);
			}else{
				p.setMsg("用户名已存在");
				p.setSuccess(false);
			}
		}else{
			p.setMsg("请输入正确的用户名和密码");
			p.setSuccess(false);
		}
		super.writeJson(p);
	}
}
