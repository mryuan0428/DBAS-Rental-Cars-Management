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
	/// _return 的摘要说明。
	/// </summary>
	public partial class _return : System.Web.UI.Page
	{
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			// 在此处放置用户代码以初始化页面
			
			System.DateTime currentTime=new System.DateTime(); 
			currentTime=System.DateTime.Now; 
			string strT=currentTime.ToString("g"); 
			Label2.Text  =strT;
			txtreturntime.Text =strT;

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

		private void Button1_Click(object sender, System.EventArgs e)
		{
			string txt_1="";
			string txt_2="";
			string txt_3="";
			string txt_4="";
			string txt_5="";
			txt_1=txttradeid.Text ;
			txt_2=txtcarid.Text ;
			txt_3=txtmeter.Text ;
			txt_4=txtreturntime.Text ;
			txt_5=DropDownList1.SelectedItem .Text ;
			Session["returntime"]=txtreturntime.Text ;
			Session["returnmeter"]=txtmeter.Text ;
			string sql3="select carinfo.*,trade.* from carinfo,trade where carinfo.序号=trade.carid and trade.tradeid='"+txt_1+"'";
            DBClass db3 = new DBClass(sql3);
            SqlDataReader dr3 = db3.returndr();
			if(dr3.Read())
			{
				Session["tradeid"]=dr3["tradeid"].ToString ().Trim ();
				Session["subpoint"]=dr3["subpoint"].ToString ();
				Session["carid"]=dr3["carid"].ToString ();
				Session["cartype"]=dr3["车辆类型"].ToString ().Trim ();
				Session["begintime"]=dr3["begintime"].ToString ();
				Session["meter_carinfo"]=dr3["公里数"].ToString ();
			}
			dr3.Close ();
            db3.dbClose();
			
			string sql1="update trade set returntime='"+txt_4+"' where tradeid='"+txt_1+"'";
            DBClass db1 = new DBClass(sql1);
            SqlDataReader dr1 = db1.returndr();
			dr1.Close ();
            db1.dbClose();

			string sql2="update carinfo set 公里数='"+txt_3+"',车辆状态='"+txt_5+"' where 序号='"+txt_2+"'";
            DBClass db2 = new DBClass(sql2);
            SqlDataReader dr2 = db2.returndr();
			dr2.Close ();
            db2.dbClose();

			Response.Redirect ("successreturn.aspx");
		}

		private void Button2_Click(object sender, System.EventArgs e)
		{
		
		}
        protected void Button1_Click1(object sender, EventArgs e)
        {
            string txt_1 = "";
            string txt_2 = "";
            string txt_3 = "";
            string txt_4 = "";
            string txt_5 = "";
            txt_1 = txttradeid.Text;
            txt_2 = txtcarid.Text;
            txt_3 = txtmeter.Text;
            txt_4 = txtreturntime.Text;
            txt_5 = DropDownList1.SelectedItem.Text;
            Session["returntime"] = txtreturntime.Text;
            Session["returnmeter"] = txtmeter.Text;
            string sql3 = "select carinfo.*,trade.* from carinfo,trade where carinfo.序号=trade.carid and trade.tradeid='" + txt_1 + "'";
            DBClass db3 = new DBClass(sql3);
            SqlDataReader dr3 = db3.returndr();
            if (dr3.Read())
            {
                Session["tradeid"] = dr3["tradeid"].ToString().Trim();
                Session["subpoint"] = dr3["subpoint"].ToString();
                Session["carid"] = dr3["carid"].ToString();
                Session["cartype"] = dr3["车辆类型"].ToString().Trim();
                Session["begintime"] = dr3["begintime"].ToString();
                Session["meter_carinfo"] = dr3["公里数"].ToString();
            }
            dr3.Close();
            db3.dbClose();

            string sql1 = "update trade set returntime='" + txt_4 + "' where tradeid='" + txt_1 + "'";
            DBClass db1 = new DBClass(sql1);
            SqlDataReader dr1 = db1.returndr();
            dr1.Close();
            db1.dbClose();

            string sql2 = "update carinfo set 公里数='" + txt_3 + "',车辆状态='" + txt_5 + "' where 序号='" + txt_2 + "'";
            DBClass db2 = new DBClass(sql2);
            SqlDataReader dr2 = db2.returndr();
            dr2.Close();
            db2.dbClose();

            Response.Redirect("successreturn.aspx");
        }
}
}
