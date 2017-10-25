package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dal.ProdutoDAO;
import model.Produto;


@WebServlet("/ProdutoServlet")
public class ProdutoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	private static Produto produto = new Produto();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		produto = new Produto();
		
		try {
			produto.setNome(request.getParameter("txtNome"));
			produto.setPreco(Double.parseDouble(request.getParameter("txtPreco")));
			produto.setCategoria(request.getParameter("txtCategoria"));
			produto.setQuantidade(Integer.parseInt(request.getParameter("txtQuantidade")));
			if (produto.getNome().equals("") || produto.getCategoria().equals("")) {
				response.sendRedirect("CadastrarProduto.jsp?mensagem=4");
			} else {
				if (ProdutoDAO.cadastraProduto(produto) == true) {
					response.sendRedirect("CadastrarProduto.jsp?mensagem=3");
				} else {
					response.sendRedirect("CadastrarProduto.jsp?mensagem=2");
				}
			}
		} catch (NumberFormatException e) {
			response.sendRedirect("CadastrarProduto.jsp?mensagem=1");
		}
		
	}
	
	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
