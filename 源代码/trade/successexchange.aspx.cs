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

namespace cartrade
{
	/// <summary>
	/// successexchange 的摘要说明。
	/// </summary>
	public partial class successexchange : System.Web.UI.Page
	{
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			// 在此处放置用户代码以初始化页面
			Response.Write ("<center>用户已成功换车！</center>");
			Object objtradeid=Session["tradeid"];
			Object objcarid=Session["carid"];
			Object objproyajin=Session["proyajin"];
			Object objprozujin=Session["prozujin"];
			Object objunitpay=Session["unitpay"];
			Object objnote=Session["note"];
			Object objuserid=Session["userid"];
			Object objbegintime=Session["begintime"];
			Object objendtime=Session["endtime"];
			string tradeid=objtradeid.ToString ();
			string carid=objcarid.ToString ();
			string proyajin=objproyajin.ToString ();
			string prozujin=objprozujin.ToString ();
			string unitpay=objunitpay.ToString ();
			string note=objnote.ToString ();
			string userid=objuserid.ToString ();
			string begintime=objbegintime.ToString ();
			string endtime=objendtime.ToString ();
			Label2.Text =tradeid;
			Label3.Text =carid;
			Label8.Text =prozujin;
			Label9.Text=proyajin;
			Label10.Text=unitpay;
			Label11.Text=note;
			Label4.Text =userid;
			Label6.Text =begintime;
			Label7.Text =endtime;

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
	}
}
