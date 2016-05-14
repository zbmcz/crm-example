package edu.hebut.crm.core.web.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;

public class LoginInterceptor extends MethodFilterInterceptor {

	@Override
	protected String doIntercept(ActionInvocation invocation) throws Exception {
		Object loginUser = ActionContext.getContext().getSession().get("user");
		if (loginUser == null) {
			Object action = invocation.getAction();
			if (action instanceof ActionSupport) {
				ActionSupport actionSupport = (ActionSupport) action;
				actionSupport.addFieldError("loginMessage", "必须登录之后才可以访问");
			}
			return "login";
		}
		return invocation.invoke();

	}
}
