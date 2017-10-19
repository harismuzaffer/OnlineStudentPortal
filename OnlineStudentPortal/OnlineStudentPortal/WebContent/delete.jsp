<html>
<head>
<title>DELETE PAGE</title>
<link rel="stylesheet" type="text/css" href="login.css" />
</head>
<body>

<%

HttpSession ss=request.getSession();
if(session.getAttribute("uname")==null)
	response.sendRedirect("index.jsp");

%>


<jsp:include page="header.jsp"></jsp:include>

<form action="deleteResponse.jsp" id="loginform">


<input type="number" min="1" required placeholder="Enter Rollno" class="input" name="roll"><br><br>

<input type="submit" class="loginbutton" value="DELETE">

<input type="reset" class="loginbutton" value="CLEAR">

</form>

<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>