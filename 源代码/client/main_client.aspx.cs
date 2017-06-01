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

namespace client.client
{
	/// <summary>
	/// main_client 的摘要说明。
	/// </summary>
	public partial class main_client : System.Web.UI.Page
	{
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			// 在此处放置用户代码以初始化页面

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

		protected void edit_person_Click(object sender, System.EventArgs e)
		{
			string userid_personinfo = TextBox1.Text;
			Response.Redirect("edit_person.aspx?userid_personinfo="+userid_personinfo+"");
		}

		protected void edit_company_Click(object sender, System.EventArgs e)
		{
			string userid_companyinfo = TextBox2.Text;
			Response.Redirect("edit_company.aspx?userid_companyinfo="+userid_companyinfo+"");

		}

		protected void del_person_Click(object sender, System.EventArgs e)
		{
			string userid_personinfo = TextBox3.Text;
			Response.Redirect("del_person.aspx?userid_personinfo="+userid_personinfo+"");
		
		}

		protected void del_company_Click(object sender, System.EventArgs e)
		{
			string userid_companyinfo = TextBox4.Text;
			Response.Redirect("del_company.aspx?userid_companyinfo="+userid_companyinfo+"");
		
		}

		protected void search_person_Click(object sender, System.EventArgs e)
		{
			string userid_personinfo = TextBox5.Text;
			Response.Redirect("search_person.aspx?userid_personinfo="+userid_personinfo+"");
		}

		protected void search_company_Click(object sender, System.EventArgs e)
		{
			string userid_companyinfo = TextBox6.Text;
			Response.Redirect("search_company.aspx?userid_companyinfo="+userid_companyinfo+"");
		}


	}
}
