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
	/// add1 的摘要说明。
	/// </summary>
	public partial class add1 : System.Web.UI.Page
	{
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			if (!IsPostBack)
			{
				string sqlstring = "SELECT * FROM carname";
                DBClass db = new DBClass(sqlstring);
				DropDownList8.DataSource = db.returndr();
				DropDownList8.DataTextField = "车辆名称";
				DropDownList8.DataValueField = "车辆名称";
				DropDownList8.DataBind();
                db.dbClose();
			}
		  
			if (!IsPostBack)
			{
				string sqlstring = "SELECT * FROM cartype";
                DBClass db = new DBClass(sqlstring);
				DropDownList1.DataSource = db.returndr();
				DropDownList1.DataTextField = "车辆类型";
				DropDownList1.DataValueField = "车辆类型";
				DropDownList1.DataBind();
                db.dbClose();
			}
			if (!IsPostBack)
			{
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
				string sqlstring = "SELECT * FROM carcolor";
                DBClass db = new DBClass(sqlstring);
				DropDownList2.DataSource = db.returndr();
                DropDownList2.DataTextField = "车辆颜色名";
                DropDownList2.DataValueField = "车辆颜色名";
                DropDownList2.DataBind();
				db.dbClose();
			}
			if (!IsPostBack)
			{
				string sqlstring = "SELECT * FROM subpoint";
                DBClass db = new DBClass(sqlstring);
				DropDownList4.DataSource = db.returndr();
                DropDownList4.DataTextField = "业务部编号";
                DropDownList4.DataValueField = "业务部编号";
				DropDownList4.DataBind();
                db.dbClose();
			}
			if (!IsPostBack)
			{
				string sqlstring = "SELECT * FROM insuretype";
                DBClass db = new DBClass(sqlstring);
				DropDownList5.DataSource = db.returndr();
				DropDownList5.DataTextField = "保险类型";
				DropDownList5.DataValueField = "保险类型";
				DropDownList5.DataBind();
                db.dbClose();
			}
			if (!IsPostBack)
			{
				string sqlstring = "SELECT * FROM insurecompany";
                DBClass db = new DBClass(sqlstring);
				DropDownList6.DataSource = db.returndr();
				DropDownList6.DataTextField = "保险公司";
				DropDownList6.DataValueField = "保险公司";
				DropDownList6.DataBind();
				db.dbClose();
			}
			if (!IsPostBack)
			{
				string sqlstring = "SELECT * FROM oiltype";
                DBClass db = new DBClass(sqlstring);
				DropDownList7.DataSource = db.returndr();
				DropDownList7.DataTextField = "油类型";
				DropDownList7.DataValueField = "油类型";
				DropDownList7.DataBind();
				db.dbClose();
			}// 在此处放置用户代码以初始化页面

			Button3.Attributes.Add("onclick","javascript:return confirm('您确认要添加照片么？')");

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

		protected void Button3_Click(object sender, System.EventArgs e)
		{
			string txt_1 = "";
			string txt_3 = "";
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
			
			txt_1 = TextBox1.Text ;
			txt_3 = TextBox3.Text ;
			txt_5 = TextBox5.Text ;
			txt_6 = TextBox6.Text ;
			txt_7 = TextBox7.Text ;
			txt_8 = TextBox8.Text ;
			txt_9 = TextBox9.Text ;
			txt_10 = TextBox10.Text ;
			txt_11 = TextBox11.Text ;
			txt_12 = TextBox12.Text ;
			txt_13 = TextBox13.Text ;
			downlist1 = DropDownList1.SelectedItem.Text;
			downlist2 = DropDownList2.SelectedItem.Text;
			downlist3 = DropDownList3.SelectedItem.Text;
			downlist4 = DropDownList4.SelectedItem.Text;
			downlist5 = DropDownList5.SelectedItem.Text;
			downlist6 = DropDownList6.SelectedItem.Text;
			downlist7 = DropDownList7.SelectedItem.Text;
			downlist8 = DropDownList8.SelectedItem.Text;
			downlist9 = DropDownList9.SelectedItem.Text;

            if (TextBox1.Text == "")
            {
                ErrorMsg.Text = "请填入车牌号！ ";
                return;
            }

			string sql = "insert into carinfo(车牌号,车辆名称,公里数,是否有效,记录时间,备注,开始记录时间,发动机号,车架号,防盗器号,保险开始时间,保险结束时间,保险号,车辆类型,车辆颜色,车辆状态,业务部编号,保险类型,保险公司,油类型) values('"+txt_1+"','"+downlist8+"','"+txt_3+"','"+downlist9+"','"+txt_5+"','"+txt_6+"','"+txt_7+"','"+txt_8+"','"+txt_9+"','"+txt_10+"','"+txt_11+"','"+txt_12+"','"+txt_13+"','"+downlist1+"','"+downlist2+"','"+downlist3+"','"+downlist4+"','"+downlist5+"','"+downlist6+"','"+downlist7+"')";

            DBClass db = new DBClass(sql);
            db.returndr();
            db.dbClose();
			
			Response.Redirect ("photo.aspx");
		}

		protected void Button4_Click(object sender, System.EventArgs e)
		{
			Response.Redirect ("main.aspx");
		}
	}
}
