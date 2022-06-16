package com.tkhospital.myapp;

import static org.junit.jupiter.api.Assertions.fail;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.jupiter.api.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

class MySQLConnectionTest {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	//DB연결 변수
    private static final String DRIVER="com.mysql.jdbc.Driver";//연결문자열 jdbc:oracle:thin:@호스트:포트:sid
    private static final String URL="jdbc:mysql://localhost:3306/academy";
    private static final String USER="root"; //아이디
    private static final String PW="a1234"; //비번
	
	@Test
	void oracleConnectionTest() throws Exception{
		Class.forName(DRIVER);
		try {
		Connection conn = DriverManager.getConnection(URL,USER,PW);
		System.out.println(conn);
		logger.info("oracle 연결됐음");
		}catch(Exception e){
			e.printStackTrace();
		}
		
	}

}
