<%@page import="java.sql.*" %>

<html>
<head>
<title>RESPONSE FOR CREATEING </title>
</head>
<body>

<%

int roll = Integer.parseInt(request.getParameter("roll"));
String name = request.getParameter("name");
int marks1 = Integer.parseInt(request.getParameter("marks1"));
int marks2 = Integer.parseInt(request.getParameter("marks2"));
int marks3 = Integer.parseInt(request.getParameter("marks3"));
int avg = ((marks1+marks2+marks3)/3);
String result=null;
if(avg > 80 && avg <= 100){
	result = String.valueOf(avg)+"% - Distinction";
}else if(avg > 60 && avg <= 80){
	result = String.valueOf(avg)+"% - First Class";
}else if(avg > 40 && avg <= 60){
	result = String.valueOf(avg)+"% - Second Class";
}else{
	result = String.valueOf(avg)+"% - Failed";
}

try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
	
PreparedStatement pst=con.prepareStatement("insert into student values(?, ?, ?, ?, ?, ?)");

pst.setInt(1, roll);
pst.setString(2, name);
pst.setInt(3, marks1);
pst.setInt(4, marks2);
pst.setInt(5, marks3);
pst.setString(6, result);

int rows=pst.executeUpdate(); 

System.out.println("No of rows inserted : "+rows);
if(rows==1)
	out.print("<html><body><h3>Added new Student Successfully</h3></body></html><br>");
else
	out.print("<html><body><h3>Roll no already exists</h3></body></html><br>");
	

pst.close();
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