<%@page import="java.sql.*" %>

<html>
<head>
<title>DELETE RESPONSE PAGE</title>
</head>
<body>

<%

int roll = Integer.parseInt(request.getParameter("roll"));

try{
	Class.forName("oracle.jdbc.driver.OracleDriver"); 
	
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
PreparedStatement pst= con.prepareStatement("delete from student where rollno=?");

pst.setInt(1,roll);	

int rows=pst.executeUpdate();

System.out.println("No of rows deleted successfully!!!"+rows);
if(rows==1)
	out.print("<html><body><h3>Student Successfully removed</h3></body></html><br>");
else
	out.print("<html><body><h3>Record not found</h3></body></html><br>");

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