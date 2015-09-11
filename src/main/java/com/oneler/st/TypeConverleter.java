package com.oneler.st;

import java.util.Map;

import com.opensymphony.xwork2.conversion.impl.DefaultTypeConverter;

public class TypeConverleter extends DefaultTypeConverter{

	@Override
	public Object convertValue(Map<String, Object> context, Object value, Class toType) {
		// TODO Auto-generated method stub
	if(toType==User.class){
		String[] params=(String[]) value;
		User u=new User();
		String[] uservalues=params[0].split(",");
		u.setName(uservalues[0]);
		u.setPass(uservalues[1]);
		return u;
	}
	return null;
	
	}
}
