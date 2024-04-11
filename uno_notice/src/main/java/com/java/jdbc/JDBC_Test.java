package com.java.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Date;

public class JDBC_Test {

	 public static void main(String[] args) throws Exception {
			
			String driverClassName="oracle.jdbc.driver.OracleDriver";
			String url="jdbc:oracle:thin:@127.0.0.1:1521:XE";
			String username="UNO";
			String password="uno";
			
			
			
			
			//1.driver loading
			Class.forName(driverClassName);
			System.out.println("드라이버 로딩 성공");
			
			
			//2.datasbase connection
			Connection conn = DriverManager.getConnection(url,username,password); 

			//3.sql전송
			 String sql = "select * from notice";
			 Statement stmt = conn.createStatement();

			//4. receiver result
			 ResultSet rs = stmt.executeQuery(sql);

			//5.get data
			 
			 while(rs.next()) {
				 int gno=rs.getInt("gno");
				 String g_title = rs.getString("g_title");
				 String g_content = rs.getString("g_content");
				 Date g_createDate=rs.getDate("g_createDate");
				 Date g_modifyDate=rs.getDate("g_modifyDate");
				 int g_viewCnt = rs.getInt("g_viewCnt");
				 String id = rs.getString("id");
				 
				 String inDateStr = new SimpleDateFormat("yyy-MM-dd").format(g_createDate);
				 System.out.println(gno+"\t"+ g_title + "\t" + g_content + "\t" + g_createDate+ "\t"+ g_modifyDate +"\t"+g_viewCnt + "\t"+id);

				 
			 }
		}
}
