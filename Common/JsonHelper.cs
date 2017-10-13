using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Runtime.Serialization;
using System.Runtime.Serialization.Json;
using System.Runtime.Serialization.Formatters.Binary;
using System.Web.Script.Serialization;

namespace Common
{

    public static class JsonHelper
    {       
        /// <summary>
        /// List转成json
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="jsonName"></param>
        /// <param name="list"></param>
        /// <returns></returns>
        public static string ListToJson<T>(IList<T> list, string jsonName)
        {
            StringBuilder Json = new StringBuilder();
            if (string.IsNullOrEmpty(jsonName))
                jsonName = list[0].GetType().Name;
            Json.Append("{\"" + jsonName + "\":[");
            if (list.Count > 0)
            {
                for (int i = 0; i < list.Count; i++)
                {
                    T obj = Activator.CreateInstance<T>();
                    PropertyInfo[] pi = obj.GetType().GetProperties();
                    Json.Append("{");
                    for (int j = 0; j < pi.Length; j++)
                    {
                        Type type;
                        object o = pi[j].GetValue(list[i], null);
                        string strKey = pi[j].Name.ToString();
                        string strValue = string.Empty;
                        if (o != null)
                        {
                            type = o.GetType();
                            strValue = o.ToString();
                        }
                        else
                        {
                            type = typeof(string);
                        }

                        strValue = StringFormat(strValue, type); // GetJsonValue(strKey, strValue, type);

                        Json.Append("\"" + strKey + "\":" + strValue);

                        if (j < pi.Length - 1)
                        {
                            Json.Append(",");
                        }
                    }
                    Json.Append("}");
                    if (i < list.Count - 1)
                    {
                        Json.Append(",");
                    }
                }
            }
            Json.Append("]}");
            return Json.ToString();
        }

        /// <summary>
        /// 序列化集合对象
        /// </summary>
        public static string JsonSerializerByArrayData<T>(T[] tArray)
        {
            DataContractJsonSerializer ser = new DataContractJsonSerializer(typeof(T[]));
            MemoryStream ms = new MemoryStream();
            ser.WriteObject(ms, tArray);
            string jsonString = Encoding.UTF8.GetString(ms.ToArray());
            ms.Close();
            string p = @"\\/Date\((\d+)\+\d+\)\\/";
            MatchEvaluator matchEvaluator = new MatchEvaluator(ConvertJsonDateToDateString);
            Regex reg = new Regex(p);
            jsonString = reg.Replace(jsonString, matchEvaluator);
            return jsonString;
        }

        /// <summary>
        /// 序列化单个对象
        /// </summary>
        public static string JsonSerializerBySingleData<T>(T t)
        {
            DataContractJsonSerializer ser = new DataContractJsonSerializer(typeof(T));
            MemoryStream ms = new MemoryStream();
            ser.WriteObject(ms, t);
            string jsonString = Encoding.UTF8.GetString(ms.ToArray());
            ms.Close();
            string p = @"\\/Date\((\d+)\+\d+\)\\/";
            MatchEvaluator matchEvaluator = new MatchEvaluator(ConvertJsonDateToDateString);
            Regex reg = new Regex(p);
            jsonString = reg.Replace(jsonString, matchEvaluator);
            return jsonString;
        }

        /// <summary>
        /// 反序列化单个对象
        /// </summary>
        public static T JsonDeserializeBySingleData<T>(string jsonString)
        {
            //将"yyyy-MM-dd HH:mm:ss"格式的字符串转为"\/Date(1294499956278+0800)\/"格式 
            string p = @"\d{4}-\d{2}-\d{2}\s\d{2}:\d{2}:\d{2}";
            MatchEvaluator matchEvaluator = new MatchEvaluator(ConvertDateStringToJsonDate);
            Regex reg = new Regex(p);
            jsonString = reg.Replace(jsonString, matchEvaluator);
            DataContractJsonSerializer ser = new DataContractJsonSerializer(typeof(T));
            MemoryStream ms = new MemoryStream(Encoding.UTF8.GetBytes(jsonString));
            T obj = (T)ser.ReadObject(ms);
            return obj;
        }

