<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>폼생성</title>
</head>
<body>
<p>
<% request.setCharacterEncoding("euc-kr"); %>
<form  method="post">
이름1:<input type="text" name="name" size="10" value="<%=request.getParameter("name")%>"><br>
주소:<input type="text" name="address" size="30" value="<%=request.getParameter("address")%>"><br>
좋아하는 동물:
	<input type="checkbox" name="pet" value="fish" >물고기
	<input type="checkbox" name="pet" value="parrot">앵무새
	<input type="checkbox" name="pet" value="dog">강아지
	<input type="checkbox" name="pet" value="cat">고양이
	<input type="checkbox" name="pet" value="pig">돼지
<br>메세지 :<br>
	<textarea name="message" class="field-style" placeholder="Message"><%=request.getParameter("address")%></textarea>
<br>
<input type="submit" value="전송">
</form>
</body>
</html>