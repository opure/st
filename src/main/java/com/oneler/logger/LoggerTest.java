package com.oneler.logger;
import org.apache.log4j.Logger;
import org.slf4j.LoggerFactory;

public class LoggerTest {
   private static Logger log=Logger.getLogger(LoggerTest.class);
   private static org.slf4j.Logger logger2 =LoggerFactory.getLogger(LoggerTest.class);
   public static void main(String[] args) {
	log.debug("this is  debug");
	log.info("this is info");
	logger2.info("sl4j");
	System.out.println("zz");
}
}
