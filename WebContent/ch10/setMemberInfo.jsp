<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	session.setAttribute("MEMBERID", "madvirus");
	session.setAttribute("NAME","최범균");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
세션에 정보를 저장하였습니다.<br>
<%=session.getAttribute("MEMBERID") %><br>
<%=session.getAttribute("NAME") %>
</body>
</html>