<%@page language="java" import="java.sql.*"%>
<% Driver DriverRecordset1 = (Driver) Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection Conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/cap",
"rxo67","Catscatscats1!");
Statement StatementRecordset1 = Conn.createStatement();
String query=request.getParameter("query");
StatementRecordset1.executeQuery("use cap;");
ResultSet Recordset1 = StatementRecordset1.executeQuery(query);
ResultSetMetaData rsmd = Recordset1.getMetaData();
int columnCount = rsmd.getColumnCount();
for (int i = 1; i <= columnCount; i++ ) {
  String name = rsmd.getColumnName(i);
  %><td> <%=name%> </td> <%
}
boolean Recordset1_isEmpty = !Recordset1.next();
boolean Recordset1_hasData = !Recordset1_isEmpty;
int Recordset1_numRows = 0;
%>
<% int Repeat1__numRows = 10 ;
 int Repeat1__index = 0 ;
 Recordset1_numRows += Repeat1__numRows;
%>
<table>
<% while ((Recordset1_hasData)&&(Repeat1__numRows-- != 0))
{
%>
<tr>
<%
for (int i = 1; i <= columnCount; i++ ) {
  String name = rsmd.getColumnName(i);
  %><td> <%= Recordset1.getObject(i) %> </td> <%
}
%>
 </tr>
<%Repeat1__index++;
Recordset1_hasData = Recordset1.next();
}
%>
</table>
<%
Recordset1.close();
Conn.close();
%>
