<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.Calendar" %>
<%
	Calendar cal=Calendar.getInstance();
	request.setAttribute("time", cal);
%>
<jsp:forward page="/ch8/viewTime.jsp"/>