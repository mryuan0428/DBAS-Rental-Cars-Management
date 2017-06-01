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
using System.IO;

namespace WebApplication4
{
	/// <summary>
	/// pricemodify 的摘要说明。
	/// </summary>
	public partial class pricemodify : System.Web.UI.Page
	{
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			if (!IsPostBack)
			{
				string sqlstring = "SELECT * FROM cartype";
                DBClass db = new DBClass(sqlstring);
				DropDownList4.DataSource = db.returndr();
				DropDownList4.DataTextField = "车辆类型";
				DropDownList4.DataValueField = "车辆类型";
				DropDownList4.DataBind();
				db.dbClose();
			}
			
			if (!IsPostBack)
			{
				string sqlstring = "SELECT * FROM carname";
                DBClass db = new DBClass(sqlstring);
				DropDownList3.DataSource = db.returndr();
				DropDownList3.DataTextField = "车辆名称";
				DropDownList3.DataValueField = "车辆名称";
				DropDownList3.DataBind();
				db.dbClose();
			}// 在此处放置用户代码以初始化页面// 在此处放置用户代码以初始化页面
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

		protected void Button1_Click(object sender, System.EventArgs e)
		{
			string txt_1 = "";
			string txt_2 = "";
			string txt_3 = "";
			string txt_4 = "";
			string txt_5 = "";
			string downlist1="";
			string downlist2="";
			string downlist3="";
			string downlist4="";
		
			txt_1 = TextBox1.Text ;
			txt_2 = TextBox2.Text ;
			txt_3 = TextBox3.Text ;
			txt_4 = TextBox4.Text ;
			txt_5 = TextBox5.Text ;
			downlist1 = DropDownList1.SelectedItem.Text;
			downlist2 = DropDownList2.SelectedItem.Text;
			downlist3 = DropDownList3.SelectedItem.Text;
			downlist4 = DropDownList4.SelectedItem.Text;
			
            string sqlcar="update carmodel set 车辆类型='"+downlist4+"',限制里程数目='"+txt_1+"',租车押金=convert(money,'"+txt_2+"'),超驶收费=convert(money,'"+txt_3+"'),"+downlist1+"=convert(money,'"+txt_4+"'),"+downlist2+"=convert(money,'"+txt_5+"') where 车辆名称='"+downlist3+"'";
            DBClass db = new DBClass(sqlcar);
            db.returndr();
            db.dbClose();
			Response.Redirect ("pricemodify.aspx");
		}

		protected void Button2_Click(object sender, System.EventArgs e)
		{
            SqlConnection conn = new SqlConnection("server=(local);database=pretrade;uid=sa;pwd=123456");

			string SelectCommand = "SELECT * FROM  carmodel";
			SqlDataAdapter MyCommand = new SqlDataAdapter(SelectCommand, conn);

			string txt_1 = "";
			string txt_2 = "";
			string txt_3 = "";
			string txt_4 = "";
			string txt_5 = "";
			string downlist1="";
			string downlist2="";
			string downlist3="";
			string downlist4="";
		
			txt_1 = TextBox1.Text ;
			txt_2 = TextBox2.Text ;
			txt_3 = TextBox3.Text ;
			txt_4 = TextBox4.Text ;
			txt_5 = TextBox5.Text ;
			downlist1 = DropDownList1.SelectedItem.Text;
			downlist2 = DropDownList2.SelectedItem.Text;
			downlist3 = DropDownList3.SelectedItem.Text;
			downlist4 = DropDownList4.SelectedItem.Text;
			
			string sqlcar="insert into carmodel (车辆名称,车辆类型,限制里程数目,租车押金,超驶收费,"+downlist1+","+downlist2+") values ('"+downlist3+"','"+downlist4+"','"+txt_1+"',convert(money,'"+txt_2+"'),convert(money,'"+txt_3+"'),convert(money,'"+txt_4+"'),convert(money,'"+txt_5+"'))";
			conn.Open();
     		SqlCommand comm = new SqlCommand(sqlcar,conn);
			SqlDataReader dr = comm.ExecuteReader();
			dr.Close ();

			int n = comm.ExecuteNonQuery();
			if (n>=1)ErrorMsg.Text="车牌号重复！";
			else ErrorMsg.Text="增加成功！";
		
            conn.Close();

		}

		protected void Button3_Click(object sender, System.EventArgs e)
		{
			Response.Redirect("main.aspx");
		}

		protected void Button4_Click(object sender, System.EventArgs e)
		{
		    Response.Redirect ("pricemodify.aspx");
		}

		protected void Button5_Click(object sender, System.EventArgs e)
		{
            SqlConnection conn = new SqlConnection("server=(local);database=pretrade;uid=sa;pwd=123456");
			string sql="delete from carmodel where 车辆名称='"+DropDownList3.SelectedItem.Text+"'";         
			conn.Open();
			SqlCommand comm = new SqlCommand(sql,conn);
			int n = comm.ExecuteNonQuery();
			if (n>=1)ErrorMsg.Text="删除成功！";
			else ErrorMsg.Text="删除失败！";
			
		}
	}
}
