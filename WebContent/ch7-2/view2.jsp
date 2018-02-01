<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String code=request.getParameter("code");
	String viewPageURI=null;
	
	if(code.equals("A")){
		viewPageURI="/ch7-2/viewModule/a.jsp";
	}else if(code.equals("B")){
		viewPageURI="/ch7-2/viewModule/b.jsp";
	}else if(code.equals("C")){
		viewPageURI="/ch7-2/viewModule/c.jsp";
	}
%>
<jsp:forward page="<%=viewPageURI %>"/>


