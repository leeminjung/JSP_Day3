<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%	
	//ajax1_ok.jsp?userid=apple&userpw=1111
	String userid = request.getParameter("userid"); //apple
	String userpw = request.getParameter("userpw"); //1111
	out.println(userid);
	out.println(userpw);
	


%>