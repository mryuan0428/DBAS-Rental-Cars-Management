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
using System.Data .SqlClient ;

namespace cartrade
{
	/// <summary>
	/// relet 的摘要说明。
	/// </summary>
	public partial class relet : System.Web.UI.Page
	{
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			// 在此处放置用户代码以初始化页面
			Submit1.Attributes.Add("onclick","javascript:return confirm('已成功添加纪录，是否输出续租合同单？')");
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

		protected void Submit1_ServerClick(object sender, System.EventArgs e)
		{
			string txt_1 = "";
			string txt_2 = "";
			string txt_3 = "";
			string txt_4 = "";
			string txt_5 = "";
			string txt_6 = "";
			string txt_7 = "";
			string txt_8 = "";
			txt_1 = Text1.Value;
			txt_2 = Text2.Value;
			txt_3 = Text3.Value;
			txt_4 = Text4.Value;
			txt_5 = Text5.Value;
			txt_6 = Text6.Value;
			txt_7 = Text7.Value;
			Session["tradeid"]=Text1.Value ;

			string sqlselect="select prozujin,usertype from trade where tradeid='"+txt_1+"'";
            DBClass db1 = new DBClass(sqlselect);
            SqlDataReader dr1 = db1.returndr();
			if(dr1.Read ())
			{
				TextBox1.Text =dr1["prozujin"].ToString().Trim ();
				Session["usertype"]=dr1["usertype"].ToString ().Trim ();
			}
			dr1.Close ();
            db1.dbClose();

			txt_8=TextBox1.Text ;
			string sql="update trade set carid='"+txt_2+"',endtime='"+txt_3+"',prozujin=convert(money,'"+txt_8+"')+convert(money,'"+txt_4+"'),checknum='"+txt_5+"',nextpaytime='"+txt_6+"',unitpay=convert(money,'"+txt_7+"') where tradeid='"+txt_1+"'";
            DBClass db = new DBClass(sql);
            SqlDataReader dr = db.returndr();
			dr.Close ();
            db.dbClose();
			Response.Redirect("reletpaper.aspx");
		}

		private void Submit2_ServerClick(object sender, System.EventArgs e)
		{
			Text1.Value ="";
			Text2.Value ="";
			Text3.Value ="";
			Text4.Value ="";
			Text5.Value ="";
			Text6.Value ="";
			Text7.Value ="";

		}
	}
}
