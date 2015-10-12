package com.oneler.st;

import com.opensymphony.xwork2.Action;

public class Test implements Action{

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		System.out.println("nihao");
		return SUCCESS;
	}

}
