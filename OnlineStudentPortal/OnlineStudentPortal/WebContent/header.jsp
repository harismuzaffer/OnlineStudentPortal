<html>
<head>
<title>header</title>
</head>
<body>

<%

HttpSession ss=request.getSession();
if(session.getAttribute("uname")==null)
	response.sendRedirect("index.jsp");

%>


<center> <h1><a href="main.jsp">ONLINE STUDENT PORTAL</a><img src="java.png" align="right" style="width:15%;height:15%"></h1>

</center>
</body>
</html>