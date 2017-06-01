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
	/// driver 的摘要说明。
	/// </summary>
	public class driver : System.Web.UI.Page
	{
		protected System.Web.UI.WebControls.DataGrid DataGrid1;
		protected System.Web.UI.WebControls.RadioButton RadioButton1;
		protected System.Web.UI.WebControls.RadioButton RadioButton2;
		protected System.Web.UI.WebControls.TextBox TextBox1;
		protected System.Web.UI.WebControls.Button Button3;
		protected System.Web.UI.WebControls.Button Button4;
		protected System.Web.UI.WebControls.Button Button5;
		protected System.Web.UI.WebControls.TextBox txt1;
		protected System.Web.UI.WebControls.Label Label1;
		protected System.Web.UI.WebControls.Button Button6;
		protected System.Web.UI.WebControls.TextBox txt2;
		protected System.Web.UI.WebControls.Button Button7;
		protected System.Web.UI.WebControls.TextBox txt5;
		protected System.Web.UI.WebControls.TextBox txt3;
		protected System.Web.UI.WebControls.TextBox txt4;
		protected System.Web.UI.WebControls.Button chaxun;
		protected System.Web.UI.WebControls.Button browse;
		protected System.Web.UI.WebControls.Label Label4;
		protected System.Web.UI.WebControls.Label Label9;
		protected System.Web.UI.WebControls.Label Label5;
		protected System.Web.UI.WebControls.Label Label2;
		protected System.Web.UI.WebControls.Label Label8;
		protected System.Web.UI.WebControls.Label Message;
	
		private void Page_Load(object sender, System.EventArgs e)
		{
			if (!IsPostBack)
			{
				BindGridToSource();//
				string sqlstring = "SELECT * FROM driver";
				SqlConnection MyConnection = new SqlConnection("Persist Security Info=False;Data Source=TEAM1-002;Initial Catalog=pretrade;User ID=sa;Password=");
				SqlCommand MyCommand = new SqlCommand(sqlstring, MyConnection);
				MyConnection.Open();

				db.dbClose();
			}
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
			this.DataGrid1.SelectedIndexChanged += new System.EventHandler(this.DataGrid1_SelectedIndexChanged);
			this.Button7.Click += new System.EventHandler(this.Button7_Click);
			this.Button6.Click += new System.EventHandler(this.Button6_Click);
			this.Button5.Click += new System.EventHandler(this.Button5_Click);
			this.chaxun.Click += new System.EventHandler(this.Button1_Click);
			this.browse.Click += new System.EventHandler(this.Button2_Click);
			this.Button3.Click += new System.EventHandler(this.Button3_Click);
			this.Button4.Click += new System.EventHandler(this.Button4_Click);
			this.Load += new System.EventHandler(this.Page_Load);

		}
		#endregion



		private void BindGridToSource()
		{
			SqlConnection conn = new SqlConnection ("server = TEAM1-002;Database =pretrade;user id = sa;pwd = ;");
			string SelectCommand = "SELECT * from driver";
			SqlDataAdapter MyCommand = new SqlDataAdapter(SelectCommand, conn);
			DataSet ds = new DataSet();
			
			MyCommand.Fill(ds, "driver");
			

			DataView dv = ds.Tables["driver"].DefaultView;
			DataGrid1.DataSource = dv;
			DataGrid1.DataBind();
//			DataGrid1.Dispose();
			ShowPageStatus(dv.Count);			
		}


		private void ShowPageStatus(int nRecords)
		{
			Message.Text = "数据源共有<b><FONT color= #ff0000> " + nRecords + " </FONT></b>笔数据记录。" +
				"总共有<b><FONT color= #ff0000> " + DataGrid1.PageCount + " </FONT></b>页" + "，" +
				"目前是第<b><FONT color= #ff0000> " + (DataGrid1.CurrentPageIndex + 1 ) + " </FONT></b>页。";
		}



		private void Button1_Click(object sender, System.EventArgs e)
		{
			SqlConnection conn = new SqlConnection ("server = TEAM1-002;Database =pretrade;user id = sa;pwd = ;");
			string SelectCommand = "SELECT * from driver";
			SqlDataAdapter MyCommand = new SqlDataAdapter(SelectCommand, conn);
			DataSet ds = new DataSet();
			
    		MyCommand.Fill(ds, "driver");
			

			DataView dv = ds.Tables["driver"].DefaultView;
//			DataGrid1.DataSource = dv;
//			DataGrid1.DataBind();
//			DataGrid1.Dispose();
			ShowPageStatus(dv.Count);
			
			string query=null;
			if(RadioButton1.Checked )
			{

				query="where driverid="+"'"+TextBox1.Text+"'";
				MyCommand.SelectCommand.CommandText ="select driverid, name_driver, employtime_driver, drivetimes_driver, accidenttimes_driver, mobilephone_driver  from driver "+query;
			
//				SqlConnection conn = new SqlConnection ("server = TEAM1-002;Database =pretrade;user id = sa;pwd = ;");
//				string SelectCommand = "SELECT * from driver where driverid="+"'"+TextBox1.Text+"'";
//				SqlDataAdapter MyCommand = new SqlDataAdapter(SelectCommand, conn);
//				DataSet ds = new DataSet();
			
			    MyCommand.Fill(ds, "driver");
			

//				DataView dv = ds.Tables["driver"].DefaultView;
				DataGrid1.DataSource = dv;
				DataGrid1.DataBind();
				ShowPageStatus(dv.Count);



			
			}
			if(RadioButton2.Checked )
			{
				
				query="where name_driver="+"'"+TextBox1.Text+"'";
				MyCommand.SelectCommand.CommandText ="select driverid, name_driver, employtime_driver, drivetimes_driver, accidenttimes_driver, mobilephone_driver  from driver "+query;
//				SqlConnection conn = new SqlConnection ("server = TEAM1-002;Database =pretrade;user id = sa;pwd = ;");
//				string SelectCommand = "SELECT * from driver where name_driver="+"'"+TextBox1.Text+"'";
//				SqlDataAdapter MyCommand = new SqlDataAdapter(SelectCommand, conn);
//				DataSet ds = new DataSet();
//			
     			
//			
//             
				//ds=null;

				MyCommand.Fill(ds, "driver");
				//dv = ds.Tables["driver"].d;
//				DataGrid1.EnableViewState=false;
				DataGrid1.DataSource = ds.Tables["driver"];
				DataGrid1.DataBind();
				ShowPageStatus(dv.Count);
			
			
			
			}
			
			//MyCommand.Fill(ds,"driver");
//			this.DataBind();
			conn.Close();
		}

		private void Button2_Click(object sender, System.EventArgs e)
		{
			SqlConnection conn = new SqlConnection ("server = TEAM1-002;Database =pretrade;user id = sa;pwd = ;");
			string SelectCommand = "SELECT * from driver";
			SqlDataAdapter MyCommand = new SqlDataAdapter(SelectCommand, conn);
			DataSet ds = new DataSet();
			
			//			MyCommand.Fill(ds, "driver");
			
//
//			DataView dv = ds.Tables["driver"].DefaultView;
//			DataGrid1.DataSource = dv;
//			DataGrid1.DataBind();
//			ShowPageStatus(dv.Count);			

			
			MyCommand.Fill(ds,"driver");
			this.DataBind();
			conn.Close();
		}

		private void DataGrid1_SelectedIndexChanged(object sender, System.EventArgs e)
		{
		
		}

		private void Button3_Click(object sender, System.EventArgs e)
		{
			SqlConnection conn = new SqlConnection ("server = TEAM1-002;Database =pretrade;user id = sa;pwd = ;");
			string SelectCommand = "SELECT * from driver";
			SqlDataAdapter MyCommand = new SqlDataAdapter(SelectCommand, conn);
			DataSet ds = new DataSet();
			
			//			MyCommand.Fill(ds, "driver");
			

//			DataView dv = ds.Tables["driver"].DefaultView;
//			DataGrid1.DataSource = dv;
//			DataGrid1.DataBind();
//			ShowPageStatus(dv.Count);


			MyCommand.SelectCommand.CommandText="select driverid, name_driver, employtime_driver, drivetimes_driver, accidenttimes_driver, mobilephone_driver  from driver order by accidenttimes_driver asc";
			MyCommand.Fill(ds,"driver");
			this.DataBind();
			conn.Close();
		
		}

		private void Button4_Click(object sender, System.EventArgs e)
		{
			SqlConnection conn = new SqlConnection ("server = TEAM1-002;Database =pretrade;user id = sa;pwd = ;");
			string SelectCommand = "SELECT * from driver";
			SqlDataAdapter MyCommand = new SqlDataAdapter(SelectCommand, conn);
			DataSet ds = new DataSet();
			
			//			MyCommand.Fill(ds, "driver");
			

//			DataView dv = ds.Tables["driver"].DefaultView;
//			DataGrid1.DataSource = dv;
//			DataGrid1.DataBind();
//			ShowPageStatus(dv.Count);

			
			MyCommand.SelectCommand.CommandText="select driverid, name_driver, employtime_driver, drivetimes_driver, accidenttimes_driver, mobilephone_driver  from driver order by drivetimes_driver desc";
			MyCommand.Fill(ds,"driver");
			this.DataBind();	
			conn.Close();
		}

		private void sqlConnection1_InfoMessage(object sender, System.Data.SqlClient.SqlInfoMessageEventArgs e)
		{
		
		}

		private void Button5_Click(object sender, System.EventArgs e)
		{
			SqlConnection conn = new SqlConnection ("server = TEAM1-002;Database = pretrade;user id = sa;pwd = ;");
			string txt_1="";
			txt_1=txt1.Text;
			string sql="delete from driver where name_driver = '"+txt_1+"'";
			conn.Open();
//			SqlCommand comm = new SqlCommand(sql,conn);
			SqlDataAdapter comm = new SqlDataAdapter(sql, conn);
			DataSet ds = new DataSet();
//			SqlDataReader dr = comm.ExecuteReader();
			comm.Dispose();

			//DataGrid1.ItemStyle.BackColor ="#00C000";
			comm.Fill(ds,"driver");
			this.DataBind();
			conn.Close();
		}

		private void Button6_Click(object sender, System.EventArgs e)
		{
			SqlConnection conn = new SqlConnection ("server = TEAM1-002;Database = pretrade;user id = sa;pwd = ;");
			string txt_1 = "";
			string txt_2 = "";
			txt_1 = txt1.Text ;
			txt_2 = txt2.Text ;
//			MyCommand.SelectCommand.CommandText ="select * from driver where name_driver='"+txt_2+"'";
			string sql = "select * from driver where name_driver = '"+txt_2+"'";
			conn.Open();
			SqlDataAdapter comm = new SqlDataAdapter(sql, conn);
//			SqlDataReader dr = comm.ExecuteReader(); 
			
			DataSet ds = new DataSet();


			comm.Fill(ds,"driver");
			this.DataBind ();
			comm.Dispose();
			conn.Close();
		}

		private void Button7_Click(object sender, System.EventArgs e)
		{
			SqlConnection conn = new SqlConnection ("server=.;Database = pretrade;user id = sa;pwd = ;");//team1-002
			string txt_2="";
			string txt_3 = "";
			string txt_4 = "";
			string txt_5 = "";
			txt_2= txt2.Text ;
			txt_3 = txt3.Text ;
			txt_4 = txt4.Text ;
			txt_5 = txt5.Text ;
			string sql = "update driver set driverid='"+txt_3+"',drivetimes_driver='"+txt_4+"',accidenttimes_driver='"+txt_5+"'where name_driver='"+txt_2+"'";
			conn.Open();
			SqlDataAdapter comm = new SqlDataAdapter(sql, conn);
			DataSet ds = new DataSet();
//			SqlDataReader dr = comm.ExecuteReader();
			comm.Dispose();
			conn.Close();
			comm.Fill(ds,"driver");
			this.DataBind ();
		}
	}





}

