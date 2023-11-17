<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="side-menu.jsp" %>

<%
				if(login == null) {
%>
					<%@ include file="login/login.jsp" %>
<%
				} else {
%>
					<%@ include file="welCome.jsp" %>
<%
				}
%>

    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
	<script src="main.js"></script>
</body>
</html>