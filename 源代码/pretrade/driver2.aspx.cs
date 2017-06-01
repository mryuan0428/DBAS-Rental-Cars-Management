//===========================================================================
// 此文件是作为 ASP.NET 2.0 Web 项目转换的一部分修改的。
// 类名已更改，且类已修改为从文件“App_Code\Migrated\pretrade\Stub_driver2_aspx_cs.cs”的抽象基类 
// 继承。
// 在运行时，此项允许您的 Web 应用程序中的其他类使用该抽象基类绑定和访问 
// 代码隐藏页。
// 关联的内容页“pretrade\driver2.aspx”也已修改，以引用新的类名。
// 有关此代码模式的更多信息，请参考 http://go.microsoft.com/fwlink/?LinkId=46995 
//===========================================================================
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
	public partial class Migrated_driver : driver
	{
		protected System.Data.SqlClient.SqlConnection sqlConnection1;
		protected System.Data.SqlClient.SqlCommand sqlSelectCommand1;
		protected System.Data.SqlClient.SqlCommand sqlInsertCommand1;
		protected System.Data.SqlClient.SqlCommand sqlUpdateCommand1;
		protected System.Data.SqlClient.SqlCommand sqlDeleteCommand1;
		protected System.Data.SqlClient.SqlDataAdapter sqlDataAdapter1;
		protected HLBD.pretrade.DataSet1 dataSet11;
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			if(!this.IsPostBack)
			{
				sqlDataAdapter1.Fill(dataSet11,"driver");
				this.DataBind();	}	
	
			Label1.Visible = false;
			Label2.Visible = false;
			Label8.Visible = false;
			Label4.Visible = false;
			Label5.Visible = false;
			Label9.Visible = false;
			txt1.Visible=false;
			txt2.Visible=false;
			txt3.Visible=false;
			txt4.Visible=false;
			txt5.Visible=false;		
			Button5.Visible=false;
			Button6.Visible=false;
			Button7.Visible=false;
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
			this.sqlConnection1 = new System.Data.SqlClient.SqlConnection();
			this.sqlSelectCommand1 = new System.Data.SqlClient.SqlCommand();
			this.sqlInsertCommand1 = new System.Data.SqlClient.SqlCommand();
			this.sqlUpdateCommand1 = new System.Data.SqlClient.SqlCommand();
			this.sqlDeleteCommand1 = new System.Data.SqlClient.SqlCommand();
			this.sqlDataAdapter1 = new System.Data.SqlClient.SqlDataAdapter();
			this.dataSet11 = new HLBD.pretrade.DataSet1();
			((System.ComponentModel.ISupportInitialize)(this.dataSet11)).BeginInit();
			// 
			// sqlConnection1
			// 
			this.sqlConnection1.ConnectionString = "workstation id=\"HAO-HOME\";packet size=4096;user id=sa;pwd=;data source=\".\";persis" +
				"t security info=False;initial catalog=pretrade";
			// 
			// sqlSelectCommand1
			// 
			this.sqlSelectCommand1.CommandText = "SELECT driverid, name_driver, employtime_driver, drivetimes_driver, accidenttimes" +
				"_driver, cardtype_driver, idcard_driver, mobilephone_driver, address_driver, pos" +
				"tcode_driver FROM driver";
			this.sqlSelectCommand1.Connection = this.sqlConnection1;
			// 
			// sqlInsertCommand1
			// 
			this.sqlInsertCommand1.CommandText = @"INSERT INTO driver(driverid, name_driver, employtime_driver, drivetimes_driver, accidenttimes_driver, cardtype_driver, idcard_driver, mobilephone_driver, address_driver, postcode_driver) VALUES (@driverid, @name_driver, @employtime_driver, @drivetimes_driver, @accidenttimes_driver, @cardtype_driver, @idcard_driver, @mobilephone_driver, @address_driver, @postcode_driver); SELECT driverid, name_driver, employtime_driver, drivetimes_driver, accidenttimes_driver, cardtype_driver, idcard_driver, mobilephone_driver, address_driver, postcode_driver FROM driver WHERE (driverid = @driverid)";
			this.sqlInsertCommand1.Connection = this.sqlConnection1;
			this.sqlInsertCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@driverid", System.Data.SqlDbType.VarChar, 10, "driverid"));
			this.sqlInsertCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@name_driver", System.Data.SqlDbType.VarChar, 10, "name_driver"));
			this.sqlInsertCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@employtime_driver", System.Data.SqlDbType.DateTime, 8, "employtime_driver"));
			this.sqlInsertCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@drivetimes_driver", System.Data.SqlDbType.Int, 4, "drivetimes_driver"));
			this.sqlInsertCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@accidenttimes_driver", System.Data.SqlDbType.Int, 4, "accidenttimes_driver"));
			this.sqlInsertCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@cardtype_driver", System.Data.SqlDbType.VarChar, 10, "cardtype_driver"));
			this.sqlInsertCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@idcard_driver", System.Data.SqlDbType.VarChar, 30, "idcard_driver"));
			this.sqlInsertCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@mobilephone_driver", System.Data.SqlDbType.VarChar, 15, "mobilephone_driver"));
			this.sqlInsertCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@address_driver", System.Data.SqlDbType.VarChar, 50, "address_driver"));
			this.sqlInsertCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@postcode_driver", System.Data.SqlDbType.VarChar, 7, "postcode_driver"));
			// 
			// sqlUpdateCommand1
			// 
			this.sqlUpdateCommand1.CommandText = "UPDATE driver SET driverid = @driverid, name_driver = @name_driver, employtime_dr" +
				"iver = @employtime_driver, drivetimes_driver = @drivetimes_driver, accidenttimes" +
				"_driver = @accidenttimes_driver, cardtype_driver = @cardtype_driver, idcard_driv" +
				"er = @idcard_driver, mobilephone_driver = @mobilephone_driver, address_driver = " +
				"@address_driver, postcode_driver = @postcode_driver WHERE (driverid = @Original_" +
				"driverid) AND (accidenttimes_driver = @Original_accidenttimes_driver OR @Origina" +
				"l_accidenttimes_driver IS NULL AND accidenttimes_driver IS NULL) AND (address_dr" +
				"iver = @Original_address_driver OR @Original_address_driver IS NULL AND address_" +
				"driver IS NULL) AND (cardtype_driver = @Original_cardtype_driver OR @Original_ca" +
				"rdtype_driver IS NULL AND cardtype_driver IS NULL) AND (drivetimes_driver = @Ori" +
				"ginal_drivetimes_driver OR @Original_drivetimes_driver IS NULL AND drivetimes_dr" +
				"iver IS NULL) AND (employtime_driver = @Original_employtime_driver OR @Original_" +
				"employtime_driver IS NULL AND employtime_driver IS NULL) AND (idcard_driver = @O" +
				"riginal_idcard_driver OR @Original_idcard_driver IS NULL AND idcard_driver IS NU" +
				"LL) AND (mobilephone_driver = @Original_mobilephone_driver OR @Original_mobileph" +
				"one_driver IS NULL AND mobilephone_driver IS NULL) AND (name_driver = @Original_" +
				"name_driver OR @Original_name_driver IS NULL AND name_driver IS NULL) AND (postc" +
				"ode_driver = @Original_postcode_driver OR @Original_postcode_driver IS NULL AND " +
				"postcode_driver IS NULL); SELECT driverid, name_driver, employtime_driver, drive" +
				"times_driver, accidenttimes_driver, cardtype_driver, idcard_driver, mobilephone_" +
				"driver, address_driver, postcode_driver FROM driver WHERE (driverid = @driverid)" +
				"";
			this.sqlUpdateCommand1.Connection = this.sqlConnection1;
			this.sqlUpdateCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@driverid", System.Data.SqlDbType.VarChar, 10, "driverid"));
			this.sqlUpdateCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@name_driver", System.Data.SqlDbType.VarChar, 10, "name_driver"));
			this.sqlUpdateCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@employtime_driver", System.Data.SqlDbType.DateTime, 8, "employtime_driver"));
			this.sqlUpdateCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@drivetimes_driver", System.Data.SqlDbType.Int, 4, "drivetimes_driver"));
			this.sqlUpdateCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@accidenttimes_driver", System.Data.SqlDbType.Int, 4, "accidenttimes_driver"));
			this.sqlUpdateCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@cardtype_driver", System.Data.SqlDbType.VarChar, 10, "cardtype_driver"));
			this.sqlUpdateCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@idcard_driver", System.Data.SqlDbType.VarChar, 30, "idcard_driver"));
			this.sqlUpdateCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@mobilephone_driver", System.Data.SqlDbType.VarChar, 15, "mobilephone_driver"));
			this.sqlUpdateCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@address_driver", System.Data.SqlDbType.VarChar, 50, "address_driver"));
			this.sqlUpdateCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@postcode_driver", System.Data.SqlDbType.VarChar, 7, "postcode_driver"));
			this.sqlUpdateCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Original_driverid", System.Data.SqlDbType.VarChar, 10, System.Data.ParameterDirection.Input, false, ((System.Byte)(0)), ((System.Byte)(0)), "driverid", System.Data.DataRowVersion.Original, null));
			this.sqlUpdateCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Original_accidenttimes_driver", System.Data.SqlDbType.Int, 4, System.Data.ParameterDirection.Input, false, ((System.Byte)(0)), ((System.Byte)(0)), "accidenttimes_driver", System.Data.DataRowVersion.Original, null));
			this.sqlUpdateCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Original_address_driver", System.Data.SqlDbType.VarChar, 50, System.Data.ParameterDirection.Input, false, ((System.Byte)(0)), ((System.Byte)(0)), "address_driver", System.Data.DataRowVersion.Original, null));
			this.sqlUpdateCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Original_cardtype_driver", System.Data.SqlDbType.VarChar, 10, System.Data.ParameterDirection.Input, false, ((System.Byte)(0)), ((System.Byte)(0)), "cardtype_driver", System.Data.DataRowVersion.Original, null));
			this.sqlUpdateCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Original_drivetimes_driver", System.Data.SqlDbType.Int, 4, System.Data.ParameterDirection.Input, false, ((System.Byte)(0)), ((System.Byte)(0)), "drivetimes_driver", System.Data.DataRowVersion.Original, null));
			this.sqlUpdateCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Original_employtime_driver", System.Data.SqlDbType.DateTime, 8, System.Data.ParameterDirection.Input, false, ((System.Byte)(0)), ((System.Byte)(0)), "employtime_driver", System.Data.DataRowVersion.Original, null));
			this.sqlUpdateCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Original_idcard_driver", System.Data.SqlDbType.VarChar, 30, System.Data.ParameterDirection.Input, false, ((System.Byte)(0)), ((System.Byte)(0)), "idcard_driver", System.Data.DataRowVersion.Original, null));
			this.sqlUpdateCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Original_mobilephone_driver", System.Data.SqlDbType.VarChar, 15, System.Data.ParameterDirection.Input, false, ((System.Byte)(0)), ((System.Byte)(0)), "mobilephone_driver", System.Data.DataRowVersion.Original, null));
			this.sqlUpdateCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Original_name_driver", System.Data.SqlDbType.VarChar, 10, System.Data.ParameterDirection.Input, false, ((System.Byte)(0)), ((System.Byte)(0)), "name_driver", System.Data.DataRowVersion.Original, null));
			this.sqlUpdateCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Original_postcode_driver", System.Data.SqlDbType.VarChar, 7, System.Data.ParameterDirection.Input, false, ((System.Byte)(0)), ((System.Byte)(0)), "postcode_driver", System.Data.DataRowVersion.Original, null));
			// 
			// sqlDeleteCommand1
			// 
			this.sqlDeleteCommand1.CommandText = @"DELETE FROM driver WHERE (driverid = @Original_driverid) AND (accidenttimes_driver = @Original_accidenttimes_driver OR @Original_accidenttimes_driver IS NULL AND accidenttimes_driver IS NULL) AND (address_driver = @Original_address_driver OR @Original_address_driver IS NULL AND address_driver IS NULL) AND (cardtype_driver = @Original_cardtype_driver OR @Original_cardtype_driver IS NULL AND cardtype_driver IS NULL) AND (drivetimes_driver = @Original_drivetimes_driver OR @Original_drivetimes_driver IS NULL AND drivetimes_driver IS NULL) AND (employtime_driver = @Original_employtime_driver OR @Original_employtime_driver IS NULL AND employtime_driver IS NULL) AND (idcard_driver = @Original_idcard_driver OR @Original_idcard_driver IS NULL AND idcard_driver IS NULL) AND (mobilephone_driver = @Original_mobilephone_driver OR @Original_mobilephone_driver IS NULL AND mobilephone_driver IS NULL) AND (name_driver = @Original_name_driver OR @Original_name_driver IS NULL AND name_driver IS NULL) AND (postcode_driver = @Original_postcode_driver OR @Original_postcode_driver IS NULL AND postcode_driver IS NULL)";
			this.sqlDeleteCommand1.Connection = this.sqlConnection1;
			this.sqlDeleteCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Original_driverid", System.Data.SqlDbType.VarChar, 10, System.Data.ParameterDirection.Input, false, ((System.Byte)(0)), ((System.Byte)(0)), "driverid", System.Data.DataRowVersion.Original, null));
			this.sqlDeleteCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Original_accidenttimes_driver", System.Data.SqlDbType.Int, 4, System.Data.ParameterDirection.Input, false, ((System.Byte)(0)), ((System.Byte)(0)), "accidenttimes_driver", System.Data.DataRowVersion.Original, null));
			this.sqlDeleteCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Original_address_driver", System.Data.SqlDbType.VarChar, 50, System.Data.ParameterDirection.Input, false, ((System.Byte)(0)), ((System.Byte)(0)), "address_driver", System.Data.DataRowVersion.Original, null));
			this.sqlDeleteCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Original_cardtype_driver", System.Data.SqlDbType.VarChar, 10, System.Data.ParameterDirection.Input, false, ((System.Byte)(0)), ((System.Byte)(0)), "cardtype_driver", System.Data.DataRowVersion.Original, null));
			this.sqlDeleteCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Original_drivetimes_driver", System.Data.SqlDbType.Int, 4, System.Data.ParameterDirection.Input, false, ((System.Byte)(0)), ((System.Byte)(0)), "drivetimes_driver", System.Data.DataRowVersion.Original, null));
			this.sqlDeleteCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Original_employtime_driver", System.Data.SqlDbType.DateTime, 8, System.Data.ParameterDirection.Input, false, ((System.Byte)(0)), ((System.Byte)(0)), "employtime_driver", System.Data.DataRowVersion.Original, null));
			this.sqlDeleteCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Original_idcard_driver", System.Data.SqlDbType.VarChar, 30, System.Data.ParameterDirection.Input, false, ((System.Byte)(0)), ((System.Byte)(0)), "idcard_driver", System.Data.DataRowVersion.Original, null));
			this.sqlDeleteCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Original_mobilephone_driver", System.Data.SqlDbType.VarChar, 15, System.Data.ParameterDirection.Input, false, ((System.Byte)(0)), ((System.Byte)(0)), "mobilephone_driver", System.Data.DataRowVersion.Original, null));
			this.sqlDeleteCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Original_name_driver", System.Data.SqlDbType.VarChar, 10, System.Data.ParameterDirection.Input, false, ((System.Byte)(0)), ((System.Byte)(0)), "name_driver", System.Data.DataRowVersion.Original, null));
			this.sqlDeleteCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Original_postcode_driver", System.Data.SqlDbType.VarChar, 7, System.Data.ParameterDirection.Input, false, ((System.Byte)(0)), ((System.Byte)(0)), "postcode_driver", System.Data.DataRowVersion.Original, null));
			// 
			// sqlDataAdapter1
			// 
			this.sqlDataAdapter1.DeleteCommand = this.sqlDeleteCommand1;
			this.sqlDataAdapter1.InsertCommand = this.sqlInsertCommand1;
			this.sqlDataAdapter1.SelectCommand = this.sqlSelectCommand1;
			this.sqlDataAdapter1.TableMappings.AddRange(new System.Data.Common.DataTableMapping[] {
																									  new System.Data.Common.DataTableMapping("Table", "driver", new System.Data.Common.DataColumnMapping[] {
																																																				new System.Data.Common.DataColumnMapping("driverid", "driverid"),
																																																				new System.Data.Common.DataColumnMapping("name_driver", "name_driver"),
																																																				new System.Data.Common.DataColumnMapping("employtime_driver", "employtime_driver"),
																																																				new System.Data.Common.DataColumnMapping("drivetimes_driver", "drivetimes_driver"),
																																																				new System.Data.Common.DataColumnMapping("accidenttimes_driver", "accidenttimes_driver"),
																																																				new System.Data.Common.DataColumnMapping("cardtype_driver", "cardtype_driver"),
																																																				new System.Data.Common.DataColumnMapping("idcard_driver", "idcard_driver"),
																																																				new System.Data.Common.DataColumnMapping("mobilephone_driver", "mobilephone_driver"),
																																																				new System.Data.Common.DataColumnMapping("address_driver", "address_driver"),
																																																				new System.Data.Common.DataColumnMapping("postcode_driver", "postcode_driver")})});
			this.sqlDataAdapter1.UpdateCommand = this.sqlUpdateCommand1;
			// 
			// dataSet11
			// 
			this.dataSet11.DataSetName = "DataSet1";
			this.dataSet11.Locale = new System.Globalization.CultureInfo("zh-CN");
			((System.ComponentModel.ISupportInitialize)(this.dataSet11)).EndInit();

		}
		#endregion



		protected void Button2_Click(object sender, System.EventArgs e)
		{
			sqlDataAdapter1.Fill(dataSet11,"driver");
			this.DataBind();
		}

		protected void DataGrid1_SelectedIndexChanged(object sender, System.EventArgs e)
		{
		
		}

		protected void Button3_Click(object sender, System.EventArgs e)
		{
			sqlDataAdapter1.SelectCommand.CommandText="select driverid, name_driver, employtime_driver, drivetimes_driver, accidenttimes_driver, mobilephone_driver  from driver order by accidenttimes_driver asc";
			sqlDataAdapter1.Fill(dataSet11,"driver");
			this.DataBind();
		
		}

		protected void Button4_Click(object sender, System.EventArgs e)
		{
			sqlDataAdapter1.SelectCommand.CommandText="select driverid, name_driver, employtime_driver, drivetimes_driver, accidenttimes_driver, mobilephone_driver  from driver order by drivetimes_driver desc";
			sqlDataAdapter1.Fill(dataSet11,"driver");
			this.DataBind();		
		}

		private void sqlConnection1_InfoMessage(object sender, System.Data.SqlClient.SqlInfoMessageEventArgs e)
		{
		
		}

		protected void Button5_Click(object sender, System.EventArgs e)
		{
			string txt_1="";
			txt_1=txt1.Text;
			string sql="delete from driver where name_driver='"+txt_1+"'";
            DBClass db = new DBClass(sql);
            SqlDataReader dr = db.returndr() ;
            db.dbClose();
			//DataGrid1.ItemStyle.BackColor ="#00C000";
			sqlDataAdapter1.Fill (dataSet11,"driver");
			this.DataBind();
			
		}

		protected void Button6_Click(object sender, System.EventArgs e)
		{
			//SqlConnection conn = new SqlConnection ("server = .;Database = pretrade;user id = sa;pwd = ;");
			string txt_1 = "";
			string txt_2 = "";
			txt_1 = txt1.Text ;
			txt_2 = txt2.Text ;
			sqlDataAdapter1.SelectCommand.CommandText ="select * from driver where name_driver='"+txt_2+"'";
			//string sql = "select * from Users where UserName='"+txt_1+"'";
			//SqlCommand comm = new SqlCommand(sql,conn);
			//SqlDataReader dr = comm.ExecuteReader();
			//sqlDataAdapter1.Update(dataSet11,"Users");
			sqlDataAdapter1.Fill (dataSet11,"driver");
			this.DataBind ();
			//comm.Dispose();
			//conn.Close();
		}

		protected void Button7_Click(object sender, System.EventArgs e)
		{
			SqlConnection conn = new SqlConnection ("server=.;Database = pretrade;user id = sa;pwd = ;");//.
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
			SqlCommand comm = new SqlCommand(sql,conn);
			SqlDataReader dr = comm.ExecuteReader();
			comm.Dispose();
			conn.Close();
			sqlDataAdapter1.Fill (dataSet11,"driver");
			this.DataBind ();
		}


		protected void Button1_Click(object sender, System.EventArgs e)
		{
			string strKeywordInput = keyword.Text.ToString().Trim();
			string sql = "select * from keyword where operator = 'wyn'";
			string strKeyword = "";
			SqlConnection MyConnection = new SqlConnection("Persist Security Info=False;Data Source=.;Initial Catalog=pretrade;User ID=sa;Password=");
			MyConnection.Open();
			SqlCommand Comm = new SqlCommand (sql,MyConnection);
			SqlDataReader dr = Comm.ExecuteReader();
			if(dr.Read())
			{
				strKeyword = dr["keyword"].ToString().Trim();
			}
			Comm.Dispose();
			db.dbClose();
			if(strKeywordInput == strKeyword)
			{
				Label1.Visible = true;
				Label2.Visible = true;
				Label8.Visible = true;
				Label4.Visible = true;
				Label5.Visible = true;
				Label9.Visible = true;
				txt1.Visible=true;
				txt2.Visible=true;
				txt3.Visible=true;
				txt4.Visible=true;
				txt5.Visible=true;		
				Button5.Visible=true;
				Button6.Visible=true;
				Button7.Visible=true;
					
			}
			else
				Response.Write("<script language = 'javascript'>alert('密码不正确！');</script>");
		}

		protected void btnquery_Click(object sender, System.EventArgs e)
		{
			string query=null;
			if(RadioButton1.Checked )
			{
				
				query="where driverid="+"'"+TextBox1.Text+"'";
				sqlDataAdapter1.SelectCommand.CommandText ="select driverid, name_driver, employtime_driver, drivetimes_driver, accidenttimes_driver, mobilephone_driver  from driver "+query;
			}
			if(RadioButton2.Checked )
			{
				
				query="where name_driver="+"'"+TextBox1.Text+"'";
				sqlDataAdapter1.SelectCommand.CommandText ="select driverid, name_driver, employtime_driver, drivetimes_driver, accidenttimes_driver, mobilephone_driver  from driver "+query;
			}
			
			sqlDataAdapter1.Fill(dataSet11,"driver");
			this.DataBind();
		}
	}





}

