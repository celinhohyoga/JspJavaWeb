<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>


<%-- Comentário --%>
 	<% 
 		String parametro = request.getParameter("mensagem"); 
 		String mensagem = "";
 		String classe = "";
 		if(parametro != null){
	 		if(parametro.equals("4")){
	 			mensagem = "ERRO!";
	 			classe = "text-warning";
	 		}
	 		else{
	 			if(parametro.equals("1")){
		 			mensagem = "Preço ou quantidade em formato incorreto!";
		 			classe = "text-warning";
		 		}else{
		 			if(parametro.equals("2")){
		 				mensagem = "Produto cadastrado com sucesso!";
		 				classe = "text-sucess";
		 			}
		 			else{
		 				mensagem = "Produto já cadastrado!";
		 				classe = "text-danger";
		 			}
		 		}	
	 		}
 	
 		}
 	%>
 	

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Cadastrar Produto</title>
  <script src="jquery-3.2.1.min.js"></script>
  <script src="MeuJquery.js"></script>
  <link type="text/css" rel="stylesheet" href="bootstrap.min.css"/>
  
</head>

<body>
  
  <nav class="navbar navbar-default">
	<div class="container-fluid">
		<div class="navbar=header">
			<a class="navbar-brand" href="#" >Minha Loja</a>
		</div>
		
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
     	 	<ul class="nav navbar-nav">
       		<li class="active"><a href="#">Cadastrar Produto</a></li>
		</div>
	</div>
  </nav>
  
  <div class="container">
    <form class="form-horizontal" action="ProdutoServlet" method="get">
      <fieldset>
        <legend>Cadastrar Produto</legend>
      
        <div class="form-group">
          <label for="inputEmail" class="col-lg-2 control-label">Nome</label>
          <div class="col-lg-10">
            <input type="text" class="form-control" id="inputEmail" placeholder="Nome do Produto" name="txtNome">
          </div>
        </div>
        
        <div class="form-group">
          <label for="inputEmail" class="col-lg-2 control-label">Preço</label>
          <div class="col-lg-10">
            <input type="text" class="form-control" id="inputEmail" placeholder="Preço do Produto" name="txtPreco">
          </div>
        </div>
        
        <div class="form-group">
          <label for="inputEmail" class="col-lg-2 control-label">Categoria</label>
          <div class="col-lg-10">
            <input type="text" class="form-control" id="inputEmail" placeholder="Categoria do Produto" name="txtCategoria">
          </div>
        </div>
        
        <div class="form-group">
          <label for="inputEmail" class="col-lg-2 control-label">Quantidade</label>
          <div class="col-lg-10">
            <input type="text" class="form-control" id="inputEmail" placeholder="Quantidade do Produto"  name="txtQuantidade">
          </div>
        </div>
        
        <div class="form-group">
          <div class="col-lg-10 col-lg-offset-2">
            <button type="submit" class="btn btn-primary">Cadastrar</button>
          </div>
        </div>
        
        <div class="form-group">
        	<label class="classe">
        		<%=mensagem %>
        	</label>
        </div>
        
      
				
      </fieldset>
    </form>
  </div> 

</body>

</html>