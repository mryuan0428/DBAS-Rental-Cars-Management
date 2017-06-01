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
	/// modify 的摘要说明。
	/// </summary>
	public partial class modify : System.Web.UI.Page
	{
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			if (!IsPostBack)
			{
				BindGridToSource();
				string sqlstring = "SELECT * FROM carname";
                DBClass db = new DBClass(sqlstring);
				DropDownList1.DataSource = db.returndr();
				DropDownList1.DataTextField = "车辆名称";
				DropDownList1.DataValueField = "车辆名称";
				DropDownList1.DataBind();
				db.dbClose();
			}
		  
			if (!IsPostBack)
			{
				BindGridToSource();
				string sqlstring = "SELECT * FROM cartype";
                DBClass db = new DBClass(sqlstring);
				DropDownList2.DataSource = db.returndr();
				DropDownList2.DataTextField = "车辆类型";
				DropDownList2.DataValueField = "车辆类型";
				DropDownList2.DataBind();
				db.dbClose();
			}
			if (!IsPostBack)
			{
				BindGridToSource();
				string sqlstring = "SELECT * FROM state";
                DBClass db = new DBClass(sqlstring);
				DropDownList3.DataSource = db.returndr();
				DropDownList3.DataTextField = "车辆状态";
				DropDownList3.DataValueField = "车辆状态";
				DropDownList3.DataBind();
				db.dbClose();
			}
			if (!IsPostBack)
			{
				BindGridToSource();
				string sqlstring = "SELECT * FROM carcolor";
                DBClass db = new DBClass(sqlstring);
				DropDownList4.DataSource = db.returndr();
				DropDownList4.DataTextField = "车辆颜色名";
				DropDownList4.DataValueField = "车辆颜色名";
				DropDownList4.DataBind();
				db.dbClose();
			}
			if (!IsPostBack)
			{
				BindGridToSource();
				string sqlstring = "SELECT * FROM subpoint";
                DBClass db = new DBClass(sqlstring);
				DropDownList5.DataSource = db.returndr();
                DropDownList5.DataTextField = "业务部编号";
                DropDownList5.DataValueField = "业务部编号";
				DropDownList5.DataBind();
				db.dbClose();
			}
			if (!IsPostBack)
			{
				BindGridToSource();
				string sqlstring = "SELECT * FROM insuretype";
                DBClass db = new DBClass(sqlstring);
				DropDownList6.DataSource = db.returndr();
				DropDownList6.DataTextField = "保险类型";
				DropDownList6.DataValueField = "保险类型";
				DropDownList6.DataBind();
				db.dbClose();
			}
			if (!IsPostBack)
			{
				BindGridToSource();
				string sqlstring = "SELECT * FROM insurecompany";
                DBClass db = new DBClass(sqlstring);
                DropDownList7.DataSource = db.returndr() ;
				DropDownList7.DataTextField = "保险公司";
				DropDownList7.DataValueField = "保险公司";
				DropDownList7.DataBind();
				db.dbClose();
			}
			if (!IsPostBack)
			{
				BindGridToSource();
				string sqlstring = "SELECT * FROM oiltype";
                DBClass db = new DBClass(sqlstring);
				DropDownList9.DataSource = db.returndr();
				DropDownList9.DataTextField = "油类型";
				DropDownList9.DataValueField = "油类型";
				DropDownList9.DataBind();
				db.dbClose();
			}// 在此处放置用户代码以初始化页面
		}

		private void BindGridToSource()
		{
			string SelectCommand = "SELECT * FROM carinfo";
            DBClass db = new DBClass(SelectCommand);
            DataSet ds = new DataSet();
            ds = db.returnSet("carinfo");
			DataView dv = ds.Tables["carinfo"].DefaultView;
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

		private void DataGrid1_PageIndexChanged(object source, System.Web.UI.WebControls.DataGridPageChangedEventArgs e)
		{
			DataGrid1.CurrentPageIndex = e.NewPageIndex;
			BindGridToSource();
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
		

		protected void Button1_Click(object sender, System.EventArgs e)
		{
			string txt_1= TextBox1.Text ;
			string sql="select * from carinfo where 序号='"+txt_1+"'";
			DBClass db = new DBClass(sql);
            SqlDataReader dr = db.returndr();
			if(dr.Read ())
			{
				TextBox2.Text =dr["序号"].ToString();	
				TextBox3.Text =dr["车牌号"].ToString();
				TextBox4.Text =dr["防盗器号"].ToString();
				TextBox5.Text =dr["保险号"].ToString();
				TextBox6.Text =dr["保险开始时间"].ToString();
				TextBox7.Text =dr["保险结束时间"].ToString();
				TextBox8.Text =dr["车架号"].ToString();
				TextBox9.Text =dr["公里数"].ToString();
				TextBox10.Text =dr["发动机号"].ToString();
				TextBox11.Text =dr["开始记录时间"].ToString();
				TextBox12.Text =dr["记录时间"].ToString();
				TextBox13.Text =dr["备注"].ToString();
				DropDownList1.SelectedItem.Text = dr["车辆名称"].ToString();
				DropDownList2.SelectedItem.Text = dr["车辆类型"].ToString();
				DropDownList3.SelectedItem.Text = dr["车辆状态"].ToString();
				DropDownList4.SelectedItem.Text = dr["车辆颜色"].ToString();
				DropDownList5.SelectedItem.Text = dr["业务部编号"].ToString();
				DropDownList6.SelectedItem.Text = dr["保险类型"].ToString();
                DropDownList7.SelectedItem.Text = dr["保险公司"].ToString();
                DropDownList8.SelectedItem.Text = dr["是否有效"].ToString();
                DropDownList9.SelectedItem.Text = dr["油类型"].ToString();
			}
			dr.Close ();
            db.dbClose();
		}

		protected void Button2_Click(object sender, System.EventArgs e)
		{
			Response.Redirect ("photo.aspx");
		}

		protected void Button3_Click(object sender, System.EventArgs e)
		{
			string txt_2 = "";
			string txt_3 = "";
			string txt_4 = "";
			string txt_5 = "";
			string txt_6 = "";
			string txt_7 = "";
			string txt_8 = "";
			string txt_9 = "";
			string txt_10 = "";
			string txt_11 = "";
			string txt_12 = "";
			string txt_13 = "";
			string downlist1="";
			string downlist2="";
			string downlist3="";
			string downlist4="";
			string downlist5="";
			string downlist6="";
			string downlist7="";
			string downlist8="";
			string downlist9="";

			txt_2 = TextBox2.Text ;
			txt_3 = TextBox3.Text ;
			txt_4 = TextBox4.Text ;
			txt_5 = TextBox5.Text ;
			txt_6 = TextBox6.Text ;
			txt_7 = TextBox7.Text ;
			txt_8 = TextBox8.Text ;
			txt_9 = TextBox9.Text ;
			txt_10 = TextBox10.Text ;
			txt_11 = TextBox11.Text ;
			txt_12 = TextBox12.Text ;
			txt_13 = TextBox1.Text ;
			downlist1 = DropDownList1.SelectedItem.Text;
			downlist2 = DropDownList2.SelectedItem.Text;
			downlist3 = DropDownList3.SelectedItem.Text;
			downlist4 = DropDownList4.SelectedItem.Text;
			downlist5 = DropDownList5.SelectedItem.Text;
			downlist6 = DropDownList6.SelectedItem.Text;
			downlist7 = DropDownList7.SelectedItem.Text;
			downlist8 = DropDownList8.SelectedItem.Text;
			downlist9 = DropDownList9.SelectedItem.Text;

			
			if (TextBox3.Text == "") 
			{ 
				ErrorMsg.Text="请填入车牌号！ ";
				return; 
			}

			if (TextBox9.Text == "") 
			{ 
				ErrorMsg.Text="请填入公里数！";
				return; 
			}
			
			string sqlcar="update carinfo set 车牌号='"+txt_3+"',车辆名称='"+downlist1+"',车辆类型='"+downlist2+"',车辆状态='"+downlist3+"',车辆颜色='"+downlist4+"',业务部编号='"+downlist5+"',防盗器号='"+txt_4+"',保险号='"+txt_5+"',保险开始时间='"+txt_6+"',保险结束时间='"+txt_7+"',保险类型='"+downlist6+"',保险公司='"+downlist7+"',车架号='"+txt_8+"',公里数='"+txt_9+"',发动机号='"+txt_10+"',是否有效='"+downlist8+"',开始记录时间='"+txt_11+"',记录时间='"+txt_12+"',油类型='"+downlist9+"' where 序号='"+txt_2+"'";
            DBClass db = new DBClass(sqlcar);
            db.returndr();
            db.dbClose();

			Response.Redirect ("modify.aspx");
		}

		protected void Button4_Click(object sender, System.EventArgs e)
		{
			Response.Redirect ("main.aspx");
		}
	}
}
