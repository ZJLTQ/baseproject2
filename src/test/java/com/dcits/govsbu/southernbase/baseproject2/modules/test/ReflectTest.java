package com.dcits.govsbu.southernbase.baseproject2.modules.test;

import java.lang.reflect.Method;


public class ReflectTest {
	    public static void main(String[] args) {
	        Object obj = null;

	        try {
				 Class clazz = Class.forName("com.dcits.govsbu.southernbase.baseproject2.modules.utils.HashPasswordTest");
				 obj = clazz.newInstance();
			} catch (ClassNotFoundException e) {
	        	e.printStackTrace();
	        } catch (InstantiationException e) {
	        	e.printStackTrace();
	        } catch (IllegalAccessException e) {
	        	e.printStackTrace();
	        }
	        
	        try {
				Method method = obj.getClass().getMethod("decode");
			} catch (NoSuchMethodException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SecurityException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	        
	    }	
}

