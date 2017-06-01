using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Configuration;

namespace client.client
{
	/// <summary>
	/// photo_browser 的摘要说明。
	/// </summary>
	public partial class photo_browser : System.Web.UI.Page
	{
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			// 在此处放置用户代码以初始化页面
			string struserid = Request.QueryString["userid_personinfo"].ToString().Trim();

			if(!IsPostBack)
			{
				string sql = "select * from personinfo where userid_personinfo = '"+struserid+"'";
                DBClass db = new DBClass(sql);
				SqlDataReader dr = db.returndr();
				db.dbClose();
			}

			Show(struserid);

		}

		#region Web 窗体设计器生成的代码
		override protected void OnInit(EventArgs e)
		{
			//
			// CODEGEN: 该调用是 ASP.NET Web 窗体设计器所必需的。
			//
			InitializeComponent();
			base.OnInit(e);
		}
		
		/// <summary>
		/// 设计器支持所需的方法 - 不要使用代码编辑器修改
		/// 此方法的内容。
		/// </summary>
		private void InitializeComponent()
		{    

		}
		#endregion

		public void Show(string imgid)
		{
			SqlConnection objConn = new SqlConnection ( ConfigurationSettings. AppSettings["ConnectionString"]);
			objConn.Open();
			string SQL = "select photo_personinfo from personinfo where userid_personinfo = @imgid";
			SqlCommand cmd = new SqlCommand(SQL ,objConn) ;
			SqlParameter param = new SqlParameter ("@imgid", SqlDbType.VarChar,50);
			param. Value = imgid ;
			cmd.Parameters.Add(param) ;
			SqlDataReader dr = cmd. ExecuteReader() ;
			if (dr. Read() )
			{
　　			Response.BinaryWrite( (byte[ ])
　　			dr["photo_personinfo"]) ;
			}
			dr. Close () ;
			objConn.Close() ;
		}
	}
}
