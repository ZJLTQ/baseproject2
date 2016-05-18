package com.dcits.govsbu.southernbase.baseproject2.modules.utils;

import java.util.List;



import org.junit.Assert;
import org.junit.Test;

import com.google.common.collect.Lists;

public class Collections3TestUnit {

	@Test
	public void extractToStringTest(){
		TestBean bean1 = new TestBean();
		bean1.setId(1);
		TestBean bean2 = new TestBean();
		bean2.setId(2);

		List list = Lists.newArrayList(bean1, bean2);
		Assert.assertEquals("1,2", Collections3.extractToString(list, "id", ","));
	}
	/**
	 * 将list中的元素以某一分隔符连接成字符串
	 */
	@Test
	public void convertToStringTest() {
		
		List list = Lists.newArrayList("test1","test2");
		String result1 = Collections3.convertToString(list, ",");
		Assert.assertEquals("test1,test2", result1);
		
		String result2 = Collections3.convertToString(list, "<xml>", "</xml>");
		Assert.assertEquals("<xml>test1</xml><xml>test2</xml>", result2);
	}
	
	public static class TestBean {
		private int id;
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		private String name;
		
	}

}

