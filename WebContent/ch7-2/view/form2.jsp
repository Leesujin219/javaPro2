<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>������</title>
</head>
<body>
<p>
<% request.setCharacterEncoding("euc-kr"); %>
<form  method="post">
�̸�1:<input type="text" name="name" size="10" value="<%=request.getParameter("name")%>"><br>
�ּ�:<input type="text" name="address" size="30" value="<%=request.getParameter("address")%>"><br>
�����ϴ� ����:
	<input type="checkbox" name="pet" value="fish" >�����
	<input type="checkbox" name="pet" value="parrot">�޹���
	<input type="checkbox" name="pet" value="dog">������
	<input type="checkbox" name="pet" value="cat">�����
	<input type="checkbox" name="pet" value="pig">����
<br>�޼��� :<br>
	<textarea name="message" class="field-style" placeholder="Message"><%=request.getParameter("address")%></textarea>
<br>
<input type="submit" value="����">
</form>
</body>
</html>