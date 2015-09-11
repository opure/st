package com.oneler.dynaicproxy;

public class TestProxy {
	public static void main(String[] args) {
	Proxy1 proxy=new Proxy1();
	Hello h=(Hello) proxy.bind(new Helloimpl());
	h.sayHello();
	}
}
