package com.tkhospital.myapp;

import static org.junit.jupiter.api.Assertions.fail;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.jupiter.api.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

class MariaDBConnectionTest {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	//DB연결 변수
    private static final String DRIVER = "org.mariadb.jdbc.Driver";
    private static final String URL    = "jdbc:mysql://localhost:3308/company";
    private static final String USER   = "root";
    private static final String PW     = "1234";
	
	@Test
	void oracleConnectionTest() throws Exception{
		Class.forName(DRIVER);
		try {
		Connection conn = DriverManager.getConnection(URL,USER,PW);
		System.out.println(conn);
		logger.info("mariadb 연결됐음");
		}catch(Exception e){
			e.printStackTrace();
		}
		
	}

}
