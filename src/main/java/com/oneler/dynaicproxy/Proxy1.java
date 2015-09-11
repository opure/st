package com.oneler.dynaicproxy;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

public class Proxy1 implements InvocationHandler {
	private Object target;
	public Object bind(Object target){
		this.target=target;
		return Proxy.newProxyInstance(target.getClass().getClassLoader(), target.getClass().getInterfaces(), this);
	}

	@Override
	public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
		// TODO Auto-generated method stub
		System.out.println("起早点");
		Object result=method.invoke(target, args);
		System.out.println("很好");
		return result;
	}

}
