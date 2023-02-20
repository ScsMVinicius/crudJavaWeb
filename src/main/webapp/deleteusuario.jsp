<%@page import="com.javaWebCrud.dao.UsuarioDao"%>
<jsp:useBean id="u" class="com.javaWebCrud.bean.Usuario"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%

	UsuarioDao.deleteusuario(u);
	response.sendRedirect("viewUsuarios.jsp");

%>