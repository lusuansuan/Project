using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;
using System.Data;
using System.Configuration;

namespace Common
{
   public static class MySqlHelper
    {


        /// <summary>
        /// 获取配置文件中的信息
        /// </summary>
       protected static string connectionString = ConfigurationManager.AppSettings["Mysql_ConnectionString"].ToString();

        #region 构建 SqlCommand 对象(用来返回一个结果集，而不是一个整数值)
        /// <summary>
        /// 构建 SqlCommand 对象(用来返回一个结果集，而不是一个整数值)
        /// </summary>
        /// <param name="connection">数据库连接</param>
        /// <param name="storedProcName">存储过程名</param>
        /// <param name="parameters">存储过程参数</param>
        /// <returns>SqlCommand</returns>
        private static MySqlCommand BuildQueryCommand(MySqlConnection connection, string storedProcName, IDataParameter[] parameters)
        {
            MySqlCommand command = new MySqlCommand(storedProcName, connection);
            command.CommandTimeout = 600;
            command.CommandType = CommandType.StoredProcedure;
            if (parameters != null)
            {
                foreach (MySqlParameter parameter in parameters)
                {
                    command.Parameters.Add(parameter);
                }
            }
            return command;
        }
        #endregion

        #region 执行sql语句

        #region 获取一个datatable
        /// <summary>
        /// 获取一个datatable
        /// </summary>
        /// <param name="strsql">SQL语句</param>
        /// <returns></returns>
        public static DataTable GetDataTable(string strsql)
        {
            //实例化Mysql连接类
            using (MySqlConnection con = new MySqlConnection(connectionString))
            {
                DataSet ds = new DataSet();
                try
                {
                    con.Open();
                    //实例化Mysql操作类
                    MySqlCommand com = new MySqlCommand(strsql, con);
                    //实例化Mysqlqiao类
                    MySqlDataAdapter da = new MySqlDataAdapter(com);
                    //将数据填充到dataset
                    da.Fill(ds);
                    return ds.Tables[0];
                }
                catch (Exception ex)
                {
                    WriteLogHelper wl = new WriteLogHelper(ex, strsql);
                    wl.StartWriteLog();
                    return null;
                }
                finally
                {
                    con.Close();
                }
            }

        } 
        #endregion

        #region 获取一个dataset
        /// <summary>
        /// 获取一个dataset
        /// </summary>
        /// <param name="strsql">SQL语句</param>
        /// <returns></returns>
        public static DataSet GetDataSet(string strsql)
        {

            //实例化Mysql连接类
            using (MySqlConnection con = new MySqlConnection(connectionString))
            {
                DataSet ds = new DataSet();
                try
                {
                    con.Open();
                    //实例化Mysql操作类
                    MySqlCommand com = new MySqlCommand(strsql, con);
                    //实例化Mysqlqiao类
                    MySqlDataAdapter da = new MySqlDataAdapter(com);
                    //将数据填充到dataset
                    da.Fill(ds);
                    return ds;
                }
                catch (Exception ex)
                {
                    WriteLogHelper wl = new WriteLogHelper(ex, strsql);
                    wl.StartWriteLog();
                    return null;
                }
                finally
                {
                    con.Close();
                }
            }
        } 
        #endregion

        #region 添加/更新/删除-返回影响行数
        /// <summary>
        /// 添加/更新/删除
        /// </summary>
        /// <param name="strsql">SQL语句</param>
        /// <returns>返回影响行数</returns>
        public static int ExcuteSQL(string strsql)
        {
            //实例化Mysql连接类
            using (MySqlConnection con = new MySqlConnection(connectionString))
            {
                DataSet ds = new DataSet();
                try
                {
                    con.Open();
                    //实例化Mysql操作类
                    MySqlCommand com = new MySqlCommand(strsql, con);
                    return com.ExecuteNonQuery();
                }
                catch (Exception ex)
                {
                    WriteLogHelper wl = new WriteLogHelper(ex, strsql);
                    wl.StartWriteLog();
                    return 0;
                }
                finally
                {
                    con.Close();
                }
            }
        } 
        #endregion

