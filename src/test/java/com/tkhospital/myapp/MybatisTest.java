package com.tkhospital.myapp;

import javax.inject.Inject;

import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.tkhospital.dao.TestDaoImpl;
import com.tkhospital.myapp.mapper.TimeMapper;
import com.tkhospital.service.TestService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "file:src/main/webapp/WEB-INF/spring/root-context.xml")

public class MybatisTest {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@Autowired
	private TimeMapper timeMapper;
	
	
	@Inject
	private TestService service;
	
	
	
	@Test
	void test() throws Exception {
//		logger.info(timeMapper.getClass().getName());
//		logger.info(timeMapper.getTime1());
		System.out.println(service.Test2());
	}

}
