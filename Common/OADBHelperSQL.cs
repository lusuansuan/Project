/************************************************************************************
 *      版  本：Copyright (C) 2015 厦门太昊科技		
 *      
 *      文件名:																
 *				OAOADBHelperSQL.cs	                                            	
 *      描  述:															
 *				 定义一些方法，实现对数据访问，跟数据库交互.        												
 *      作  者:																
 *				阿彩													
 *				QQ:123456										
 *      时  间:														
 *				2015年4月27日													
 *      历  史:	
 *             2015年4月27日		
 *             第一次修改
 ***********************************************************************************/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Collections;
using System.Web.Script.Serialization;
using System.Reflection;

namespace Common
{
    /// <summary>
    /// 数据访问基础类(基于SQLServer)
    /// 用户可以修改满足自己项目的需要。
    /// </summary>
    public abstract class OADBHelperSQL
    {
        /// <summary>
        /// 获取配置文件中的信息
        /// </summary>
        protected static string connectionString = ConfigurationManager.AppSettings["DB_ConnectionString"].ToString();

        #region 构建 SqlCommand 对象(用来返回一个结果集，而不是一个整数值)
        /// <summary>
        /// 构建 SqlCommand 对象(用来返回一个结果集，而不是一个整数值)
        /// </summary>
        /// <param name="connection">数据库连接</param>
        /// <param name="storedProcName">存储过程名</param>
        /// <param name="parameters">存储过程参数</param>
        /// <returns>SqlCommand</returns>
        private static SqlCommand BuildQueryCommand(SqlConnection connection, string storedProcName, IDataParameter[] parameters)
        {
            SqlCommand command = new SqlCommand(storedProcName, connection);
            command.CommandTimeout = 600;
            command.CommandType = CommandType.StoredProcedure;
            if (parameters != null)
            {
                foreach (SqlParameter parameter in parameters)
                {
                    command.Parameters.Add(parameter);
                }
            }
            return command;
        }
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

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    DataSet dataSet = new DataSet();
                    connection.Open();

                    SqlDataAdapter sqlDA = new SqlDataAdapter();
                    sqlDA.SelectCommand = BuildQueryCommand(connection, storedProcName, parameters);

