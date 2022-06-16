package com.tkhospital.myapp;

import static org.junit.jupiter.api.Assertions.fail;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.jupiter.api.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


class OracleConnectionTest {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	//DB연결 변수
	private static final String DRIVER = "oracle.jdbc.driver.OracleDriver";
	private static final String URL = "jdbc:oracle:thin:@localhost:1521:xe";
	private static final String USER = "scott";
	private static final String PW = "TIGER";
	
	@Test
	void oracleConnectionTest() throws Exception{
		Class.forName(DRIVER);
		try {
		Connection conn = DriverManager.getConnection(URL,USER,PW);
		System.out.println(conn);
		logger.info("오라클이 연결됐음");
		}catch(Exception e){
			e.printStackTrace();
		}
		
	}

}
