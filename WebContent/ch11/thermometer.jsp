<%@page import="ch11.Thermometer"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	Thermometer thermometer=new Thermometer();
	request.setAttribute("t",thermometer);
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>온도변환예제</title>
</head>
<body>
	${t.setCelsius('서울',27.3) }
	서울 온도 : 섭씨 ${t.getCelsius('서울')}도 
	/ 화씨${t.getFahrenheit('서울') }
	<br/>
	정보:${t.info }:${t.aaa }:${t.bbb }

</body>
</html>