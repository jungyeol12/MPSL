<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
	<form action="/MPSL/login" method="post">
        <h1>Login</h1>
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
        <div class="checkbox">
            <div>
                <input type="checkbox" id="checkbox">
                <label for="check">Remember Me</label>
            </div>
            <h4>Forget Password ?</h4>
        </div>
        <input class="sub-button" type="submit" value="Submit">
        <div class="Register-box">
            <a href="/MPSL/login/register.jsp" id="register"><h5>Don't have an account ? Register</h5></a>
        </div>
    </form>
</body>
</html>