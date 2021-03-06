<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>회원 목록</title>
</head>
<body>

책 380 페이지
MEMBER 테이블의 내용
<table width="100%" border="1">
<tr>
	<td>MEMBERID</td><td>NAME</td><td>EMAIL</td>
</tr>
<%
	//1.JDBC 드라이버 로딩
	//이부분도 책과 다르게 바꿨음. 오라클로 접속하기 위해.
	Class.forName("oracle.jdbc.driver.OracleDriver");
	//여기까지 책과 다르게 바꿨음.

	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	try {
		//이부분부터 책이랑 다르게 변경하였음. 오라클로 접속하기 위해.
		String jdbcDriver = "jdbc:oracle:thin:@localhost:1521:orcl";
		String dbUser = "scott";
		String dbPass = "tiger";
		//여기까지 책이랑 다르게 변경함
		
		//이부분도 책과 다르게 변경함.
		String query = "select * from member";
		//여기가지 책과 다르게 변경함.
		
		// 2.데이터베이스 커넥션 생성
		conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
		
		// 3.Statement 생성
		stmt = conn.createStatement();
		
		//4. 쿼리실행
		rs = stmt.executeQuery(query);
		
		// 5. 쿼리 실행 결과 출력
		while(rs.next()){
%>
<tr>
	<!-- 이 부분도 책과 다르게 변경함 숫자 1,2,3은 첫번째 두번째 세번째 임 -->
	<td><%= rs.getString(1) %></td>
	<td><%= rs.getString(3) %></td>
	<td><%= rs.getString(4) %></td>
	<!-- 여기까지 책과 다르게 변경함.  -->
</tr>
<%
		}
	}catch(SQLException ex) {
		out.println(ex.getMessage());
		ex.printStackTrace();
	}finally {
		// 6.사용한 Statement 종료
		if (rs != null) try {rs.close();} catch(SQLException ex) {}
		if (stmt != null) try {stmt.close();} catch(SQLException ex) {}
		
		// 7.커넥션 종료
		if (conn != null) try {conn.close();} catch(SQLException ex) {}
	}
%>
</table>


</body>
</html>