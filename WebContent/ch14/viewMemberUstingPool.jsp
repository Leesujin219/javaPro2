<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.beans.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>회원목록</title>
</head>
<body>
MEMBER 테이블의 내용
<table width="100%" border="1">
<tr>
	<td>이름</td><td>아이디</td><td>이메일</td>
</tr>
<%
	Connection conn=null;
	Statement stmt=null;
	ResultSet rs=null;
	
	try{
		String jdbcDriver="jdbc:apache:commons:dbcp:chap14";
		String query="select*from MEMBER order by MEMBERID";
		conn=DriverManager.getConnection(jdbcDriver);
		stmt=conn.createStatement();
		rs=stmt.executeQuery(query);
		while(rs.next()){
			%>
			<tr>
				<td><%=rs.getString("NAME") %></td>
				<td><%=rs.getString("MEMBERID") %></td>
				<td><%=rs.getString("EMAIL") %></td>
						
			</tr>
			<%
		}
	}finally{
		if(rs!=null)try{rs.close();}catch(SQLException ex){}
		if(stmt!=null)try{stmt.close();}catch(SQLException ex){}
		if(conn!=null)try{conn.close();}catch(SQLException ex){}
	}
	
%>
</table>
</body>
</html>