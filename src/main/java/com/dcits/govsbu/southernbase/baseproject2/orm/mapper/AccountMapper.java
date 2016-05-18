package com.dcits.govsbu.southernbase.baseproject2.orm.mapper;

import java.util.List;
import com.dcits.govsbu.southernbase.baseproject2.orm.model.Account;
import com.dcits.govsbu.southernbase.baseproject2.orm.MyMapper;

public interface AccountMapper extends MyMapper<Account> {

	/**
	 * 
	 * @Title: searchLike 
	 * @Description: 模糊查询
	 * @param account
	 * @return
	 * @throws 
	 * 增加人:张孟志
	 * 增加日期:2016年1月20日 上午11:08:33
	 * 说明：说明：只有email/name两个字段模糊查询
	 * com/dcits/govsbu/southernbase/baseproject2/orm/mapping/AccountMapper.xml
	 */
	List<Account> searchLike(Account account);

}