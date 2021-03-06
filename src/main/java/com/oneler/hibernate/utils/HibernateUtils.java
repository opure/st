package com.oneler.hibernate.utils;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;
import org.hibernate.service.ServiceRegistryBuilder;

public class HibernateUtils {
	 private static final SessionFactory sessionFactory = buildSessionFactory();

	    private static SessionFactory buildSessionFactory() {
	        try {
	             Configuration config=new Configuration().configure();     	
	             ServiceRegistry serviceregistry=new ServiceRegistryBuilder().applySettings(config.getProperties()).buildServiceRegistry();
	             return config.buildSessionFactory(serviceregistry);
	        }
	        catch (Throwable ex) {
	            // Make sure you log the exception, as it might be swallowed
	            System.err.println("Initial SessionFactory creation failed." + ex);
	            throw new ExceptionInInitializerError(ex);
	        }
	    }

	    public static SessionFactory getSessionFactory() {
	        return sessionFactory;
	    }
	    public static Session openSession(){
	    	 return   sessionFactory.openSession();
	    }
	   public static void  close(){
		   sessionFactory.close();
	    }
	    public static void main(String[] args) {
	    	System.out.println("dsdafsdfsd ");
			System.out.println(openSession());
		}
}
