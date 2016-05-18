package com.dcits.govsbu.southernbase.baseproject2.modules.test;

import java.util.Date;

import org.junit.Assert;
import org.junit.Test;

import com.dcits.govsbu.southernbase.baseproject2.modules.convert.StringToDateConverter;


public class StringToDateConverterTest {
	
	
	
	@Test
	public  void testConvert() {
		String dateStr = "2016-03-07";
		StringToDateConverter stringToDateConverter = new StringToDateConverter();
		Date date = stringToDateConverter.convert(dateStr);
		Assert.assertEquals(new Date("2016-03-07"), date);
	}
}
