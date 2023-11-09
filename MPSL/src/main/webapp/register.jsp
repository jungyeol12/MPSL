<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="side-menu.jsp" %>

	<form action="/MPSL/register" method="post" class="register">
        <h1>Register</h1>
        <div class="input-box">
            <input type="text" id="input-email" name="email" required autocomplete="off">
            <label for="input-email">Email</label>
            <ion-icon name="mail-outline"></ion-icon>
        </div>
        <div class="input-box">
            <span class="light"></span>
            <input type="password" id="input-password" name="pwd" required autocomplete="off">
            <label for="input-password">Password</label>
            <ion-icon name="flashlight-outline" class="icon"></ion-icon>
        </div>
        <div class="input-box">
            <input type="text" id="input-email" name="name" required autocomplete="off">
            <label for="input-email">Name</label>
            <ion-icon name="mail-outline"></ion-icon>
        </div>
        <div class="input-box">
            <input type="number" id="input-email" name="Age" required autocomplete="off">
            <label for="input-email">Age</label>
            <ion-icon name="mail-outline"></ion-icon>
        </div>
        <input class="sub-button" type="submit" value="가입">	
    </form>
    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
	<script src="main.js"></script>
</body>
</html>