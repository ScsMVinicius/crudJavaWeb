<%@page import="com.javaWebCrud.dao.UsuarioDao"%>
<jsp:useBean id="u" class="com.javaWebCrud.bean.Usuario" ></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
	int i = UsuarioDao.salvarUsuario(u);

	if(i > 0){
		response.sendRedirect("adicionarUsuario-succes.jsp");
	}else{
		response.sendRedirect("adicionarUsuario-error.jsp");
	}
%>