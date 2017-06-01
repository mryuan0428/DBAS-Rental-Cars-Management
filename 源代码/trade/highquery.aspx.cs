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
	/// highquery 的摘要说明。
	/// </summary>
	public partial class highquery : System.Web.UI.Page
	{
		protected System.Data.SqlClient.SqlCommand sqlSelectCommand1;
		protected System.Data.SqlClient.SqlCommand sqlInsertCommand1;
		protected System.Data.SqlClient.SqlDataAdapter sqlDataAdapter1;
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			// 在此处放置用户代码以初始化页面
			if (!IsPostBack)
			{
				BindGridToSource();
				string sql = "select * from trade";
                DBClass db = new DBClass(sql);
                db.returndr();
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
			this.sqlSelectCommand1 = new System.Data.SqlClient.SqlCommand();
			this.sqlInsertCommand1 = new System.Data.SqlClient.SqlCommand();
			this.sqlDataAdapter1 = new System.Data.SqlClient.SqlDataAdapter();
			this.DataGrid1.PageIndexChanged += new System.Web.UI.WebControls.DataGridPageChangedEventHandler(this.DataGrid1_PageIndexChanged);
			// 
			// sqlSelectCommand1
			// 
			this.sqlSelectCommand1.CommandText = @"SELECT tradeid, userid, carid, begintime, endtime, nextpaytime, usertype, insurename, insureaddress, insurephone, paytype, rcdtime, operid, jiesuan, netpay, unitpay, subpoint, ownpay, jiesuantime, paytime, proyajin, prozujin, moneychangereason, checknum, note FROM trade";
			// 
			// sqlInsertCommand1
			// 
			this.sqlInsertCommand1.CommandText = @"INSERT INTO trade(tradeid, userid, carid, begintime, endtime, nextpaytime, usertype, insurename, insureaddress, insurephone, paytype, rcdtime, operid, jiesuan, netpay, unitpay, subpoint, ownpay, jiesuantime, paytime, proyajin, prozujin, moneychangereason, checknum, note) VALUES (@tradeid, @userid, @carid, @begintime, @endtime, @nextpaytime, @usertype, @insurename, @insureaddress, @insurephone, @paytype, @rcdtime, @operid, @jiesuan, @netpay, @unitpay, @subpoint, @ownpay, @jiesuantime, @paytime, @proyajin, @prozujin, @moneychangereason, @checknum, @note); SELECT tradeid, userid, carid, begintime, endtime, nextpaytime, usertype, insurename, insureaddress, insurephone, paytype, rcdtime, operid, jiesuan, netpay, unitpay, subpoint, ownpay, jiesuantime, paytime, proyajin, prozujin, moneychangereason, checknum, note FROM trade";
			this.sqlInsertCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@tradeid", System.Data.SqlDbType.NVarChar, 10, "tradeid"));
			this.sqlInsertCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@userid", System.Data.SqlDbType.NVarChar, 10, "userid"));
			this.sqlInsertCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@carid", System.Data.SqlDbType.NVarChar, 10, "carid"));
			this.sqlInsertCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@begintime", System.Data.SqlDbType.DateTime, 4, "begintime"));
			this.sqlInsertCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@endtime", System.Data.SqlDbType.DateTime, 4, "endtime"));
			this.sqlInsertCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@nextpaytime", System.Data.SqlDbType.DateTime, 4, "nextpaytime"));
			this.sqlInsertCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@usertype", System.Data.SqlDbType.VarChar, 100, "usertype"));
			this.sqlInsertCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@insurename", System.Data.SqlDbType.NVarChar, 50, "insurename"));
			this.sqlInsertCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@insureaddress", System.Data.SqlDbType.NVarChar, 60, "insureaddress"));
			this.sqlInsertCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@insurephone", System.Data.SqlDbType.NVarChar, 30, "insurephone"));
			this.sqlInsertCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@paytype", System.Data.SqlDbType.NVarChar, 30, "paytype"));
			this.sqlInsertCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@rcdtime", System.Data.SqlDbType.DateTime, 4, "rcdtime"));
			this.sqlInsertCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@operid", System.Data.SqlDbType.Int, 4, "operid"));
			this.sqlInsertCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@jiesuan", System.Data.SqlDbType.VarChar, 10, "jiesuan"));
			this.sqlInsertCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@netpay", System.Data.SqlDbType.Money, 8, "netpay"));
			this.sqlInsertCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@unitpay", System.Data.SqlDbType.Money, 8, "unitpay"));
			this.sqlInsertCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@subpoint", System.Data.SqlDbType.Int, 4, "subpoint"));
			this.sqlInsertCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@ownpay", System.Data.SqlDbType.Money, 8, "ownpay"));
			this.sqlInsertCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@jiesuantime", System.Data.SqlDbType.DateTime, 4, "jiesuantime"));
			this.sqlInsertCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@paytime", System.Data.SqlDbType.DateTime, 4, "paytime"));
			this.sqlInsertCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@proyajin", System.Data.SqlDbType.Money, 8, "proyajin"));
			this.sqlInsertCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@prozujin", System.Data.SqlDbType.Money, 8, "prozujin"));
			this.sqlInsertCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@moneychangereason", System.Data.SqlDbType.NVarChar, 10, "moneychangereason"));
			this.sqlInsertCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@checknum", System.Data.SqlDbType.Int, 4, "checknum"));
			this.sqlInsertCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@note", System.Data.SqlDbType.NVarChar, 100, "note"));
			// 
			// sqlDataAdapter1
			// 
			this.sqlDataAdapter1.InsertCommand = this.sqlInsertCommand1;
			this.sqlDataAdapter1.SelectCommand = this.sqlSelectCommand1;
			this.sqlDataAdapter1.TableMappings.AddRange(new System.Data.Common.DataTableMapping[] {
																									  new System.Data.Common.DataTableMapping("Table", "trade", new System.Data.Common.DataColumnMapping[] {
																																																			   new System.Data.Common.DataColumnMapping("tradeid", "tradeid"),
																																																			   new System.Data.Common.DataColumnMapping("userid", "userid"),
																																																			   new System.Data.Common.DataColumnMapping("carid", "carid"),
																																																			   new System.Data.Common.DataColumnMapping("begintime", "begintime"),
																																																			   new System.Data.Common.DataColumnMapping("endtime", "endtime"),
																																																			   new System.Data.Common.DataColumnMapping("nextpaytime", "nextpaytime"),
																																																			   new System.Data.Common.DataColumnMapping("usertype", "usertype"),
																																																			   new System.Data.Common.DataColumnMapping("insurename", "insurename"),
																																																			   new System.Data.Common.DataColumnMapping("insureaddress", "insureaddress"),
																																																			   new System.Data.Common.DataColumnMapping("insurephone", "insurephone"),
																																																			   new System.Data.Common.DataColumnMapping("paytype", "paytype"),
																																																			   new System.Data.Common.DataColumnMapping("rcdtime", "rcdtime"),
																																																			   new System.Data.Common.DataColumnMapping("operid", "operid"),
																																																			   new System.Data.Common.DataColumnMapping("jiesuan", "jiesuan"),
																																																			   new System.Data.Common.DataColumnMapping("netpay", "netpay"),
																																																			   new System.Data.Common.DataColumnMapping("unitpay", "unitpay"),
																																																			   new System.Data.Common.DataColumnMapping("subpoint", "subpoint"),
																																																			   new System.Data.Common.DataColumnMapping("ownpay", "ownpay"),
																																																			   new System.Data.Common.DataColumnMapping("jiesuantime", "jiesuantime"),
																																																			   new System.Data.Common.DataColumnMapping("paytime", "paytime"),
																																																			   new System.Data.Common.DataColumnMapping("proyajin", "proyajin"),
																																																			   new System.Data.Common.DataColumnMapping("prozujin", "prozujin"),
																																																			   new System.Data.Common.DataColumnMapping("moneychangereason", "moneychangereason"),
																																																			   new System.Data.Common.DataColumnMapping("checknum", "checknum"),
																																																			   new System.Data.Common.DataColumnMapping("note", "note")})});

		}

		public void PageChanger(object sender,DataGridPageChangedEventArgs e)
		{
			DataGrid1.CurrentPageIndex =e.NewPageIndex ;
			DataGrid1.DataSource=CreateSource ("select * from trade","trade");
			DataGrid1.DataBind ();
		}
		public ICollection CreateSource(string sqlstr,string dTable)
		{
			SqlConnection conn = new SqlConnection ("server =.;Database =pretrade;user id = sa;pwd = ;");
			DataSet ds=new DataSet ();
			sqlDataAdapter1=new SqlDataAdapter (sqlstr,conn);
			sqlDataAdapter1.Fill (ds,dTable);
			return ds.Tables [dTable].DefaultView ;
		}
		#endregion

		private void BindGridToSource()
		{
			string SelectCommand = "select * from trade";
            DBClass db = new DBClass(SelectCommand);
			DataSet ds = new DataSet();
			ds = db.returnSet("trade");
			DataView dv = ds.Tables["trade"].DefaultView;
			DataGrid1.DataSource = dv;
			DataGrid1.DataBind();
			ShowPageStatus(dv.Count);
            db.dbClose();
		}	

		private void ShowPageStatus(int nRecords)
		{
			Message.Text = "数据源共有<b><FONT color= #ff0000> " + nRecords + " </FONT></b>笔数据记录。" +
				"总共有<b><FONT color= #ff0000> " + DataGrid1.PageCount + " </FONT></b>页" + "，" +
				"目前是第<b><FONT color= #ff0000> " + (DataGrid1.CurrentPageIndex + 1 ) + " </FONT></b>页。";
		}

		private void DataGrid1_PageIndexChanged(object source, System.Web.UI.WebControls.DataGridPageChangedEventArgs e)
		{
			DataGrid1.CurrentPageIndex = e.NewPageIndex;
			BindGridToSource();
		}

		protected void Button1_Click(object sender, System.EventArgs e)
		{
			string query1 ="";
			string query3="";
			if(DropDownList1.SelectedIndex==0)
			{
				query1 ="tradeid="+"'"+TextBox1.Text +"'";
				query3 ="tradeid!="+"'"+TextBox1.Text +"'";
			}
			if(DropDownList1.SelectedIndex==1)
			{
				query1 ="carid="+"'"+TextBox1.Text +"'";
				query3 ="carid!="+"'"+TextBox1.Text +"'";
			}
			if(DropDownList1.SelectedIndex==2)
			{
				query1 ="userid="+"'"+TextBox1.Text +"'";
				query3 ="userid!="+"'"+TextBox1.Text +"'";
			}
			if(DropDownList1.SelectedIndex==3)
			{
				query1 ="operid="+"'"+TextBox1.Text  +"'";
				query3 ="operid!="+"'"+TextBox1.Text +"'";
			}
			if(DropDownList1.SelectedIndex==4)
			{
				query1 ="subpoint="+"'"+TextBox1.Text +"'";
				query3 ="subpoint!="+"'"+TextBox1.Text +"'";
			}
			if(DropDownList1.SelectedIndex==5)
			{
				query1 ="begintime="+"'"+TextBox1.Text+"'";
				query3 ="begintime!="+"'"+TextBox1.Text +"'";
			}
			if(DropDownList1.SelectedIndex==6)
			{
				query1 ="endtime="+"'"+TextBox1.Text+"'";
				query3 ="endtime!="+"'"+TextBox1.Text +"'";
			}

			string query2 ="";
			string query4="";
			if(DropDownList3.SelectedIndex==0)
			{
				query2 ="tradeid="+"'"+TextBox2.Text  +"'";
				query4 ="tradeid!="+"'"+TextBox2.Text +"'";
			}
			if(DropDownList3.SelectedIndex==1)
			{
				query2 ="carid="+"'"+TextBox2.Text  +"'";
				query4 ="carid!="+"'"+TextBox2.Text +"'";
			}
			if(DropDownList3.SelectedIndex==2)
			{
				query2 ="userid="+"'"+TextBox2.Text +"'";
				query4 ="userid!="+"'"+TextBox2.Text +"'";
			}
			if(DropDownList3.SelectedIndex==3)
			{
				query2 ="operid="+"'"+TextBox2.Text +"'";
				query4 ="operid!="+"'"+TextBox2.Text +"'";
			}
			if(DropDownList3.SelectedIndex==4)
			{
				query2 ="subpoint="+"'"+TextBox2.Text  +"'";
				query4 ="subpoint!="+"'"+TextBox2.Text +"'";
			}
			if(DropDownList3.SelectedIndex==5)
			{
				query2 ="begintime="+"'"+TextBox2.Text +"'";
				query4 ="begintime!="+"'"+TextBox2.Text +"'";
			}
			if(DropDownList3.SelectedIndex==6)
			{
				query2 ="endtime="+"'"+TextBox2.Text+"'";
				query4 ="endtime!="+"'"+TextBox2.Text +"'";
			}

			string sql="";
			if(TextBox1.Text == "")
			{
				sql= "select * from trade where "+query2;
			}
			else 
				if(TextBox2.Text =="")
			{
				sql = "select * from trade where "+query1;
			}
			else
			{
				if(DropDownList2.SelectedIndex ==0)
				{
					sql = "select * from trade where "+query1+ " and " +query2;
				}
				if(DropDownList2.SelectedIndex ==1)
				{
					sql = "select * from trade where "+query1+ " or " +query2;
				}
				if(DropDownList2.SelectedIndex ==2)
				{
					sql = "select * from trade where "+query3+ " and " +query4;
				}
			}
            DBClass db = new DBClass(sql);
			DataSet ds = new DataSet();
			ds =db.returnSet("trade");
			DataView dv = ds.Tables["trade"].DefaultView;
			DataGrid1.DataSource = dv;
			DataGrid1.DataBind();
			ShowPageStatus(dv.Count);
            db.dbClose();
		}
	}
}
