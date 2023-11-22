<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="vo.MemberVO"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="serverList.css">
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="../serverList.css">
<link rel="stylesheet" href="../style.css">
<link rel="stylesheet" href="createServer.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<title>MPSL 마인크래프트 사설 서버 리스트</title>
</head>
<body>
<%
				MemberVO login = (MemberVO)session.getAttribute("loginOK");
%>
<%
				if(login == null) {
%>
		<div class="side-bar">
			<div class="logo">
				<a href="/MPSL/index.jsp"><img src="images/logo.png" alt="logo" width="50px" height="50px">
				<img src="https://see.fontimg.com/api/renderfont4/VGORe/eyJyIjoiZnMiLCJoIjo2NSwidyI6MTAwMCwiZnMiOjY1LCJmZ2MiOiIjMDAwMDAwIiwiYmdjIjoiI0ZGRkZGRiIsInQiOjF9/TVBTTA/minecraft-ten.png" alt="Minecraft text" width="170px" height="50px"></a>
			</div>
			<hr>
	        <div class="menu">
	            <div class="item"> <a href="/MPSL/index.jsp"> <i class="fas fa-desktop"></i>Login</a></div>
	            <div class="item">
	                <a class="sub-btn"> <i class="fas fa-table"></i>Server List </i></a>
	            </div>
	            <div class="item"> <a href="#"> <i class="fas fa-th"></i>Forms</a></div>
	            <div class="item"> 
	                <a class="sub-btn"> <i class="fas fa-cogs"></i>Settings</a>
	            </div>
	        </div>
	   	</div>
<%
				} else {
%>
		<div class="side-bar">
			<div class="logo">
				<a href="/MPSL/index.jsp"><img src="images/logo.png" alt="logo" width="50px" height="50px">
				<img src="https://see.fontimg.com/api/renderfont4/VGORe/eyJyIjoiZnMiLCJoIjo2NSwidyI6MTAwMCwiZnMiOjY1LCJmZ2MiOiIjMDAwMDAwIiwiYmdjIjoiI0ZGRkZGRiIsInQiOjF9/TVBTTA/minecraft-ten.png" alt="Minecraft text" width="170px" height="50px"></a>
			</div>
			<hr>
	        <div class="menu">
	            <div class="item"> <a href="/MPSL/logout" id="logout"> <i class="fas fa-desktop"></i>Logout (<%= login.getMemberName() %>)</a></div>
	            <div class="item">
	                <a  href="/MPSL/ServerPage.jsp" class="sub-btn"> <i class="fas fa-table"></i>Server List </i></a>
	            </div>
	            <div class="item"> <a href="#"> <i class="fas fa-th"></i>Forms</a></div>
	            <div class="item"> 
	                <a class="sub-btn"> <i class="fas fa-cogs"></i>Settings</a>
	            </div>
	            <div class="item"> <a href="/MPSL/quit" id="quit"> <i class="fas fa-info-circle"></i>회원탈퇴</a></div>
	        </div>
	        
	        <div class="footer">
	            <h4><%= login.getMemberName() %>님, 환영합니다.</h4>
	        </div>
        </div>
<%
			}
%>

    