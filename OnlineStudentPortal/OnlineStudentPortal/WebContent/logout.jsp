<html>
<head>
<title>Logout</title>
</head>
<body>

<%


HttpSession ss=request.getSession();
ss.removeAttribute("uname");
ss.invalidate();
out.print("logout");
response.sendRedirect("index.jsp");

%>



</body>
</html>