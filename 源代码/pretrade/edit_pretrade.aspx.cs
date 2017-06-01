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
	/// WebForm1 的摘要说明。
	/// </summary>
	public partial class edit_pretrade : System.Web.UI.Page
	{
		protected System.Web.UI.WebControls.Button Button19;
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			// 在此处放置用户代码以初始化页面
			string strpretradeid = Request.QueryString["id_pretrade"].ToString().Trim();

			if(!IsPostBack)
			{
				string sql = "select * from pretrade where id_pretrade = '"+strpretradeid+"'";
                DBClass db = new DBClass(sql);
				SqlDataReader dr = db.returndr();
				if(dr.Read())
				{
					htbh.Text = dr["id_pretrade"].ToString().Trim();
					khbh.Text=dr["userid"].ToString().Trim();
					khxm.Text=dr["username_pretrade"].ToString().Trim();
					cphm.Text=dr["carid"].ToString().Trim();
					clmc.Text=dr["carname_pretrade"].ToString().Trim();
					zcsj.Text=dr["begintime_pretrade"].ToString().Trim();
					hcsj.Text=dr["endtime_pretrade"].ToString().Trim();
					yjyj.Value=dr["deposit_pretrade"].ToString().Trim();
					czyh.Value=dr["operid"].ToString().Trim();
					czry.Value=dr["opername_pretrade"].ToString().Trim();
					beizhu.Value=dr["note_pretrade"].ToString().Trim();
					driverid.Text=dr["driverid"].ToString().Trim();
					drivername.Value=dr["driver_pretrade"].ToString().Trim();
					

					if (dr["persontype_pretrade"].ToString().Trim() == "个人用户")
					{
						persontype.SelectedValue = "个人用户";
					}

					if (dr["persontype_pretrade"].ToString().Trim() == "个人会员")
					{
						persontype.SelectedValue = "个人会员";
					}

					if (dr["persontype_pretrade"].ToString().Trim() == "公司用户")
					{
						persontype.SelectedValue = "公司用户";
					}

					if (dr["persontype_pretrade"].ToString().Trim() == "公司会员")
					{
						persontype.SelectedValue = "公司会员";
					}

					

					if (dr["carmodel_pretrade"].ToString().Trim() == "日租")
					{
						zcms.SelectedValue = "日租";
					}

					if (dr["carmodel_pretrade"].ToString().Trim() == "月租")
					{
						zcms.SelectedValue = "月租";
					}


				}
				System.DateTime currentTime=new System.DateTime(); 
				currentTime=System.DateTime.Now; 
				string strT=currentTime.ToString("g");  
				djsj.Value =strT;

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

		}
		#endregion



		protected void Submit1_ServerClick(object sender, System.EventArgs e)
		{
			string txt_htbh = "";
			string txt_khbh = "";
			string txt_khxm = "";
			string txt_cphm = "";
			string txt_clmc = "";
			string zcmsSel="";
			string txt_zcsj = "";
			string txt_hcsj = "";
			string txt_yjyj = "";
			string txt_czyh = "";
			string txt_czry = "";
			string txt_djsj = "";
			string txt_driverid = "";
			string txt_drivername = "";

			string txt_beizhu = "";
			string txtPersontype="";

			txt_htbh = htbh.Text;
			txt_khbh = khbh.Text ;
			txt_khxm = khxm.Text ;
			txt_cphm = cphm.Text ;
			txt_clmc = clmc.Text.Trim() ;
			zcmsSel = zcms.SelectedValue.Trim();
			txt_zcsj = zcsj.Text.Trim();
			txt_hcsj=hcsj.Text.Trim();
			txt_yjyj =yjyj.Value.Trim();
			txt_czyh =czyh.Value.Trim();
			txt_czry=czry.Value.Trim();
			txt_djsj=djsj.Value.Trim();
			txt_beizhu =beizhu.Value.Trim();
			txt_driverid = driverid.Text.Trim();
			txt_drivername = drivername.Value.Trim();

			txtPersontype = persontype.SelectedValue;

			string sql = "update pretrade set userid='"+txt_khbh+"',username_pretrade='"+txt_khxm+"',persontype_pretrade='"+txtPersontype+"',carid='"+txt_cphm+"',carname_pretrade='"+txt_clmc+"',carmodel_pretrade='"+zcmsSel+"',begintime_pretrade=convert(datetime,'"+txt_zcsj+"'),endtime_pretrade=convert(datetime,'"+txt_hcsj+"'),deposit_pretrade=convert(money,'"+txt_yjyj+"'),operid='"+txt_czyh+"',opername_pretrade='"+txt_czry+"', rcdtime_pretrade='"+txt_djsj+"',driverid='"+txt_driverid+"',driver_pretrade='"+txt_drivername+"',note_pretrade='"+txt_beizhu+"'where id_pretrade='"+txt_htbh+"'";
            DBClass db = new DBClass(sql);
            db.returndr();
            db.dbClose();

			Response.Write("<Script language='javaScript'>(alert(\"记录已修改\"))</Script>");

			Response.Write("<script language = 'javascript'>window.navigate('browsepretrade.aspx');</script>");

		}

		protected void cancel_ServerClick(object sender, System.EventArgs e)
		{
			Response.Write("<script language = 'javascript'>window.navigate('browsepretrade.aspx');</script>");
		}
	}
}
