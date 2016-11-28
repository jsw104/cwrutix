<%@page language="java"%>
<%
String caseid=request.getParameter("caseid");
String password=request.getParameter("password");
String query = "Select * From USER WHERE username = '" + caseid + "' and password = '" + password +"';";
//call execute query with this string, and then process
%>
