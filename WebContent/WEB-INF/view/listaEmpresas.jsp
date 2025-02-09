<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="br.com.alura.gerenciador.modelo.Empresa"%>
<%@page import="java.util.List"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Java Standart Taglib</title>
</head>
<body>
	<c:import url="logout-parcial.jsp" />

	Usuario Logado: ${usuarioLogado.login }
	
	<br>
	<br>
	<br>

	<c:if test="${not empty empresa}">	
		Empresa ${ empresa }  cadastrada com sucesso!		
	</c:if>
	
	Lista de empresas:
	<br />
	<ul>
		<c:forEach items="${empresas}" var="empresa">			
			<li>
				${empresa.nome} - 
				<fmt:formatDate pattern="dd/MM/yyyy" value="${empresa.dataAbertura}"/>
				<a href="/gerenciador/entrada?acao=MostraEmpresa&id=${empresa.id}">edita</a>
				<a href="/gerenciador/entrada?acao=RemoveEmpresa&id=${empresa.id}">remove</a>
			</li>
		</c:forEach>
	</ul>
</body>
</html>