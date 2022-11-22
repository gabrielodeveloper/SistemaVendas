using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

using TransferObjetc;
using DatabaseAccess;

namespace Business
{
    public class BranchBusiness
    {
        DatabaseAccessSqlServer databaseAccessSqlServer = new DatabaseAccessSqlServer();

        public BranchCollection QueryForCode(int IdPessoaFilial)
        {
            try
            {
                BranchCollection branchCollection = new BranchCollection();

                databaseAccessSqlServer.ClearParameters();
                databaseAccessSqlServer.AddParameters("@IdPessoaFilial", IdPessoaFilial);

                DataTable dataTable = databaseAccessSqlServer.QueryRun(CommandType.StoredProcedure, "uspFilialConsultarPorCodigo");

                foreach (DataRow dataRow in dataTable.Rows)
                {
                    Branch branch = new Branch();
                    branch.Person = new Person();
                    branch.Person.PersonType = new PersonType();

                    branch.Person.IdPessoa = Convert.ToInt32(dataRow["IdPessoaFilial"]);
                    branch.Person.Nome = Convert.ToString(dataRow["IdPessoaFilial"]);
                    branch.Person.CpfCnpj = Convert.ToString(dataRow["IdPessoaFilial"]);
                    branch.Person.PersonType.IdPessoaTipo = Convert.ToInt32(dataRow["IdPessoaFilial"]);
                    branch.Person.PersonType.Descricao = Convert.ToString(dataRow["IdPessoaFilial"]);

                    branchCollection.Add(branch);
                }

                return branchCollection;
            }catch (Exception ex)
            {
                throw new Exception("Erro ao consultar filial pelo código Detalhes: " + ex.Message);
            }
        }

        public BranchCollection QueryForName(string name)
        {
            try
            {
                BranchCollection branchCollection = new BranchCollection();

                databaseAccessSqlServer.ClearParameters();
                databaseAccessSqlServer.AddParameters("@Nome", name);

                DataTable dataTable = databaseAccessSqlServer.QueryRun(CommandType.StoredProcedure, "uspFilialConsultarPorNome");

                foreach (DataRow dataRow in dataTable.Rows)
                {
                    Branch branch = new Branch();
                    branch.Person = new Person();
                    branch.Person.PersonType = new PersonType();

                    branch.Person.IdPessoa = Convert.ToInt32(dataRow["IdPessoaFilial"]);
                    branch.Person.Nome = Convert.ToString(dataRow["IdPessoaFilial"]);
                    branch.Person.CpfCnpj = Convert.ToString(dataRow["IdPessoaFilial"]);
                    branch.Person.PersonType.IdPessoaTipo = Convert.ToInt32(dataRow["IdPessoaFilial"]);
                    branch.Person.PersonType.Descricao = Convert.ToString(dataRow["IdPessoaFilial"]);

                    branchCollection.Add(branch);
                }

                return branchCollection;
            }
            catch (Exception ex)
            {
                throw new Exception("Erro ao consultar filial pelo código Detalhes: " + ex.Message);
            }
        }
    }
}
