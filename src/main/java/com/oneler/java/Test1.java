package com.oneler.java;

import java.io.UnsupportedEncodingException;
public class Test1{
	
    public static void main(String[] args) throws UnsupportedEncodingException
    {
        String web = "金丝燕网";  
        byte[] bytegbk = web.getBytes("gbk");
        String result = new String(bytegbk, "gbk");  
        System.out.println(result);  
        bytegbk = result.getBytes("utf-8");
        result = new String(bytegbk, "utf-8");  
        System.err.println(result);  
    }
}