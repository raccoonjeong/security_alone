<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body><h1>MyLogin</h1>

<c:if test = "${param.error != null}">
<h2>���̵� �н����尡 Ʋ�Ƚ��ϴ�.</h2>
</c:if>

<form action="/login" method="post"><!-- ������ ��ť��Ƽ�� ������ ��� ����� -->

<input type='text' name="username">
<input type='text' name="password">
<input type='hidden' name="${_csrf.parameterName}"
value ="${_csrf.token}">
<input type = "checkbox" name="remember-me">
<button>LOGIN</button>
</form>

<ul>
<%
Enumeration<String> en = request.getAttributeNames();
while(en.hasMoreElements()){
	String key = en.nextElement();
	Object value = request.getAttribute(key);
	%>
	<li><%=key %> -------- <%=value %></li>
	<%
}
%>
</ul>

</body>
</html>