<%@ page import="java.sql.*" %>
<html>
<head>
<title>Display</title>
<link rel="stylesheet" type="text/css" href="style.css" />
<link rel="stylesheet" type="text/css" href="login.css" />
</head>
<body>

<%

HttpSession ss=request.getSession();
if(session.getAttribute("uname")==null)
	response.sendRedirect("index.jsp");

%>



<jsp:include page="header.jsp"></jsp:include>
<%

Connection con=null;
ResultSet rs=null;
PreparedStatement pst=null;

try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
	pst = con.prepareStatement("select * from student order by (marks1+marks2+marks3)/3 desc");
	
	rs = pst.executeQuery();
}catch(ClassNotFoundException e){
	//e.printStackTrace();
}catch(SQLException s){
	//s.printStackTrace();
}

%>

<center>
<table cellspacing='0' align="center">

	<thead>
		<tr>
			<th>RollNo</th>
			<th>Name</th>
			<th>Marks1</th>
			<th>Marks2</th>
			<th>Marks3</th>
			<th>FinalResult</th>
		</tr>
	</thead>
	<tbody>

		<% while(rs.next()){ %>
<tr class="even">

<td> <%= rs.getInt(1) %> </td>
<td><%= rs.getString(2) %></td>
<td><%= rs.getString(3) %></td>
<td><%= rs.getString(4) %></td>
<td><%= rs.getString(5) %></td>
<td><%= rs.getString(6) %></td>
</tr>
<% } pst.close();
con.commit();
con.close(); %>

	</tbody>
	<!-- Table Body -->

</table>
</center>


<jsp:include page="footer.jsp" ></jsp:include>
</body>
</html>