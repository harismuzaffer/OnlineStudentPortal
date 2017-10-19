<html>
<head>
<title>Main Page</title>
<link rel="stylesheet" type="text/css" href="login.css" />
<style>
table, tr, td {
    border: 1px solid black;
}
</style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<%

HttpSession ss=request.getSession();
if(session.getAttribute("uname")==null)
	response.sendRedirect("index.jsp");

%>



<table align="center" style="width:100%">

<tr>
<td>1</td>
<td><a  href="create.jsp">Add New Student</a></td>
</tr>

<tr>
<td>2</td>
<td><a href="modify.jsp">Change Student Particulars</a></td>
</tr>

<tr>
<td>3</td>
<td><a href="delete.jsp">Delete Existing Student</a></td>
</tr>

<tr>
<td>4</td>
<td><a href="display.jsp">Display Student Particular</a></td>
</tr>


</table><br><br>
<center> <a class="input" style="background-color:red" href="logout.jsp"><b>Logout</b></a>  </center>
</body>

<jsp:include page="footer.jsp" ></jsp:include>

</html>