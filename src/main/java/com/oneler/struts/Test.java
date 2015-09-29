package com.oneler.struts;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;

import com.opensymphony.xwork2.ActionSupport;
@ParentPackage("struts-default")
@Namespace("/")

public class Test extends ActionSupport {
	private String  name;
	private String password;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Action(value = "test", results = { 
			@Result(name = "qq",location="/index.jsp")

	})
	public String excute(){
		System.out.println(this.getName());
		System.out.println(this.getPassword());
		System.out.println(this.getName()==null);
		return "qq";
	}

}
