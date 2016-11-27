<%@page language="java" import="java.sql.*"%>
<% Driver DriverRecordset1 = (Driver) Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection Conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/cwrutix",
"root","Catscatscats1!");
Statement StatementRecordset1 = Conn.createStatement();
String caseid=request.getParameter("caseid");
String pword=request.getParameter("pword");
StatementRecordset1.executeQuery("use cwrutix;");
ResultSet Recordset1 = StatementRecordset1.executeQuery("Select * From USER WHERE username = '" + caseid + "' and password = '" + pword +"';");
boolean Recordset1_isEmpty = !Recordset1.next();
boolean Recordset1_hasData = !Recordset1_isEmpty; 
int Recordset1_numRows = 0;
 int Repeat1__numRows = 10 ;        
 int Repeat1__index = 0 ;       
 Recordset1_numRows += Repeat1__numRows; 
 if(Recordset1_hasData == true){
    String redirectURL = "http://localhost:8080/home.html";
    response.sendRedirect(redirectURL);
 }
 else{
	String redirectURL = "http://localhost:8080/";
    response.sendRedirect(redirectURL);
 }
 Recordset1.close(); 
 Conn.close(); 
 %>