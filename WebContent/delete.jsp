<%@page import="com.bit2015.guestbook.dao.GuestbookDao"%>
<%
	request.setCharacterEncoding("UTF-8");
	String no = request.getParameter("no");
	String password = request.getParameter("password");
	GuestbookDao dao = new GuestbookDao();
	dao.delete(no, password);
	response.sendRedirect("/guestbook/index.jsp");
%>
