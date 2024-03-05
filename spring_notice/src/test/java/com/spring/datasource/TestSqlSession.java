package com.spring.datasource;

import org.apache.ibatis.session.SqlSession;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;



@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:com/spring/context/dataSource-context.xml")
public class TestSqlSession {

	@Autowired
	private SqlSession session;
	
	@Test
	public void testList() {
		int count = session.selectOne("Notice-Mapper.selectSearchNoticeListCount");
		
		Assert.assertEquals(22,count);
	}
	
}







