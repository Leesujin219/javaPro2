<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <!-- MemberInfo member=new MemberInfo(); 
    	class MemberInfo�� �������� member�� �����ڴ� �ǹ�-->
<jsp:useBean id="member" scope="request" class="ch8.member.MemberInfo"/>
<%
	member.setId("madvirus");
	member.setName("�ֹ���");
%>
<jsp:forward page="/ch8/useObject.jsp"/>