        /// <summary>
        /// 反序列化集合对象
        /// </summary>
        public static T[] JsonDeserializeByArrayData<T>(string jsonString)
        {
            //将"yyyy-MM-dd HH:mm:ss"格式的字符串转为"\/Date(1294499956278+0800)\/"格式 
            string p = @"\d{4}-\d{2}-\d{2}\s\d{2}:\d{2}:\d{2}";
            MatchEvaluator matchEvaluator = new MatchEvaluator(ConvertDateStringToJsonDate);
            Regex reg = new Regex(p);
            jsonString = reg.Replace(jsonString, matchEvaluator);
            DataContractJsonSerializer ser = new DataContractJsonSerializer(typeof(T[]));
            MemoryStream ms = new MemoryStream(Encoding.UTF8.GetBytes(jsonString));
            T[] arrayObj = (T[])ser.ReadObject(ms);
            return arrayObj;
        }

        /// <summary>
        /// 将Json序列化的时间由/Date(1294499956278+0800)转为字符串
        /// </summary>
        private static string ConvertJsonDateToDateString(Match m)
        {
            string result = string.Empty;
            DateTime dt = new DateTime(1970, 1, 1);
            dt = dt.AddMilliseconds(long.Parse(m.Groups[1].Value));
            dt = dt.ToLocalTime();
            result = dt.ToString("yyyy-MM-dd HH:mm:ss");
            return result;
        }

        /// <summary> 
        /// 将时间字符串转为Json时间
        /// </summary>
        private static string ConvertDateStringToJsonDate(Match m)
        {
            string result = string.Empty;
            DateTime dt = DateTime.Parse(m.Groups[0].Value);
            dt = dt.ToUniversalTime();
            TimeSpan ts = dt - DateTime.Parse("1970-01-01");
            result = string.Format("\\/Date({0}+0800)\\/", ts.TotalMilliseconds);
            return result;
        }

        /// <summary>
        /// List转成json
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="list"></param>
        /// <returns></returns>
        public static string ListToJson<T>(IList<T> list)
        {
            object obj = list[0];
            return ListToJson<T>(list, obj.GetType().Name);
        }

