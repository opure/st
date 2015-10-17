package com.oneler.hibernate.test;


import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class TestService {

	private ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
    @Test
    public void test(){
    	System.out.println(ac);
    }

/*	@Test
	public void testTransaction() throws Exception {
		TestService testService = (TestService) ac.getBean("testService");
	
	}*/
}
