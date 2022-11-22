using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using DatabaseAccess.Properties;

namespace DatabaseAccess
{
      public class DatabaseAccessSqlServer
    {
        private SqlConnection CreateConnection()
        {
            return new SqlConnection(Settings.Default.stringConnection);
        }

        private SqlParameterCollection sqlParameterCollection = new SqlCommand().Parameters;

        public void ClearParameters()
        {
            sqlParameterCollection.Clear();
        }

        public void AddParameters(string parameterName, object parameterValue)
        {
            sqlParameterCollection.Add(new SqlParameter(parameterName, parameterValue));
        }

        public object ManipulationRun(CommandType commandType, string storangeProcedureNameOrSqlText)
        {
            try
            {
                //Create Connection
                 SqlConnection sqlConnection = CreateConnection();
                //Open connection
                sqlConnection.Open();

                //Send command to database
                SqlCommand sqlCommand = sqlConnection.CreateCommand();

                sqlCommand.CommandType = commandType;
                sqlCommand.CommandText = storangeProcedureNameOrSqlText;
                sqlCommand.CommandTimeout = 7200;

                foreach(SqlParameter sqlParameter in sqlParameterCollection)
                {
                    sqlCommand.Parameters.Add(new SqlParameter(sqlParameter.ParameterName, sqlParameter.Value));
                }

                return sqlCommand.ExecuteScalar();

            }catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }


        }

        public DataTable QueryRun(CommandType commandType, string storangeProcedureNameOrSqlText)
        {
            try
            {
                SqlConnection sqlConnection = CreateConnection();
                sqlConnection.Open();

                SqlCommand sqlCommand = sqlConnection.CreateCommand();
                sqlCommand.CommandType = commandType;
                sqlCommand.CommandText = storangeProcedureNameOrSqlText;
                sqlCommand.CommandTimeout = 7200;

                foreach(SqlParameter sqlParameter in sqlParameterCollection)
                {
                    sqlCommand.Parameters.Add(new SqlParameter(sqlParameter.ParameterName, sqlParameter.Value));
                }

                SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sqlCommand);
                DataTable dataTable = new DataTable();
                sqlDataAdapter.Fill(dataTable);

                return dataTable;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }
    }
}
