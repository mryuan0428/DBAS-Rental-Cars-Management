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

namespace WebApplication1
{
	/// <summary>
	/// tradeDelete 的摘要说明。
	/// </summary>
	public partial class delete_pretrade : System.Web.UI.Page
	{
		protected System.Web.UI.WebControls.TextBox txtTradeid;
		protected System.Web.UI.WebControls.Label begintime;
		protected System.Web.UI.WebControls.Label endtime;
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			// 在此处放置用户代码以初始化页面
			string strTradeid = Request.QueryString["id_pretrade"].ToString().Trim();

			string sql = "";
			sql = "SELECT * FROM pretrade WHERE id_pretrade = '"+strTradeid+"'";
            DBClass db = new DBClass(sql);
			SqlDataReader dr = db.returndr();
			if(dr.Read())
			{
				txtPretradeid.Text = dr["id_pretrade"].ToString().Trim();
				txtUserid.Text = dr["userid"].ToString().Trim();
				txtPersonname.Text = dr["username_pretrade"].ToString().Trim();
				txtCarid.Text = dr["carid"].ToString().Trim();
				txtBegintime.Text = dr["begintime_pretrade"].ToString().Trim();
				txtEndtime.Text = dr["endtime_pretrade"].ToString().Trim();
				if (dr["persontype_pretrade"].ToString().Trim() == "个人用户")
				{
					txtPersontype.SelectedValue = "个人用户";
				}

				if (dr["persontype_pretrade"].ToString().Trim() == "个人会员")
				{
					txtPersontype.SelectedValue = "个人会员";
				}

				if (dr["persontype_pretrade"].ToString().Trim() == "公司用户")
				{
					txtPersontype.SelectedValue = "公司用户";
				}

				if (dr["persontype_pretrade"].ToString().Trim() == "公司会员")
				{
					txtPersontype.SelectedValue = "公司会员";
				}
			}

			db.dbClose();
			
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

		protected void btnDel_Click(object sender, System.EventArgs e)
		{
			
			Response.Write("<Script language='javaScript'>(alert(\"记录已删除\"))</Script>");
			string strPretradeid = Request.QueryString["id_pretrade"].ToString().Trim();
			string sqlDel = "delete from pretrade where id_pretrade = '"+strPretradeid+"'";
            DBClass db = new DBClass(sqlDel);
            db.returndr();
			db.dbClose();
			Response.Write("<script language = 'javascript'>window.navigate('browsepretrade.aspx');</script>");

		}

		protected void btnCancel_Click(object sender, System.EventArgs e)
		{
			Response.Write("<script language = 'javascript'>window.navigate('browsepretrade.aspx');</script>");

		}

		protected void Button1_Click(object sender, System.EventArgs e)
		{
			string strKeywordInput = keyword.Text.ToString().Trim();
			string sql = "select * from keyword where operator = 'hy'";
			string strKeyword = "";
            DBClass db = new DBClass(sql);
			SqlDataReader dr = db.returndr();
			if(dr.Read())
			{
				strKeyword = dr["keyword"].ToString().Trim();
			}
			db.dbClose();
			if(strKeywordInput == strKeyword)
			{
				btnDel.Visible = true;
			}
			else
				Response.Write("<script language = 'javascript'>alert('密码不正确！');</script>");
		}
	}
}
