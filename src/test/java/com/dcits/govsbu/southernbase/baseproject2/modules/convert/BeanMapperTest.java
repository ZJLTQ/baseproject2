package com.dcits.govsbu.southernbase.baseproject2.modules.convert;

import ma.glasnost.orika.MapperFacade;
import ma.glasnost.orika.MapperFactory;
import ma.glasnost.orika.impl.DefaultMapperFactory;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

/**
 * orika测试，实现bean<-->bean之间转换
 * @author dc_zjl
 *
 */

public class BeanMapperTest {

	MapperFacade mapper = null;
	 
    @Before
    public void init() {
        //创建mapper的工厂类
        MapperFactory factory = new DefaultMapperFactory.Builder().build();
        //注册一个mapper,这段可以同过继承configurableMapper类，配置成spring bean
        factory.registerClassMap(factory.classMap(User.class, Customer.class)
            //设置正向空值不复制，反向空值不复制
            .mapNulls(false).mapNullsInReverse(false)
            //相同的字段不需要显示声明
            .field("userId", "customerId")
            .field("userName", "customerName")
            //List, Array, Map类型的复制方式
            //.field("listProp3{}", "prop3{}").mapNulls(true)
            .byDefault().toClassMap());
        //获取mapper       
        mapper = factory.getMapperFacade();
    }
    
	@Test
	public void mapTest() {
		User user = new User(1,"user1");
		Customer customer = mapper.map(user, Customer.class);
		Assert.assertEquals(1, customer.getCustomerId());
		Assert.assertEquals("user1", customer.getCustomerName());
	}
}


