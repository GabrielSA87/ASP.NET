using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

namespace SistemaWebControlerEstoque
{
    public class ProdutoBLL
    {
        public string Nome { get; set; }
        public string Descricao { get; set; }
        public decimal Preco_Custo { get; set; }
        public decimal Preco_Venda { get; set; }
        public double Quantidade { get; set; }
        public string Unidade_Medida { get; set; }
        public int Categoria_Id { get; set; }

        DAL objDAL = new DAL();

        public DataTable RetCategoriasProdutos()
        {
            return objDAL.RetDataTable("select * from categoria");
        }

        public DataTable RetListarProdutos()
        {
            return objDAL.RetDataTable("select * from produto");
        }

        public DataTable CarregarProdutoPorId(string id)
        {
            return objDAL.RetDataTable("select * from produto where id = " + id);
        }

        public void InserirProduto()
        {
            string sql = "insert into produto(nome, descricao, preco_custo, preco_venda, quantidade, unidade_medida, categoria_id) " +
                         "values('{0}','{1}','{2}','{3}','{4}','{5}','{6}')";

            sql = String.Format(sql, Nome, Descricao, Preco_Custo, Preco_Venda, Quantidade, Unidade_Medida, Categoria_Id);

            objDAL.ExecutarComandoSQL(sql);
        }

        public void AlterarProduto(string id)
        {
            string sql = "update produto set nome='{0}',descricao='{1}',preco_custo='{2}',preco_venda='{3}',quantidade='{4}'," +
                         "unidade_medida='{5}',categoria_id='{6}' where id='{7}'";

            sql = String.Format(sql, Nome, Descricao, Preco_Custo, Preco_Venda, Quantidade, Unidade_Medida, Categoria_Id, id);

            objDAL.ExecutarComandoSQL(sql);
        }

        public void ExcluirProduto(string id)
        {
            string sql = String.Format("delete from produto where id='{0}'", id);

            objDAL.ExecutarComandoSQL(sql);
        }
    }
}
