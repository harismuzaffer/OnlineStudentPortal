<html>
<head>
<title>CREATE PAGE</title>
<link rel="stylesheet" type="text/css" href="login.css" />
</head>
<body>

<%

HttpSession ss=request.getSession();
if(session.getAttribute("uname")==null)
	response.sendRedirect("index.jsp");

%>


<jsp:include page="header.jsp"></jsp:include>

<form action="createResponse.jsp" id="loginform">

<br>
<input type="number" min="1" class="input" required placeholder="Enter Rollno" name="roll"><br>

<input pattern="[A-Z+ +a-z]+" type="text" required placeholder="Enter Name" class="input"  name="name"><br>

<input type="number" class="input" min="0" max="100" required placeholder="Enter Marks1" name="marks1"><br>

<input type="number" min="0" max="100" class="input" required placeholder="Enter Marks2" name="marks2"><br>

<input type="number"  min="0" max="100" class="input" required placeholder="Enter Marks3" name="marks3"><br>

<input type="submit" class="loginbutton" value="INSERT">

<input type="reset" class="loginbutton" value="RESET">

</form>

<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>