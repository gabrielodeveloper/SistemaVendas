using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

using DatabaseAccess;
using TransferObjetc;

namespace Business
{
    public class BusinnesOrder
    {
        DatabaseAccessSqlServer databaseAccessSqlServer = new DatabaseAccessSqlServer();

        public string Insert(Request request)
        {
            try
            {
                databaseAccessSqlServer.ClearParameters();
                databaseAccessSqlServer.AddParameters("IdOperacao", request.Operacao.IdOperacao);
                databaseAccessSqlServer.AddParameters("IdSituacao", request.Situacao.IdSituacao);
                databaseAccessSqlServer.AddParameters("IdPessoaEmitente", request.Emitente.IdPessoa);
                databaseAccessSqlServer.AddParameters("@IdPessoaDestinatario", request.Destinatario.IdPessoa);

                string IdRequest = databaseAccessSqlServer.ManipulationRun(CommandType.StoredProcedure, "uspPedidoInserir").ToString();

                return IdRequest;

            }catch (Exception ex)
            {
                return ex.Message;
            }
        }

        public RequestCollection ConsultByDate(DateTime dataInicial, DateTime dataFinal)
        {
            try
            {
                RequestCollection requestCollection = new RequestCollection();

                databaseAccessSqlServer.ClearParameters();
                databaseAccessSqlServer.AddParameters("@DataInicial", dataInicial);
                databaseAccessSqlServer.AddParameters("@@DataFinal", dataFinal);

                DataTable dataTable = databaseAccessSqlServer.QueryRun(CommandType.StoredProcedure, "uspPedidoConsultarPorData");


                foreach(DataRow dataRow in dataTable.Rows)
                {
                    Request request = new Request();
                    request.Operacao = new Operation();
                    request.Situacao = new Situation();
                    request.Emitente = new Person();
                    request.Destinatario = new Person();

                    request.IdPedido = Convert.ToInt32(dataRow["IdPedido"]);
                    request.DataHora = Convert.ToDateTime(dataRow["DataHora"]);
                    request.Operacao.IdOperacao = Convert.ToInt32(dataRow["IdOperacao"]);
                    request.Operacao.IdOperacao = Convert.ToInt32(dataRow["IdOperacao"]);
                    request.Operacao.Descricao = Convert.ToString(dataRow["DescOperacao"]);
                    request.Situacao.IdSituacao = Convert.ToInt32(dataRow["IdSituacao"]);
                    request.Situacao.Descricao = Convert.ToString(dataRow["DescSituacao"]);
                    request.Emitente.IdPessoa = Convert.ToInt32(dataRow["IdPessoaEmitente"]);
                    request.Emitente.Nome = Convert.ToString(dataRow["NomeEmitente"]);
                    request.Destinatario.IdPessoa = Convert.ToInt32(dataRow["IdPessoaDestinatario"]);
                    request.Destinatario.Nome = Convert.ToString(dataRow["NomeDestinatario"]);

                    requestCollection.Add(request);
                }

                return requestCollection;

            }
            catch (Exception ex)
            {
                throw new Exception("Erro ao consultar pedido por data Detalhes: " + ex.Message);
            }
        }
    }
}
