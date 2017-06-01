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
using System.Data.SqlClient ;

namespace cartrade
{
	/// <summary>
	/// jiesuan 的摘要说明。
	/// </summary>
	public partial class jiesuan : System.Web.UI.Page
	{
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			// 在此处放置用户代码以初始化页面
			string strtradeid = Request.QueryString["tradeid"].ToString().Trim();

			if(!IsPostBack)
			{
				string sql="select trade.*,carinfo.* from trade,carinfo where trade.carid=carinfo.序号 and tradeid='"+strtradeid+"' ";
                DBClass db = new DBClass(sql);
				SqlDataReader dr = db.returndr();
				if(dr.Read())
				{
					
					lbltradeid.Text = dr["tradeid"].ToString().Trim();
					lbljiesuan.Text =dr["jiesuan"].ToString ().Trim ();
					lblendtime.Text=dr["endtime"].ToString ().Trim ();
					lblbegintime.Text =dr["begintime"].ToString ().Trim ();
					lblreturntime.Text =dr["returntime"].ToString ().Trim ();
					lbltime1.Text =dr["begintime"].ToString ().Trim ();
					lbltime2.Text=dr["begintime"].ToString ().Trim ();
					lblproyajin.Text =dr["proyajin"].ToString ().Trim ();
					lblprozujin.Text =dr["prozujin"].ToString ().Trim ();
					lblcarid.Text =dr["carid"].ToString ().Trim ();
					lbltime3.Text=dr["begintime"].ToString ().Trim ();
					lblmeter.Text=dr["公里数"].ToString ().Trim ();
					lblproyajin1.Text =dr["proyajin"].ToString ().Trim ();
					lblprozujin1.Text =dr["prozujin"].ToString ().Trim ();
					
				}
				dr.Close ();
                db.dbClose();

				string sql1="select personinfo.* from personinfo,trade where ";
				sql1+="personinfo.userid_personinfo=trade.userid and trade.tradeid='"+strtradeid+"'";
                DBClass db1 = new DBClass(sql1);
				SqlDataReader dr1 = db1.returndr();
				if(dr1.Read())
				{
					lblperson.Text =dr1["name_personinfo"].ToString ().Trim ();
				}
				dr1.Close ();
                db1.dbClose();

				string sql2="select companyinfo.* from companyinfo,trade where ";
				sql2+="companyinfo.userid_companyinfo=trade.userid and trade.tradeid='"+strtradeid+"'";
                DBClass db2 = new DBClass(sql2);
                SqlDataReader dr2 = db2.returndr();
				if(dr2.Read())
				{
					lblperson.Text =dr2["name_companyinfo"].ToString ().Trim ();
				}
				dr2.Close ();
                db2.dbClose();

			}
				
			Session["tradeid"]=lbltradeid.Text ;
			Session["lblperson"]=lblperson.Text ;
			Session["txtchecknum"]=txtchecknum.Text ;
			Session["txtnote"]=txtnote.Text ;
			Session["lblqitayijiaofei"]=lblqitayijiaofei.Text ;
			Session["txtqitatuifei"]=txtqitatuifei.Text;
			Session["txtjibenzujin"]=txtjibenzujin.Text;
			Session["txtchaoshijiafei"]=txtchaoshijiafei.Text;
			Session["txtchaoshijiafei1"]=txtchaoshijiafei1.Text;
			Session["txtpaizhengyishi"]=txtpaizhengyishi.Text;
			Session["txtloubaofei"]=txtloubaofei.Text;
			Session["txtchaizhuangpeichang"]=txtchaizhuangpeichang.Text;
			Session["txtbaoxianfei"]=txtbaoxianfei.Text;
			Session["txtloujianfei"]=txtloujianfei.Text;
			Session["txtsijifei"]=txtsijifei.Text;
			Session["txtxiulifei"]=txtxiulifei.Text;
			Session["txtchesunfei"]=txtchesunfei.Text;
			Session["txtsongchefei"]=txtsongchefei.Text;
			Session["txtpeilianfei"]=txtpeilianfei.Text;
			Session["txtweizhangyajin"]=txtweizhangyajin.Text;
			
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

		

		protected void Button2_Click(object sender, System.EventArgs e)
		{
			Response.Redirect ("jiesuanpaper.aspx");
		}

		protected void Button1_Click(object sender, System.EventArgs e)
		{
		
		}
	}
}
