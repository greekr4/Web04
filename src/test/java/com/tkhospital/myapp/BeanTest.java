package com.tkhospital.myapp;

import static org.junit.jupiter.api.Assertions.*;

import javax.activation.DataSource;

import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;
//1. spring과 junit 연동
@RunWith(SpringRunner.class)
//2. 데이터바인딩 환경설정을 어디에서 가져올 것인가?
//@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")

public class BeanTest {
	//해당 컨텍스트를 불러와 자동으로 메모리로 로딩시켜 놓으면, 원하는 구현 클래스가 알아서 실행시켜줌
	//=>의존성 주입
	@Autowired
	ApplicationContext ctx;
	
	@Autowired
	DataSource ds;
	
	@Test
	void test() {
		System.out.println(ctx);
		System.out.println(ds);
		assertNotNull(ctx);
		//fail("Not yet implemented");
	}

}
