<%@page import="com.javaWebCrud.dao.UsuarioDao"%>
<jsp:useBean id="u" class="com.javaWebCrud.bean.Usuario"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>



<%
int i = UsuarioDao.updateUsuario(u);
response.sendRedirect("viewUsuarios.jsp");
%>

