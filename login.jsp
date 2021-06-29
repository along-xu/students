<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>欢迎登录（ServletTest01）</title>
    <link rel="stylesheet" href="./css/login.css">
</head>
<body>
	<%
		String mes = (String)request.getAttribute("mes");
		if("registersuccess".equals(mes)){
			%>
			<script type="text/javascript">
				alert("注册成功，欢迎登录！");
			</script>
			<%
		}
		request.removeAttribute("mes");
		
	%>
    <div class="box">
        <h2 class="title">LOGIN</h2>
        <form action="UserServlet" class="form" method="post">
            <input class="userName" type="text" name="userName" placeholder="userName">
            <input type="password" class="password" name="password" placeholder="password">
            <input type="submit" class="login" name="login" value="LOGIN">
            <button class="register"><a href="./register.jsp">REGISTER</a></button>
        </form>
    </div>
</body>
</html>