package edu.hebut.crm.core.web.action;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;

@Controller
@Scope(value = "prototype")
public class HomeAction extends ActionSupport{
	
	/**
	 * return the home page.
	 */
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		return super.execute();
	}
	
}
