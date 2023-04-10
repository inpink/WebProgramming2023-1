<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 종합 예제</title>
</head>
<body>
	<h2>JSP 종합 예제</h2>	
	<hr>
	
	<%!
		String[] members={"abc","bcd","aple","kkkk"};
		int num1=10;
		
		int calc(int num2) {
			return num1+num2;
		}
	%>
	
	<h3>
		1. JSP 주석
		<!--  HTML 주석은 페이지 소스에 보임 -->
		<%-- JSP 주석은 안보임 --%>
	</h3>
	
	<h3>
		2. calc(10) 메서드 실행결과: 
		<%= calc(10) %> 
	</h3>
	<hr>
	
	<h3> 3. include: hello.jsp</h3>
		<%@ include file="../hello.jsp" %>  <%-- 이렇게 중간에서도 include 할 수 있음. 바로 화면에 뜸--%>
	
	<h3> 4.스크립트 (배열 데이터 출력) 
	</h3>
	<ul>
		<%
			for (String name : members) { %>  <%-- out.println없이 이렇게 for문을 잘라서 써줄 수도 있다! --%>
				<li><%=name %></li>
		<% } %>
	</ul>
</body>
</html>