        /// <summary>
        /// 对象转换为Json字符串
        /// </summary>
        /// <param name="jsonObject">对象</param>
        /// <returns>Json字符串</returns>
        public static string ToJson(object jsonObject)
        {
            try
            {
                StringBuilder jsonString = new StringBuilder();
                jsonString.Append("{");
                PropertyInfo[] propertyInfo = jsonObject.GetType().GetProperties();
                for (int i = 0; i < propertyInfo.Length; i++)
                {
                    object objectValue = propertyInfo[i].GetGetMethod().Invoke(jsonObject, null);
                    if (objectValue == null)
                    {
                        continue;
                    }
                    StringBuilder value = new StringBuilder();
                    if (objectValue is DateTime || objectValue is Guid || objectValue is TimeSpan)
                    {
                        value.Append("\"" + objectValue.ToString() + "\"");
                    }
                    else if (objectValue is string)
                    {
                        value.Append("\"" + objectValue.ToString() + "\"");
                    }
                    else if (objectValue is IEnumerable)
                    {
                        value.Append(ToJson((IEnumerable)objectValue));
                    }
                    else
                    {
                        value.Append("\"" + objectValue.ToString() + "\"");
                    }
                    jsonString.Append("\"" + propertyInfo[i].Name + "\":" + value + ","); ;
                }
                return jsonString.ToString().TrimEnd(',') + "}";
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public static string ToJsonPage(object jsonObject, int intPageIndex, int intPageSize, Int32 intTotalCount)
        {
            string strJson = ToJson(jsonObject);
            return ToJsonPage(strJson, intPageIndex, intPageSize, intTotalCount);
        }

        /// <summary>
        /// 对象集合转换Json
        /// </summary>
        /// <param name="array">集合对象</param>
        /// <returns>Json字符串</returns>
        public static string ToJson(IEnumerable array)
        {
            string jsonString = "[";
            foreach (object item in array)
            {
                jsonString += ToJson(item) + ",";
            }
            if (jsonString.Length > 1)
            {
                jsonString.Remove(jsonString.Length - 1, jsonString.Length);
            }
            else
            {
                jsonString = "[]";
            }
            return jsonString + "]";
        }

        /// <summary>
        /// 运用于jgrid,构造JSon
        /// </summary>
        /// <param name="array">IEnumerable</param>
        /// <param name="intPageIndex">当前页</param>
        /// <param name="intPageSize">每页大小</param>
        /// <param name="intTotalCount">总记录数</param>
        /// <returns></returns>
        public static string ToJsonPage(IEnumerable array, int intPageIndex, int intPageSize, Int32 intTotalCount)
        {
            string strJson = ToJson(array);
            return ToJsonPage(strJson, intPageIndex, intPageSize, intTotalCount);
        }

        /// <summary>
        /// 普通集合转换Json
        /// </summary>
        /// <param name="array">集合对象</param>
        /// <returns>Json字符串</returns>
        public static string ToArrayString(IEnumerable array)
        {
            string jsonString = "[";
            foreach (object item in array)
            {
                jsonString = ToJson(item.ToString()) + ",";
            }
            jsonString.Remove(jsonString.Length - 1, jsonString.Length);
            return jsonString + "]";
        }

        /// <summary>
        /// Datatable转换为Json
        /// </summary>
        /// <param name="table">Datatable对象</param>
        /// <param name="blnInnerJson">是否内嵌Json对象</param>
        /// <returns>Json字符串</returns>
        public static string ToJson(DataTable dt,bool blnInnerJson=false)
        {
            StringBuilder jsonString = new StringBuilder();
            jsonString.Append("[");
            DataRowCollection drc = dt.Rows;
            for (int i = 0; i < drc.Count; i++)
            {
                jsonString.Append("{");
                for (int j = 0; j < dt.Columns.Count; j++)
                {
                    string strKey = dt.Columns[j].ColumnName;
                    string strValue = drc[i][j].ToString();
                    Type type = dt.Columns[j].DataType;
                    jsonString.Append("\"" + strKey + "\":");

                    if (blnInnerJson)
                    {
                        strValue = GetJsonValue(strKey, strValue, type);
                    }
                    else
                    {
                        strValue = StringFormat(strValue, type);
                    }                    

                    if (j < dt.Columns.Count - 1)
                    {
                        jsonString.Append(strValue + ",");
                    }
                    else
                    {
                        jsonString.Append(strValue);
                    }
                }
                jsonString.Append("},");
            }
            jsonString.Remove(jsonString.Length - 1, 1);
            jsonString.Append("]");
            if (jsonString.Length == 1)
            {
                return "[]";
            }
            return jsonString.ToString();
        }


        /// <summary>
        /// 运用于jgrid,构造JSon
        /// </summary>
        /// <param name="dt">DataTable</param>
        /// <param name="intPageIndex">当前页</param>
        /// <param name="intPageSize">每页大小</param>
        /// <param name="intTotalCount">总记录数</param>
        /// <param name="blnInnerJson">是否内嵌Json对象</param>
        /// <returns></returns>
        public static string ToJsonPage(DataTable dt, int intPageIndex, int intPageSize, Int32 intTotalCount, bool blnInnerJson = false)
        {
            string strJson = ToJson(dt, blnInnerJson);
            return ToJsonPage(strJson, intPageIndex, intPageSize, intTotalCount);
        }

        /// <summary>
        /// DataTable转成Json
        /// </summary>
        /// <param name="jsonName">对象名称</param>
        /// <param name="dt">Datatable对象</param>
        /// <param name="blnInnerJson">是否内嵌Json对象</param>
        /// <returns></returns>
        public static string ToJson(DataTable dt, string jsonName, bool blnInnerJson = false)
        {
            StringBuilder Json = new StringBuilder();
            if (string.IsNullOrEmpty(jsonName))
                jsonName = dt.TableName;
            Json.Append("{\"" + jsonName + "\":[");
            if (dt.Rows.Count > 0)
            {
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    Json.Append("{");
                    for (int j = 0; j < dt.Columns.Count; j++)
                    {
                        Type type = dt.Rows[i][j].GetType();
                        string strKey = dt.Columns[j].ColumnName.ToString();
                        string strValue = dt.Rows[i][j] is DBNull ? string.Empty : dt.Rows[i][j].ToString();

                        if (blnInnerJson)
                        {
                            strValue = GetJsonValue(strKey, strValue, type);
                        }
                        else
                        {
                            strValue = StringFormat(strValue, type);
                        }

                        Json.Append("\"" + strKey + "\":" + strValue);
                        if (j < dt.Columns.Count - 1)
                        {
                            Json.Append(",");
                        }
                    }
                    Json.Append("}");
                    if (i < dt.Rows.Count - 1)
                    {
                        Json.Append(",");
                    }
                }
            }
            Json.Append("]}");
            return Json.ToString();
        }

        /// <summary>
        /// DataReader转换为Json
        /// </summary>
        /// <param name="dataReader">DataReader对象</param>
        /// <param name="blnInnerJson">是否内嵌Json对象</param>
        /// <returns>Json字符串</returns>
        public static string ToJson(IDataReader dataReader, bool blnInnerJson = false)
        {
            try
            {
                StringBuilder jsonString = new StringBuilder();
                jsonString.Append("[");

                while (dataReader.Read())
                {
                    jsonString.Append("{");
                    for (int i = 0; i < dataReader.FieldCount; i++)
                    {
                        Type type = dataReader.GetFieldType(i);
                        string strKey = dataReader.GetName(i);
                        string strValue = dataReader[i].ToString();

                        if (blnInnerJson)
                        {
                            strValue = GetJsonValue(strKey, strValue, type);
                        }
                        else
                        {
                            strValue = StringFormat(strValue, type);
                        }

                        jsonString.Append("\"" + strKey + "\":");                        
                        if (i < dataReader.FieldCount - 1)
                        {
                            jsonString.Append(strValue + ",");
                        }
                        else
                        {
                            jsonString.Append(strValue);
                        }
                    }
                    jsonString.Append("},");
                }
                if (!dataReader.IsClosed)
                {
                    dataReader.Close();
                }
                jsonString.Remove(jsonString.Length - 1, 1);
                jsonString.Append("]");
                if (jsonString.Length == 1)
                {
                    return "[]";
                }
                return jsonString.ToString();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        /// <summary>
        /// 运用于jgrid,构造JSon
        /// </summary>
        /// <param name="dr">IDataReader</param>
        /// <param name="intPageIndex">当前页</param>
        /// <param name="intPageSize">每页大小</param>
        /// <param name="intTotalCount">总记录数</param>
        /// <param name="blnInnerJson">是否内嵌Json对象</param>
        /// <returns></returns>
        public static string ToJsonPage(IDataReader dr, int intPageIndex, int intPageSize, Int32 intTotalCount, bool blnInnerJson = false)
        {
            string strJson = ToJson(dr, blnInnerJson);
            return ToJsonPage(strJson, intPageIndex, intPageSize, intTotalCount);
        }

        /// <summary>
        /// DataSet转换为Json
        /// </summary>
        /// <param name="dataSet">DataSet对象</param>
        /// <param name="blnInnerJson">是否内嵌Json对象</param>
        /// <returns>Json字符串</returns>
        public static string ToJson(DataSet dataSet, bool blnInnerJson = false)
        {
            string jsonString = "{";
            foreach (DataTable table in dataSet.Tables)
            {
                jsonString += "\"" + table.TableName + "\":" + ToJson(table, blnInnerJson) + ",";
            }
            jsonString = jsonString.TrimEnd(',');
            return jsonString + "}";
        }

        /// <summary>
        /// 构造JSon
        /// </summary>
        /// <param name="strJson">JSon</param>
        /// <param name="intPageIndex">当前页</param>
        /// <param name="intPageSize">每页大小</param>
        /// <param name="intTotalCount">总记录数</param>
        /// <returns></returns>
        public static string ToJsonPage(string strJson, int intPageIndex, int intPageSize, Int32 intTotalCount)
        {
            int intPageCount = 0;
            if (intTotalCount % intPageSize == 0)
            {
                intPageCount = intTotalCount / intPageSize;
            }
            else
            {
                intPageCount = (intTotalCount / intPageSize) + 1;
            }
            System.Text.StringBuilder sbJson = new System.Text.StringBuilder();
            sbJson.Append("{\"TotalPages\":\"").Append(intPageCount);//总页数
            sbJson.Append("\",\"CurrentPage\":\"").Append(intPageIndex);//当前页码
            sbJson.Append("\",\"ItemsPerPage\":\"").Append(intPageSize);//每页大小
            sbJson.Append("\",\"TotalItems\":\"").Append(intTotalCount);// 总记录数
            sbJson.Append("\",\"Items\":").Append(strJson);//记录
            sbJson.Append("}");
            return sbJson.ToString();
        }

        /// <summary>
        /// 过滤特殊字符
        /// </summary>
        /// <param name="s"></param>
        /// <returns></returns>
        public static string String2Json(String s)
        {
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < s.Length; i++)
            {
                char c = s.ToCharArray()[i];
                switch (c)
                {
                    case '\"':
                        sb.Append("\\\""); break;
                    case '\\':
                        sb.Append("\\\\"); break;
                    case '/':
                        sb.Append("\\/"); break;
                    case '\b':
                        sb.Append("\\b"); break;
                    case '\f':
                        sb.Append("\\f"); break;
                    case '\n':
                        sb.Append("\\n"); break;
                    case '\r':
                        sb.Append("\\r"); break;
                    case '\t':
                        sb.Append("\\t"); break;
                    case '\v':
                        sb.Append("\\v"); break;
                    case '\0':
                        sb.Append("\\0"); break;
                    default:
                        sb.Append(c); break;
                }
            }
            return sb.ToString();
        }

        private static string GetJsonValue(string strKey, string strValue, Type type)
        {
            string strResult = strValue;
            if (strKey.ToLower().Contains("json"))//字段是否json内容
            {
                if (string.IsNullOrEmpty(strValue))
                {
                    strResult = "{}";
                }
                else
                {
                    string strTemp = strValue.Trim();
                    if (!strTemp.StartsWith("{") && !strTemp.StartsWith("[")) //说明不是对象或数组,则以字符串处理
                    {
                        strResult = "\"" + strValue + "\"";
                    }
                }
            }
            else
            {
                strResult = StringFormat(strValue, type);
            }
            return strResult;
        }

        /// <summary>
        /// 格式化字符型、日期型、布尔型
        /// </summary>
        /// <param name="str"></param>
        /// <param name="type"></param>
        /// <returns></returns>
        private static string StringFormat(string str, Type type)
        {            
            if (type == typeof(string))
            {
                str = String2Json(str);
                str = "\"" + str + "\"";
            }
            else if (type == typeof(DateTime))
            {
                str = "\"" + str + "\"";
            }
            else if (type == typeof(bool))
            {
                str = str.ToLower();
            }
            else if (type == typeof(byte[]))
            {
                str = "\"" + str + "\"";
            }
            else if (type == typeof(Guid))
            {
                if (string.IsNullOrEmpty(str)) str = Guid.Empty.ToString(); // add by ruby 2017-09-05 15:30
                str = "\"" + str + "\"";
            }
            else if (type != typeof(string) && string.IsNullOrEmpty(str))
            {
                str = "\"" + str + "\"";
            }
            return str;
        }



        //由于此方法里要引用其他两个暂时用不到的类，所有暂时注释不报错，2017-3-29   卢德伟 注释
        //private static void FieldToJson(object objValue, string strDbTypeName, string strDBKeyName, StringBuilder sb)
        //{
        //    sb.Append("\"").Append(strDBKeyName).Append("\":");
        //    switch (strDbTypeName.ToLower())
        //    {
        //        case "bool":
        //        case "system.boolean":
        //            if (objValue == null)
        //                sb.Append("\"false\",");
        //            else
        //            {
        //                if (objValue.Equals(1) || objValue.Equals(true))
        //                    sb.Append("\"true\",");
        //                else
        //                    sb.Append("\"false\",");

        //            }
        //            break;
        //        case "byte":
        //        case "system.byte":
        //        case "short":
        //        case "system.int16":
        //        case "int":
        //        case "system.int32":
        //        case "long":
        //        case "system.int64":
        //            if (objValue == null)
        //                sb.Append("\"0\",");
        //            else
        //                sb.Append("\"").Append(objValue).Append("\",");
        //            break;
        //        case "decimal":
        //        case "system.decimal":
        //        case "double":
        //        case "system.double":
        //        case "float":
        //        case "system.single":
        //            if (objValue == null)
        //                sb.Append("\"0.0\",");
        //            else
        //            {
        //                sb.Append("\"").Append(Math.Round(StringHelper.StrToDecimal(objValue.ToString()), ConstantHelper.SYSTEM_PUBLIC_POINT)).Append("\",");
        //            }
        //            break;
        //        case "char":
        //        case "system.char":
        //        case "string":
        //        case "system.string":
        //        case "guid":
        //        case "system.guid":
        //            if (objValue == null)
        //                sb.Append("\"\",");
        //            else
        //                sb.Append("\"").Append(StrReplace(objValue.ToString().Trim())).Append("\",");
        //            break;
        //        case "datetime":
        //        case "system.datetime":
        //            if (objValue == null)
        //                sb.Append("\"\",");
        //            else
        //            {

        //                DateTime StandardTime = new DateTime(1970, 1, 1).ToLocalTime();
        //                DateTime dtDateTime = (DateTime)objValue;
        //                if (string.Format("{0:yyyy-MM-dd}", dtDateTime) == "1900-01-01")
        //                {
        //                    sb.Append("\"\",");
        //                }
        //                else
        //                {
        //                    TimeSpan span = dtDateTime - StandardTime;
        //                    long milliseconds = (long)span.TotalMilliseconds;
        //                    string strJs = "new Date(" + milliseconds + ")";
        //                    sb.Append("\"").Append(strJs).Append("\",");
        //                }
        //            }
        //            break;
        //        case "bit":
        //        case "boolean":
        //            if (objValue == null)
        //                sb.Append("\"\",");
        //            else
        //            {
        //                if (objValue.Equals(1) || objValue.Equals(true))
        //                    sb.Append("\"true\",");
        //                else
        //                    sb.Append("\"false\",");

        //            }
        //            break;
        //        default:
        //            if (objValue == null)
        //                sb.Append("\"\",");
        //            else
        //                sb.Append("\"").Append(StrReplace(objValue.ToString().Trim())).Append("\",");
        //            break;
        //    }
        //}
        private static string StrReplace(string strValue)
        {
            strValue = strValue.Replace(@"\\", @"\\\\");
            strValue = strValue.Replace(@"\t", @"\\t");
            strValue = strValue.Replace(@"\n", @"\\n");
            strValue = strValue.Replace(@"\r", @"\\r");
            strValue = strValue.Replace(@"\b", @"\\b");
            strValue = strValue.Replace(@"\f", @"\\f");
            strValue = strValue.Replace("\"", "\\\"");
            strValue = strValue.Replace("\'", "\\'");
            return strValue.Trim();
        }




        //--------ldw 在ruby 所写的 ToJson 基础上改造  


        /// <summary>
        ///  Datatable转换为Json-卢德伟
        /// </summary>
        /// <param name="ds"></param>
        /// <param name="blnInnerJson">是否内嵌Json对象</param>
        /// <returns></returns>
        public static string ToJson_L(DataSet ds, bool blnInnerJson = false)
        {
            StringBuilder jsonString = new StringBuilder();
            if (ds != null && ds.Tables != null)
            {
                DataTable dt = ds.Tables[0];
                if (dt.Columns[0].ColumnName == "Code" || dt.Columns[1].ColumnName == "Msg")
                {
                    jsonString.Append("{");
                    jsonString.Append("\"Code\":").Append(dt.Rows[0][0].ToString() + ",");
                    jsonString.Append("\"Msg\":").Append("\"" + dt.Rows[0][1].ToString() + "\",");
                    jsonString.Append("\"Data\":").Append("[]");
                    jsonString.Append("}");
                }
                else
                {
                    jsonString.Append("{");
                    jsonString.Append("\"Code\":").Append("1,");
                    jsonString.Append("\"Msg\":").Append("\"成功\",");
                    jsonString.Append("\"Data\":").Append(DataTableToObject(dt, blnInnerJson));
                    jsonString.Append("}");
                }
            }
            else 
            {
                jsonString.Append("{");
                jsonString.Append("\"Code\":").Append("0,");
                jsonString.Append("\"Msg\":").Append("\"存储过程异常,失败\"");
                jsonString.Append("}");
            }
            return jsonString.ToString();
        }

        /// <summary>
        /// Datatable转换为Json-卢德伟
        /// </summary>
        /// <param name="dt">dt</param>
        /// <param name="Page">页码数</param>
        /// <param name="PageSize">每页大小</param>
        /// <param name="bol">是否分页：true分页，false不分页</param>
        /// <param name="blnInnerJson">是否内嵌Json对象</param>
        /// <returns></returns>
        public static string ToJson_L(DataSet ds, int Page, int PageSize,Boolean bol, bool blnInnerJson = false)
        {
            StringBuilder jsonString = new StringBuilder();
            if (ds != null && ds.Tables != null)
            {
                DataTable dt = ds.Tables[0];
                if (dt.Columns[0].ColumnName == "Code" || dt.Columns[1].ColumnName == "Msg")
                {
                    jsonString.Append("{");
                    jsonString.Append("\"Code\":").Append(dt.Rows[0][0].ToString() + ",");
                    jsonString.Append("\"Msg\":").Append("\"" + dt.Rows[0][1].ToString() + "\",");
                    jsonString.Append("\"Data\":").Append("[]");
                    jsonString.Append("}");
                }
                else
                {
                    jsonString.Append("{");
                    jsonString.Append("\"Code\":").Append("1,");
                    jsonString.Append("\"Msg\":").Append("\"成功\",");
                    jsonString.Append("\"Data\":").Append(DataTableToObject(dt, Page, PageSize,bol,blnInnerJson));
                    jsonString.Append("}");
                }
            }
            else
            {
                jsonString.Append("{");
                jsonString.Append("\"Code\":").Append("0,");
                jsonString.Append("\"Msg\":").Append("\"存储过程异常,失败\"");
                jsonString.Append("}");
            }
            return jsonString.ToString();
        }

        /// <summary>
        /// 将DataTable解析成Json字符串对象
        /// </summary>
        /// <param name="dt">dt</param>
        /// <param name="blnInnerJson">是否内嵌Json对象</param>
        /// <returns></returns>
        public static string DataTableToObject(DataTable dt, bool blnInnerJson = false)
        {

            StringBuilder jsonString = new StringBuilder();
            DataRowCollection drc = dt.Rows;
            //有数据情况下-只取第一条数据
            if (dt.Rows.Count > 0)
            {
                jsonString.Append("{");
                for (int j = 0; j < dt.Columns.Count; j++)
                {
                    string strKey = dt.Columns[j].ColumnName;
                    string strValue = drc[0][j].ToString();
                    Type type = dt.Columns[j].DataType;
                    jsonString.Append("\"" + strKey + "\":");
                    if (blnInnerJson)
                    {
                        strValue = GetJsonValue(strKey, strValue, type);
                    }
                    else
                    {
                        strValue = StringFormat(strValue, type);
                    }
                    if (j < dt.Columns.Count - 1)
                    {
                        jsonString.Append(strValue + ",");
                    }
                    else
                    {
                        jsonString.Append(strValue);
                    }
                }
                jsonString.Append("}");
            }
            else
            {
                jsonString.Append("{}");
            }
            return jsonString.ToString();
        }

        /// <summary>
        /// 将DataTable解析成Json字符串对象-分页
        /// </summary>
        /// <param name="dt">dt</param>
        /// <param name="Page">页码数</param>
        /// <param name="PageSize">每页大小</param>
        /// <param name="bol">是否分页：true分页，false不分页</param>
        /// <param name="blnInnerJson">是否内嵌Json对象</param>
        /// <returns></returns>
        public static Object DataTableToObject(DataTable dt, int Page, int PageSize, Boolean bol, bool blnInnerJson = false)
        {

            StringBuilder jsonString = new StringBuilder();
            DataRowCollection drc = dt.Rows;
            if (dt.Rows.Count > 0)
            {
                if (bol)
                {
                    jsonString.Append("{\"TotalPages\":\"" + drc[0]["TotalPages"].ToString() + "\",");
                    jsonString.Append("\"TotalItems\":\"" + drc[0]["TotalItems"].ToString() + "\",");
                    jsonString.Append("\"ItemsPerPage\":\"" + PageSize + "\",");
                    jsonString.Append("\"CurrentPage\":\"" + Page + "\",");
                    jsonString.Append("\"Items\":");
                }
                jsonString.Append("[");
                for (int i = 0; i < drc.Count; i++)
                {
                    jsonString.Append("{");
                    for (int j = 0; j < dt.Columns.Count; j++)
                    {
                        if (dt.Columns[j].ColumnName != "TotalPages" && dt.Columns[j].ColumnName != "TotalItems")
                        {
                            string strKey = dt.Columns[j].ColumnName;
                            string strValue = drc[i][j].ToString();
                            Type type = dt.Columns[j].DataType;
                            jsonString.Append("\"" + strKey + "\":");
                            if (blnInnerJson)
                            {
                                strValue = GetJsonValue(strKey, strValue, type);
                            }
                            else
                            {
                                strValue = StringFormat(strValue, type);
                            }
                            if (j < dt.Columns.Count - 1)
                            {
                                jsonString.Append(strValue + ",");
                            }
                            else
                            {
                                jsonString.Append(strValue);
                            }
                        }
                    }
                    jsonString.Append("},");
                }
                jsonString.Remove(jsonString.Length - 1, 1);
                jsonString.Append("]");
                if (bol)
                {
                    jsonString.Append("}");
                }
            }
            else
            {
                if (bol)
                {
                    jsonString.Append("{\"TotalPages\":\"0\",");
                    jsonString.Append("\"TotalItems\":\"0\",");
                    jsonString.Append("\"ItemsPerPage\":\"" + PageSize + "\",");
                    jsonString.Append("\"CurrentPage\":\"" + Page + "\",");
                    jsonString.Append("\"Items\":[]}");
                }
                else
                {
                    jsonString.Append("[]");
                }
            }
            return jsonString.ToString();
        }
    }
}