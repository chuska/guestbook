<%@page import="com.bit2015.guestbook.vo.GuestbookVo"%>
<%@page import="com.bit2015.guestbook.dao.GuestbookDao"%>
<%
	request.setCharacterEncoding("UTF-8");
	String no = request.getParameter("no");
	String password = request.getParameter("password");
	GuestbookVo vo = new GuestbookVo();
	vo.setNo(Long.parseLong(no));
	vo.setPassword(password);
	GuestbookDao dao = new GuestbookDao();
	dao.delete(vo);
	response.sendRedirect("/guestbook/index.jsp");
%>
