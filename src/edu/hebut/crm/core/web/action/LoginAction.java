package edu.hebut.crm.core.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import edu.hebut.crm.core.domain.User;
import edu.hebut.crm.core.service.LoginService;

@Component
@Scope(value = "prototype")
public class LoginAction extends ActionSupport implements ModelDriven<User> {

	private User user;

	@Override
	public User getModel() {
		// TODO Auto-generated method stub
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	@Autowired
	private LoginService loginService;

	public void setLoginService(LoginService loginService) {
		this.loginService = loginService;
	}
	
	/**
	 * return the WEB-INF/pages/login.jsp page
	 * @return
	 */
	public String getLoginUI(){
		return SUCCESS;
	}
	
	/**
	 * Login method
	 * 
	 * @return
	 */
	public String login() {
		User queryUser = loginService.login(user);
		if (queryUser == null) {
			this.addFieldError("loginMessage", "用户名或密码错误.");
			return INPUT;
		}
		ActionContext.getContext().getSession().put("user", queryUser);
		return SUCCESS;
	}
	
	
	/**
	 * logout
	 * @return
	 */
	public String logout(){
		ActionContext.getContext().getSession().remove("user");
		return SUCCESS;
	}
}
