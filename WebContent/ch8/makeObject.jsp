<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <!-- MemberInfo member=new MemberInfo(); 
    	class MemberInfo의 참조변수 member를 만들자는 의미-->
<jsp:useBean id="member" scope="request" class="ch8.member.MemberInfo"/>
<%
	member.setId("madvirus");
	member.setName("최범균");
%>
<jsp:forward page="/ch8/useObject.jsp"/>