        #region 添加/更新/删除-返回bool值
        /// <summary>
        /// 添加/更新/删除
        /// </summary>
        /// <param name="sql">SQL语句</param>
        /// <returns>返回bool值</returns>
        public static bool _ExcuteSQL(string strsql)
        {
            //实例化Mysql连接类
            using (MySqlConnection con = new MySqlConnection(connectionString))
            {
                DataSet ds = new DataSet();
                try
                {
                    con.Open();
                    //实例化Mysql操作类
                    MySqlCommand com = new MySqlCommand(strsql, con);
                    if (com.ExecuteNonQuery() > -1)
                    {
                        return true;
                    }
                    return false;
                }
                catch (Exception ex)
                {
                    WriteLogHelper wl = new WriteLogHelper(ex, strsql);
                    wl.StartWriteLog();
                    return false;
                }
                finally
                {
                    con.Close();
                }
            }
        } 
        #endregion

        #endregion

        #region 执行存储过程
        /// <summary>
        /// 执行存储过程,返回结果集合DataSet
        /// </summary>
        /// <param name="storedProcName">存储过程名</param>
        /// <param name="parameters">存储过程参数</param>
        /// <param name="tableName">DataSet结果中的表名</param>
        /// <returns>DataSet</returns>
        public static DataSet RunProcedure(string storedProcName, IDataParameter[] parameters, string tableName)
        {

            using (MySqlConnection connection = new MySqlConnection(connectionString))
            {
                try
                {
                    DataSet dataSet = new DataSet();
                    connection.Open();
                    MySqlDataAdapter sqlDA = new MySqlDataAdapter();
                    sqlDA.SelectCommand = BuildQueryCommand(connection, storedProcName, parameters);
                    sqlDA.Fill(dataSet, tableName);
                    connection.Close();
                    return dataSet;
                }
                catch (Exception ex)
                {
                    StringBuilder sb = new StringBuilder();
                    sb.Append("call ").Append(storedProcName).Append("(");
                    if (parameters != null)
                    {
                        foreach (IDataParameter parameter in parameters)
                        {
                            if (parameter != null)
                            {
                                if (((parameter.Direction == ParameterDirection.InputOutput) || (parameter.Direction == ParameterDirection.Input)) && (parameter.Value == null))
                                {
                                    parameter.Value = DBNull.Value;
                                }
                                sb.Append(parameter.ParameterName).Append("=>").Append(parameter.Value).Append("  ");
                            }
                        }
                    }
                    sb.Append(")");
                    WriteLogHelper wl = new WriteLogHelper(ex, sb.ToString());
                    wl.StartWriteLog();
                    return null;

                }
                finally
                {
                    connection.Close();
                }

            }
        }
        /// <summary>
        /// 执行存储过程，返回影响的行数		
        /// </summary>
        /// <param name="storedProcName">存储过程名</param>
        /// <param name="parameters">存储过程参数</param>
        /// <param name="rowsAffected">影响的行数</param>
        /// <returns></returns>
        public static bool RunProcedure(string storedProcName, IDataParameter[] parameters, out int rowsAffected)
        {
            rowsAffected = -1;//默认-1 添加失败
            using (MySqlConnection connection = new MySqlConnection(connectionString))
            {
                try
                {
                    connection.Open();
                    MySqlCommand command = BuildQueryCommand(connection, storedProcName, parameters);
                    rowsAffected = command.ExecuteNonQuery();
                    command.Parameters.Clear();
                    return rowsAffected > -1 ? true : false;
                }
                catch (Exception ex)
                {
                    StringBuilder sb = new StringBuilder();
                    sb.Append("call ").Append(storedProcName).Append("(");
                    if (parameters != null)
                    {
                        foreach (IDataParameter parameter in parameters)
                        {
                            if (parameter != null)
                            {
                                if (((parameter.Direction == ParameterDirection.InputOutput) || (parameter.Direction == ParameterDirection.Input)) && (parameter.Value == null))
                                {
                                    parameter.Value = DBNull.Value;
                                }
                                sb.Append(parameter.ParameterName).Append("=>").Append(parameter.Value).Append("  ");
                            }
                        }
                    }
                    sb.Append(")");
                    WriteLogHelper wl = new WriteLogHelper(ex, sb.ToString());
                    wl.StartWriteLog();
                    return false;
                }
                finally
                {
                    connection.Close();
                }
            }
        }

        #endregion

    }
}
