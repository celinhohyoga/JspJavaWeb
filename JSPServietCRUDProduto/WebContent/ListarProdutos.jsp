<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<%@ page import="dal.ProdutoDAO" %>
<%@ page import="model.Produto" %>
<%@ page import="java.util.ArrayList" %>

<%
	ArrayList<Produto> produtosTodos = ProdutoDAO.listaTodosProdutos();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link type="text/css" rel="stylesheet" href="bootstrap.min.css"/>
<title>Listar Produto</title>
</head>
<body>
	<div>
		<fieldset>
			<legend>Listar Produtos</legend>
				<table class="table-hover table-striped"></table>
					<tr>
						<th>Id</th>
						<th>Nome</th>
						<th>Preço</th>
						<th>Quantidade</th>
						<th>Categoria</th>
					</tr>	
			<% 
				for(Produto produtoCadastrado : produtosTodos) {
			%>
			<tr>
				<td> <%= produtoCadastrado.getId() %> </td>
				<td> <%= produtoCadastrado.getNome() %> </td>
				<td> <%= produtoCadastrado.getPreco() %> </td>
				<td> <%= produtoCadastrado.getQuantidade() %> </td>
				<td> <%= produtoCadastrado.getCategoria() %> </td>
			</tr>
			<% 
				}
			%>
		</fieldset>
	</div>
</body>
</html>