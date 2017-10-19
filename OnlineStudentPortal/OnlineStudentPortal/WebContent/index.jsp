<html>
<head>
<title>LogIn Form</title>
<link rel="stylesheet" type="text/css" href="login.css" />
</head>
<body bgcolor="#777777">

<jsp:include page="header.jsp"></jsp:include>

<form action="Welcome" id="loginform">
<br><br><br><br>
<input type="text" class="input" placeholder="Username" name="uname" /> <br>
<input type="password" class="input" placeholder="Password" name="pwd"/><br>
<input type="submit" class="loginbutton" value="Login" />

<jsp:include page="footer.jsp" ></jsp:include>
</body>
</html>