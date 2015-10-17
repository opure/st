package com.oneler.hibernate.test;

import java.util.Date;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.junit.Test;

import com.oneler.hibernate.entity.News;
import com.oneler.hibernate.utils.HibernateUtils;
public class HibernateTest {
	@Test
	public void test(){
		Session session=HibernateUtils.openSession();
		Transaction tx=session.beginTransaction();
		News news=new News("java","caohao",new Date(new Date().getTime()));
		session.save(news); 
        tx.commit();
		session.close();
	    HibernateUtils.close();
	    
	}

}
