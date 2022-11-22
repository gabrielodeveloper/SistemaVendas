using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using DatabaseAccess;
using TransferObjetc;
using System.Data;


namespace Business
{
    public class RequestItemBusiness
    {

        DatabaseAccessSqlServer databaseAccessSqlServer = new DatabaseAccessSqlServer();

        public string InsertRequestItem(RequestItem requestItem)
        {
            try
            {
                databaseAccessSqlServer.ClearParameters();
                databaseAccessSqlServer.AddParameters("IdPedido", requestItem.Pedido.IdPedido);
                databaseAccessSqlServer.AddParameters("IdProduto", requestItem.Produto.IdProduto);
                databaseAccessSqlServer.AddParameters("Quantidade", requestItem.Quantidade);
                databaseAccessSqlServer.AddParameters("ValorUnitario", requestItem.ValorUnitario);
                databaseAccessSqlServer.AddParameters("PercentualDesconto", requestItem.PercentualDesconto);
                databaseAccessSqlServer.AddParameters("ValorDesconto", requestItem.ValorDesconto);
                databaseAccessSqlServer.AddParameters("ValorTotal", requestItem.ValorTotal);

                string idProduto = databaseAccessSqlServer.ManipulationRun(CommandType.StoredProcedure, "uspPedidoItemInserir").ToString();

                return idProduto;
            }
            catch (Exception ex)
            {
                return ex.Message;
            }


        }

        public RequestItemCollection QueryRequestItem(int IdPedidod)
        {
            try
            {
                RequestItemCollection requestItemCollection = new RequestItemCollection();

                databaseAccessSqlServer.ClearParameters();
                databaseAccessSqlServer.AddParameters("IdPedido", IdPedidod);

                DataTable dataTable = databaseAccessSqlServer.QueryRun(CommandType.StoredProcedure, "uspPedidoItemConsulta");

                foreach(DataRow dataRow in dataTable.Rows)
                {
                    RequestItem requestItem = new RequestItem();

                    requestItem.Pedido = new Request();
                    requestItem.Produto = new Product();

                    requestItem.Pedido.IdPedido = Convert.ToInt32(dataRow["IdPedido"]);
                    requestItem.Produto.IdProduto = Convert.ToInt32(dataRow["IdProduto"]);
                    requestItem.Produto.Descricao = Convert.ToString(dataRow["DescProduto"]);
                    requestItem.Quantidade = Convert.ToInt32(dataRow["Quantidade"]);
                    requestItem.ValorUnitario = Convert.ToDecimal(dataRow["ValorUnitario"]);
                    requestItem.PercentualDesconto = Convert.ToDecimal(dataRow["PercentualDesconto"]);
                    requestItem.ValorTotal = Convert.ToDecimal(dataRow["ValorTotal"]);



                    requestItemCollection.Add(requestItem);


                }

                return requestItemCollection;
            }
            catch (Exception ex)
            {
                throw new Exception("Erro ao consultar item do pedido. Detalhes: " + ex.Message);
            }

        }
    }
}
