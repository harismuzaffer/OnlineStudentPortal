<%@page import="java.sql.*" %>

<html>
<head>
<title>MODIFY RESPONSE</title>
</head>
<body>

<%

int roll = Integer.parseInt(request.getParameter("roll"));
String name = request.getParameter("name");

try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
	
	PreparedStatement pst=con.prepareStatement("update student set name = ? where rollno=? ");

	pst.setString(1,name);
	pst.setInt(2,roll);
	int rows=pst.executeUpdate();

	System.out.println("No of rows updated: "+rows);
	if(rows==1)
		out.print("<html><body><h3>Modified Student record Successfully</h3></body></html><br>");
	else
		out.print("<html><body><h3>Record not Found</h3></body></html><br>");
	con.commit();
	con.close();
}

catch(ClassNotFoundException e)
{
	e.printStackTrace();
}
catch(SQLException s)
{
	s.printStackTrace();
}

%>

<a href="main.jsp">CLICK HERE TO GO FOR MAIN PAGE</a>

</body>
</html>