                    sqlDA.Fill(dataSet, tableName);
                    connection.Close();
                    return dataSet;
                }
                catch (Exception ex)
                {
                    string stringError = ex.ToString();
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
        public static int RunProcedure(string storedProcName, IDataParameter[] parameters, out int rowsAffected)
        {
            rowsAffected = -1;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    connection.Open();
                    SqlCommand command = BuildQueryCommand(connection, storedProcName, parameters);
                    rowsAffected = command.ExecuteNonQuery();
                    command.Parameters.Clear();
                    connection.Close();
                }
                catch (Exception ex)
                {
                    string stringError = ex.ToString();
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
                }
                finally
                {
                    connection.Close();
                }
                return rowsAffected;
            }
        }

        #endregion

        /// <summary>
        /// 获取一个表
        /// </summary>
        /// <param name="stringData">SQL语句</param>
        /// <returns></returns>
        public static DataTable GetDataTable(string stringData)
        {

            SqlConnection con = new SqlConnection(connectionString);
            DataSet ds = new DataSet();
            try
            {

                con.Open();
                SqlCommand com = new SqlCommand(stringData, con);

                SqlDataAdapter da = new SqlDataAdapter(com);

                da.Fill(ds);
                return ds.Tables[0];
            }
            catch (Exception ex)
            {
                string stringError = ex.ToString();
                WriteLogHelper wl = new WriteLogHelper(ex, stringData);
                wl.StartWriteLog();
                return null;
            }
            finally
            {
                con.Close();
            }
        }
        /// <summary>
        /// 获取一个结果集合
        /// </summary>
        /// <param name="stringData">SQL语句</param>
        /// <returns></returns>
        public static DataSet GetDataSet(string stringData)
        {

            SqlConnection con = new SqlConnection(connectionString);
            DataSet ds = new DataSet();
            try
            {

                con.Open();
                SqlCommand com = new SqlCommand(stringData, con);

                SqlDataAdapter da = new SqlDataAdapter(com);

                da.Fill(ds);
                return ds;
            }
            catch (Exception ex)
            {
                string stringError = ex.ToString();
                WriteLogHelper wl = new WriteLogHelper(ex, stringData);
                wl.StartWriteLog();
                return null;
            }
            finally
            {
                con.Close();
            }
        }

        /// <summary>
        /// 更新或者删除
        /// </summary>
        /// <param name="stringData">SQL语句</param>
        /// <returns></returns>
        public static int UpdateDelele(string stringData)
        {
            int i = 0;
            SqlConnection con = new SqlConnection(connectionString);
            DataSet ds = new DataSet();
            try
            {

                con.Open();
                SqlCommand com = new SqlCommand(stringData, con);

                SqlDataAdapter da = new SqlDataAdapter(com);

                da.Fill(ds);
                i = 1;

            }
            catch (Exception ex)
            {
                string stringError = ex.ToString();
                i = 0;
                WriteLogHelper wl = new WriteLogHelper(ex, stringData);
                wl.StartWriteLog();
            }
            finally
            {
                con.Close();
            }
            return i;
        }
        /// <summary>
        /// 执行SQL语句
        /// </summary>
        /// <param name="sql"></param>
        public static bool ExcuteSQL(string sql)
        {
            SqlConnection con = new SqlConnection(connectionString);
            DataSet ds = new DataSet();
            try
            {
                con.Open();
                SqlCommand com = new SqlCommand(sql, con);
                com.ExecuteNonQuery();
                return true;

            }
            catch (Exception ex)
            {
                string stringError = ex.ToString();
                WriteLogHelper wl = new WriteLogHelper(ex, sql);
                wl.StartWriteLog();
                return false;

            }
            finally
            {
                con.Close();
            }
        }


        /// <summary>
        /// 分页table 
        /// </summary>
        /// <param name="sql"></param>
        /// <param name="startRecord"></param>
        /// <param name="recordNum"></param>
        /// <param name="srcTable"></param>
        /// <returns></returns>
        public static DataTable GetDataTable(String sql, Int32 currentPage, Int32 recordNum, String srcTable)
        {
            SqlConnection con = new SqlConnection(connectionString);
            DataSet ds = new DataSet();
            try
            {
                SqlDataAdapter da = new SqlDataAdapter(sql, con);
                da.Fill(ds, (currentPage - 1) * recordNum, recordNum, srcTable);
                return ds.Tables[0];
            }
            catch (Exception ex)
            {
                WriteLogHelper wl = new WriteLogHelper(ex, sql);
                wl.StartWriteLog();
                throw ex;
            }
            finally
            {
                con.Close();
            }
        }
        #region 执行多条SQL语句，实现数据库事务。
        /// <summary>
        /// 执行多条SQL语句，实现数据库事务。
        /// </summary>
        /// <param name="SQLStringList">多条SQL语句</param>
        /// 
        public static void ExecuteSqlTran(ArrayList SQLStringList)
        {
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                if (con.State != ConnectionState.Open)
                {
                    con.Open();
                }
                SqlCommand command = new SqlCommand();
                command.Connection = con;
                SqlTransaction tx = con.BeginTransaction();
                command.Transaction = tx;
                try
                {
                    for (int n = 0; n < SQLStringList.Count; n++)
                    {
                        string strsql = SQLStringList[n].ToString();
                        if (strsql.Trim().Length > 1)
                        {
                            command.CommandText = strsql;
                            command.ExecuteNonQuery();
                        }
                    }
                    tx.Commit();
                }
                catch (Exception ex)
                {
                    string stringError = ex.ToString();
                    WriteLogHelper wl = new WriteLogHelper(ex, SQLStringList.ToString());
                    wl.StartWriteLog();
                    tx.Rollback();

                }
                finally
                {
                    command.Dispose();
                    con.Close();
                }
            }
        }

        #endregion
        #region  执行SQL语句，返回影响的记录数

        /// <summary>
        /// 执行SQL语句，返回影响的记录数
        /// </summary>
        /// <param name="SQLString">SQL语句</param>
        /// <returns>影响的记录数</returns>
        public static int ExecuteSql(string SQLString)
        {
            SqlConnection con = null;
            SqlCommand command = null;
            try
            {
                using (con = new SqlConnection(connectionString))
                {
                    using (command = new SqlCommand(SQLString, con))
                    {
                        if (con.State != ConnectionState.Open)
                        {
                            con.Open();
                        }
                        int rows = command.ExecuteNonQuery();
                        return rows;
                    }
                }
            }

            catch (Exception ex)
            {
                string stringError = ex.ToString();
                WriteLogHelper wl = new WriteLogHelper(ex, SQLString);
                wl.StartWriteLog();
                return -1;
            }
            finally
            {
                command.Dispose();
                con.Close();
            }
        }

        #endregion

        /// <summary>  
        /// 执行SQL语句，返回影响的记录数  
        /// </summary>  
        /// <param name="SQLString">SQL语句</param>  
        /// <returns>影响的记录数</returns>  
        public static int ExecuteSql(string SQLString, params SqlParameter[] cmdParms)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    try
                    {
                        PrepareCommand(cmd, connection, null, SQLString, cmdParms);
                        int rows = cmd.ExecuteNonQuery();
                        cmd.Parameters.Clear();
                        return rows;
                    }
                    catch (System.Data.SqlClient.SqlException ex)
                    {
                        StringBuilder sb = new StringBuilder();
                        sb.Append("call ").Append(SQLString).Append("(");
                        if (cmdParms != null)
                        {
                            foreach (IDataParameter parameter in cmdParms)
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
                        throw ex;
                    }
                }
            }
        }

        private static void PrepareCommand(SqlCommand cmd, SqlConnection conn, SqlTransaction trans, string cmdText, SqlParameter[] cmdParms)
        {
            if (conn.State != ConnectionState.Open)
                conn.Open();
            cmd.Connection = conn;
            cmd.CommandText = cmdText;
            if (trans != null)
                cmd.Transaction = trans;
            cmd.CommandType = CommandType.Text;//cmdType;  
            if (cmdParms != null)
            {


                foreach (SqlParameter parameter in cmdParms)
                {
                    if ((parameter.Direction == ParameterDirection.InputOutput || parameter.Direction == ParameterDirection.Input) &&
                        (parameter.Value == null))
                    {
                        parameter.Value = DBNull.Value;
                    }
                    cmd.Parameters.Add(parameter);
                }
            }
        }

        /// <summary>
        /// 分页查询
        /// 2015-03-16 邱容超
        /// </summary>
        /// <param name="TableName">要查询的目标表</param>
        /// <param name="FieldList">要查询的字段</param>
        /// <param name="PrimaryKey">主键，分页排序依据，必须</param>
        /// <param name="Where">分页查询条件</param>
        /// <param name="Order">分页排序</param>
        /// <param name="PageSize">一页多少行</param>
        /// <param name="PageIndex">当前第几页，首页是1.</param>
        /// <param name="RecordCount">一共多少记录，总记录数。</param>
        /// <param name="PageCount">一共分多少页，总页数。</param>
        /// <returns></returns>
        public static DataSet Paging(string TableName, string FieldList, string PrimaryKey, string Where, string Order, int PageSize, int PageIndex, out int RecordCount, out int PageCount)
        {
            RecordCount = 0;
            PageCount = 0;
            
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    IDataParameter[] parameters = new IDataParameter[9];
                    parameters[0] = new SqlParameter("@TableName", SqlDbType.NVarChar, 1000);
                    parameters[0].Value = TableName;
                    parameters[1] = new SqlParameter("@FieldList", SqlDbType.NVarChar, 1000);
                    parameters[1].Value = FieldList;
                    parameters[2] = new SqlParameter("@PrimaryKey", SqlDbType.NVarChar, 100);
                    parameters[2].Value = PrimaryKey;
                    parameters[3] = new SqlParameter("@Where", SqlDbType.NVarChar, 6000);
                    parameters[3].Value = Where;
                    parameters[4] = new SqlParameter("@Order", SqlDbType.NVarChar, 100);
                    parameters[4].Value = Order;
                    parameters[5] = new SqlParameter("@PageSize", SqlDbType.Int);
                    parameters[5].Value = PageSize;
                    parameters[6] = new SqlParameter("@PageIndex", SqlDbType.Int);
                    parameters[6].Value = PageIndex;
                    parameters[7] = new SqlParameter("@RecordCount", SqlDbType.Int);
                    parameters[7].Value = RecordCount;
                    parameters[7].Direction = ParameterDirection.Output;
                    parameters[8] = new SqlParameter("@PageCount", SqlDbType.Int);
                    parameters[8].Value = PageCount;
                    parameters[8].Direction = ParameterDirection.Output;
                    DataSet dataSet = new DataSet();
                    connection.Open();
                    SqlDataAdapter sqlDA = new SqlDataAdapter();
                    SqlCommand comm = BuildQueryCommand(connection, "SP_GetResult_Page", parameters);
                    sqlDA.SelectCommand = comm;

                    sqlDA.Fill(dataSet, TableName);
                    RecordCount = (int)comm.Parameters["@RecordCount"].Value;
                    PageCount = (int)comm.Parameters["@PageCount"].Value;
                    connection.Close();
                    return dataSet;
                }
                catch (Exception ex)
                {
                    string stringError = ex.ToString();
                    WriteLogHelper wl = new WriteLogHelper(ex, TableName);
                    wl.StartWriteLog();
                    return null;

                }
                finally
                {
                    connection.Close();
                }
            }
        }
        #region 存储过程事务处理 阿彩 2015-10-23
        /// <summary>
        /// 存储过程事务处理 阿彩 2015-10-23
        /// </summary>
        /// <param name="storedProcName">存储过程名</param>
        /// <param name="parameters">参数</param>
        /// <returns></returns>
        public static int BuildQueryTran(List<string> storedProcName, List<IDataParameter[]> parameters)
        {
            
            int rowsAffected = 0;
            int intCount = 0;
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                if (con.State != ConnectionState.Open)
                {
                    con.Open();
                }
                SqlCommand command = new SqlCommand();
                command.Connection = con;
                SqlTransaction objtran = con.BeginTransaction();
                command.Transaction = objtran;
                StringBuilder sbProcName = new StringBuilder(); 
                try
                {
                    string strProcName = string.Empty;
                    IDataParameter[] Para;
                    for (int i = 0; i < storedProcName.Count; i++)
                    {
                        strProcName=(string)storedProcName[i];
                        sbProcName.Append(strProcName).Append(@";") ;
                        Para = (IDataParameter[])parameters[i];
                        command.CommandText = strProcName;
                        command.CommandType = CommandType.StoredProcedure;
                        if (Para != null)
                        {
                            foreach (SqlParameter parameter in Para)
                            {
                                command.Parameters.Add(parameter);
                            }
                            intCount = command.ExecuteNonQuery();
                            //-1为没有影响
                            if (intCount == -1)
                            {
                                intCount = 0;
                            }
                            rowsAffected = rowsAffected + intCount;
                            command.Parameters.Clear();
                        }
                    }
                    objtran.Commit();
                }
                catch (Exception ex)
                {
                    string stringError = ex.ToString();
                    objtran.Rollback();
                    WriteLogHelper wl = new WriteLogHelper(ex, sbProcName.ToString());
                    wl.StartWriteLog();
                    rowsAffected = -1;//2016-07-11 卢德伟加
                }
                finally
                {
                    command.Dispose();
                    con.Close();
                }
               
            }
            return rowsAffected;

        }
        #endregion


        #region  datatable 转 json  东明 2016-07-23

        public static string Serialize(DataTable dt, bool flag)
        {
           
            JavaScriptSerializer serializer = new JavaScriptSerializer();

            List<Dictionary<string, object>> list = new List<Dictionary<string, object>>();

            foreach (DataRow dr in dt.Rows)
            {

                Dictionary<string, object> result = new Dictionary<string, object>();

                foreach (DataColumn dc in dt.Columns)
                {

                    result.Add(dc.ColumnName, dr[dc].ToString());

                }

                list.Add(result);

            }
            
            return serializer.Serialize(list); ;

        }  
        #endregion


        #region 创建参数 by Ruby 20170303 13:40
        /// <summary>
        /// 创建sql参数
        /// </summary>
        /// <param name="parameterName">参数名称</param>
        /// <param name="sqlDbType">参数类型</param>
        /// <param name="length">参数长度</param>
        /// <param name="value">值</param>
        /// <returns></returns>
        public static SqlParameter CreateParameter(string parameterName, SqlDbType sqlDbType, int length, object value)
        {
            if (value == null)
            {
                value = DBNull.Value;
            }
            else if (value is String)
            {
                if (string.IsNullOrEmpty(value.ToString()))
                {
                    value = DBNull.Value;
                }
            }
            else if (value is Guid)
            {
                if (value.ToString() == Guid.Empty.ToString())
                {
                    value = DBNull.Value;
                }
            }
            var parameter = new SqlParameter(parameterName, sqlDbType, length) { Value = value };
            return parameter;
        }

        /// <summary>
        /// 创建sql参数
        /// </summary>
        /// <param name="parameterName">参数名称</param>
        /// <param name="sqlDbType">参数类型</param>
        /// <param name="value">值</param>
        /// <returns></returns>
        public static SqlParameter CreateParameter(string parameterName, SqlDbType sqlDbType, object value)
        {
            if (value == null)
            {
                value = DBNull.Value;
            }
            else if (value is String)
            {
                if (string.IsNullOrEmpty(value.ToString()))
                {
                    value = DBNull.Value;
                }
            }
            else if (value is Guid)
            {
                if (value.ToString()==Guid.Empty.ToString())
                {
                    value = DBNull.Value;
                }
            }
            var parameter = new SqlParameter(parameterName, sqlDbType) { Value = value };
            return parameter;
        }

        /// <summary>
        /// 创建sql参数
        /// </summary>
        /// <param name="parameterName">参数名称</param>
        /// <param name="sqlDbType">参数类型</param>
        /// <param name="direction">值方向</param>
        /// <returns></returns>
        public static SqlParameter CreateParameter(string parameterName, SqlDbType sqlDbType, ParameterDirection direction)
        {
            var parameter = new SqlParameter(parameterName, sqlDbType) { Direction = direction };
            return parameter;
        }

        #endregion

        /// <summary>
        /// 自定义生成一个dataset-用于数据访问层出错时返回
        /// </summary>
        /// <returns></returns>
        public static DataSet CustomDataSet(bool bol)
        {
            DataSet ds = new DataSet();
            DataTable dt = new DataTable();
            dt.TableName = "Data";
            DataColumn col1 = new DataColumn("Code", typeof(string));
            DataColumn col2 = new DataColumn("Msg", typeof(string));
            dt.Columns.Add(col1);
            dt.Columns.Add(col2);
            DataRow dr = dt.NewRow();
            if (bol == false)
            {
                dr["Code"] = "0";
                dr["Msg"] = "数据访问出错";
            }
            else
            {
                dr["Code"] = "1";
                dr["Msg"] = "成功";
            }
            dt.Rows.Add(dr);
            ds.Tables.Add(dt);
            return ds;
        }

       


    }

    #region  datatable 转 list<T>  东明 2016-07-23

    public class ConvertHelper
    {
     
        public List<T> convertToList<T>(DataTable dt) where T : new()
        {
          
            // 定义集合   
            List<T> ts = new List<T>();
            // 获得此模型的类型   
            Type type = typeof(T);
            //定义一个临时变量   
            string tempName = string.Empty;
            //遍历DataTable中所有的数据行    
            foreach (DataRow dr in dt.Rows)
            {
                T t = new T();
                // 获得此模型的公共属性   
                PropertyInfo[] propertys = t.GetType().GetProperties();
                //遍历该对象的所有属性   
                foreach (PropertyInfo pi in propertys)
                {
                    tempName = pi.Name;//将属性名称赋值给临时变量     
                    //检查DataTable是否包含此列（列名==对象的属性名）       
                    if (dt.Columns.Contains(tempName))
                    {
                        // 判断此属性是否有Setter     
                        if (!pi.CanWrite) continue;//该属性不可写，直接跳出     
                        //取值     
                        object value = dr[tempName];
                        //如果非空，则赋给对象的属性     
                        if (value != DBNull.Value)
                            pi.SetValue(t, value,null);
                    }
                }
                //对象添加到泛型集合中   
                ts.Add(t);
            }
            return ts;
        }

       
    }   


    #endregion

}
