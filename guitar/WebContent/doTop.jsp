<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="org.sqlite.JDBC" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
response.setContentType("text/html;charset=UTF-8");
request.setCharacterEncoding("UTF-8");

String top=request.getParameter("top");
String a =null;
String b=null;
String c =null;
String d=null;
String e=null;
String f=null;
		try {
			Class.forName("org.sqlite.JDBC");
			
		    }
		catch (ClassNotFoundException e1)
		       {
			// TODO Auto-generated catch block
			e1.printStackTrace();
				
		       } 
		
		Connection conn;
		try {
			conn = DriverManager.getConnection("jdbc:sqlite://D:/test1.db");
			Statement stat= conn.createStatement();
			String sql="select * from tbl2 where topwood='"+top+"'";
			ResultSet rs;
			rs= stat.executeQuery(sql);
			while(rs.next()){
				a=rs.getString("price");
				b=rs.getString("serialNumber");
				c=rs.getString("model");
				d=rs.getString("type");
				e=rs.getString("serialNumber");
				f=rs.getString("topwood");
		                    }
		}
			catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
			}
 System.out.println("<html>");
       
       
       out.println(b);
       out.println(a);
       out.println(c);
       out.println(d);
       out.println(e);
       out.println(f);












%>
</body>
</html>