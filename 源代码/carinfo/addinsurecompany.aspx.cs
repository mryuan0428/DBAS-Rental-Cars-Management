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

namespace WebApplication4
{
	/// <summary>
	/// addinsurecompany 的摘要说明。
	/// </summary>
	public partial class addinsurecompany : System.Web.UI.Page
	{
		//protected System.Data.SqlClient.SqlCommand sqlSelectCommand1;
		//protected System.Data.SqlClient.SqlCommand sqlInsertCommand1;
		//protected System.Data.SqlClient.SqlCommand sqlUpdateCommand1;
		//protected System.Data.SqlClient.SqlCommand sqlDeleteCommand1;
		//protected System.Data.SqlClient.SqlConnection sqlConnection1;
		//protected WebApplication4.DataSet18 dataSet181;
		//protected System.Data.SqlClient.SqlDataAdapter sqlDataAdapter1;
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			if(!this.IsPostBack)
			{
				BindGridToSource();
			}
			// 在此处放置用户代码以初始化页面
		}

		private void BindGridToSource()
		{
			string SelectCommand = "SELECT * FROM insurecompany";
            DBClass db = new DBClass(SelectCommand);
			DataSet ds = new DataSet();
            ds = db.returnSet("insurecompany");
			DataView dv = ds.Tables["insurecompany"].DefaultView;
			DataGrid1.DataSource = dv;
			DataGrid1.DataBind();
			ShowPageStatus(dv.Count);			
		}
		private void ShowPageStatus(int nRecords)
		{
			Message.Text = "数据源共有<b><FONT color= #ff0000> " + nRecords + " </FONT></b>笔数据记录。" +
				"总共有<b><FONT color= #ff0000> " + DataGrid1.PageCount + " </FONT></b>页" + "，" +
				"目前是第<b><FONT color= #ff0000> " + (DataGrid1.CurrentPageIndex + 1 ) + " </FONT></b>页。";
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
			this.DataGrid1.PageIndexChanged += new System.Web.UI.WebControls.DataGridPageChangedEventHandler(this.DataGrid1_PageIndexChanged);

		}
		#endregion

		private void DataGrid1_PageIndexChanged(object source, System.Web.UI.WebControls.DataGridPageChangedEventArgs e)
		{
			DataGrid1.CurrentPageIndex = e.NewPageIndex;
			BindGridToSource();
		}

		protected void Button2_Click(object sender, System.EventArgs e)
		{
			Response.Redirect ("main.aspx");
		}

		protected void Button1_Click(object sender, System.EventArgs e)
		{
			if (TextBox1.Text == "") 
			{ 
				ErrorMsg.Text="请输入保险公司名称！";
				return; 
			}
			string txt1=TextBox1.Text;
			string sql="insert into insurecompany(保险公司) values('"+txt1+"')";
            DBClass db = new DBClass(sql);
            db.returndr();
            db.dbClose();
			Response.Redirect ("addinsurecompany.aspx");
		}

		protected void Button3_Click(object sender, System.EventArgs e)
		{
			string txt2=TextBox2.Text;
			string sql="delete from insurecompany where 保险公司序号='"+txt2+"'";
            DBClass db = new DBClass(sql);
            db.returndr();
            db.dbClose();
			Response.Redirect ("addinsurecompany.aspx");
		}
	}
}
