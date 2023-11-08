<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MPSL 마인크래프트 사설 서버 리스트</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
	<form action="">
        <h1>Login</h1>
        <div class="input-box">
            <input type="text" id="input-email" required autocomplete="off">
            <label for="input-email">Email</label>
            <ion-icon name="mail-outline"></ion-icon>
        </div>
        <div class="input-box">
            <span class="light"></span>
            <input type="password" id="input-password" required autocomplete="off">
            <label for="input-password">Password</label>
            <ion-icon name="flashlight-outline" class="icon"></ion-icon>
        </div>
        <div class="checkbox">
            <div>
                <input type="checkbox" id="checkbox">
                <label for="check">Remember Me</label>
            </div>
            <h4>Forget Password ?</h4>
        </div>
        <button type="submit">Submit</button>
        <div class="Register-box">
            <h5>Dont have an account ? Register</h5>
        </div>
    </form>
    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
</body>
</html>