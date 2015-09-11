package com.oneler.st;

import com.opensymphony.xwork2.Action;

public class LoginAction implements Action{
     private User user;
     private String tip;
     
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getTip() {
		return tip;
	}

	public void setTip(String tip) {
		this.tip = tip;
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		if(getUser().getName().equals("aaa")&&getUser().getPass().equals("aaa")){
			setTip("aaaa0");
			return SUCCESS;
		}
		return ERROR;
	}

}
