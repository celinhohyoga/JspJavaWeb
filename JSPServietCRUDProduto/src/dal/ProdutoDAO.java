package dal;

import java.util.ArrayList;

import model.Produto;

public class ProdutoDAO {

	private static ArrayList<Produto> produtos = new ArrayList<Produto>();
	private static ArrayList<Produto> produtosTodos = new ArrayList<Produto>();

	public static boolean cadastraProduto(Produto produto) {
		
		if(produtos.size()>0){
			int id = produtos.get(produtos.size() - 1).getId() + 1;
			produto.setId(id);
		}
		
		
		if (ProdutoDAO.buscarProduto(produto)!= null) {
			return true;
		} else {
			produtos.add(produto);
			return false;
		}

	}

	public static Produto buscarProduto(Produto produto) {
		for (int x = 0; x < produtos.size(); x++) {
			if (produto.getNome().equals(produtos.get(x).getNome())) {
				return produtos.get(x);
			}
		}
		return null;
	}
	
	public static ArrayList<Produto> listaTodosProdutos() {

		produtosTodos = new ArrayList<Produto>();

		for (int x = 0; x < produtos.size(); x++) {
			produtosTodos.add(produtos.get(x));
		}
		return produtosTodos;
	}

}
