package com.oneler.hibernate.utils;

import java.util.Date;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.oneler.hibernate.entity.News;
@Service
public class SpHitest {
	@Resource
	private SessionFactory sessionFactory;
	@Transactional
	public void saveTwoUsers() {
		Session session = sessionFactory.getCurrentSession();
		session.save(new News("java","caohao1",new Date(new Date().getTime())));
	}

}
