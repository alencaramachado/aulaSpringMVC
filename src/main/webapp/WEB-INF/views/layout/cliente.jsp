<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/bootstrap.min.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/style.css'/>" />


</head>
<body>


	<div id="main" class="container-fluid">

		<div id="top" class="row">

			<form action="adicionarClientes" method="post">
				<!-- area de campos do form -->
				<div class="row">
					<div class="form-group col-md-4">
						<label for="nome">Nome</label> <input type="text"
							class="form-control" id="nome" name="nome">
					</div>

					<div class="form-group col-md-4">
						<label for="ruaNroComp">Rua</label> <input type="text"
							class="form-control" id="ruaNroComp" name="ruaNroComp">
					</div>

					<div class="form-group col-md-4">
						<label for="cidade">Cidade</label> <input type="text"
							class="form-control" id="cidade" name="cidade">
					</div>
				</div>
				<hr />
				<div id="actions" class="row">
					<div class="col-md-12">
						<button type="submit" class="btn btn-primary">Adicionar</button>
						<a href="index.html" class="btn btn-default">Cancelar</a>
					</div>
				</div>
			</form>


		</div>
		<!-- fim div top -->
		<hr />
		<div id="list" class="row">

			<div class="table-responsive col-md-12">
				<table class="table table-striped" cellspacing="0" cellpadding="0">
					<thead>
						<tr>
							<th>ID</th>
							<th>Nome</th>
							<th>Rua</th>
							<th>Bairro</th>
							<th class="actions">Ações</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${clientes}" var="c">
							<tr>
								<td>${c.codigo}</td>
								<td>${c.nome}</td>
								<td>${c.ruaNroComp}</td>
								<td>${c.bairro}</td>
								<td class="actions"><a class="btn btn-success btn-xs"
									href="view.html">Visualizar</a> <a
									class="btn btn-warning btn-xs" href="edit.html">Editar</a> <a
									class="btn btn-danger btn-xs" href="#" data-toggle="modal"
									data-target="#delete-modal">Excluir</a></td>
							</tr>
						</c:forEach>

					</tbody>
				</table>

			</div>
		</div>
		<!-- /#list -->
		<div id="bottom" class="row">
			<div class="col-md-12">

				<ul class="pagination">
					<li class="disabled"><a>&lt; Anterior</a></li>
					<li class="disabled"><a>1</a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li class="next"><a href="#" rel="next">Próximo &gt;</a></li>
				</ul>
				<!-- /.pagination -->

			</div>
		</div>
		<!-- /#bottom -->
	</div>
	<!-- fim div main -->



	<script type="text/javascript"
		src="<c:url value='/resources/js/jquery.min.js'/>"></script>
	<script type="text/javascript"
		src="<c:url value='/resources/js/bootstrap.min.js'/>"></script>

</body>
</html>