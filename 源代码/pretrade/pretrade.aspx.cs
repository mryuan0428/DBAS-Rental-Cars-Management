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
	public partial class WebForm1 : System.Web.UI.Page
	{
		protected System.Web.UI.WebControls.Button Button19;
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			// 在此处放置用户代码以初始化页面
			
			if(!IsPostBack)
			{
				System.DateTime currentTime=new System.DateTime(); 
				currentTime=System.DateTime.Now; 
				string strT=currentTime.ToString("g"); 
				string strYMD=currentTime.ToString("D"); 
				djsj.Value =strT;
				zcsj.Text=strT;
				hcsj.Text=strT;

				if(Request.QueryString["userid_personinfo"]!=null)
				{
					string bb=Request.QueryString["userid_personinfo"].ToString().Trim();
					khbh.Text= bb;
				}
				if(Request.QueryString["name_personinfo"]!=null)
				{
					string cc=Request.QueryString["name_personinfo"].ToString().Trim();
					khxm.Text= cc;
				}
				if(Request.QueryString["userid_companyinfo"]!=null)
				{
					string dd=Request.QueryString["userid_companyinfo"].ToString().Trim();
					khbh.Text= dd;
				}
				if(Request.QueryString["name_companyinfo"]!=null)
				{
					string ee=Request.QueryString["name_companyinfo"].ToString().Trim();
					khxm.Text= ee;
				}

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



		private void Reset1_ServerClick(object sender, System.EventArgs e)
		{
		
		}

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
			string persontypeSel="";

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

			persontypeSel = persontype.SelectedValue;

			string sql = "insert into pretrade(id_pretrade,userid,username_pretrade,persontype_pretrade,carid,carname_pretrade,carmodel_pretrade,begintime_pretrade,endtime_pretrade,deposit_pretrade,operid,opername_pretrade,rcdtime_pretrade,driverid,driver_pretrade,note_pretrade) values('"+txt_htbh+"','"+txt_khbh+"','"+txt_khxm+"','"+persontypeSel+"','"+txt_cphm+"','"+txt_clmc+"','"+zcmsSel+"',convert(datetime,'"+txt_zcsj+"'),convert(datetime,'"+txt_hcsj+"'),convert(money,'"+txt_yjyj+"') ,'"+txt_czyh+"','"+txt_czry+"','"+txt_djsj+"','"+txt_driverid+"','"+txt_drivername+"','"+txt_beizhu+"')";
            DBClass db = new DBClass(sql);
            db.returndr();
            db.dbClose();

			Response.Redirect ("browsepretrade.aspx");
		}

		protected void zcsj_TextChanged(object sender, System.EventArgs e)
		{
		
		}

		protected void zcms_SelectedIndexChanged(object sender, System.EventArgs e)
		{
			
			if(zcms.SelectedValue=="rz")
			{
                Response.Redirect("search_person.aspx");
			}

			if(zcms.SelectedValue=="carmodel")
			{
				Response.Redirect("search_pretrade.aspx");
			}

                
		}

		protected void Button1_Click(object sender, System.EventArgs e)
		{
		    if(persontype.SelectedValue=="个人用户")
			{
				Response.Redirect("search_person.aspx");
			}

			if(persontype.SelectedValue=="个人会员")
			{
				Response.Redirect("search_person.aspx");
			}

			if(persontype.SelectedValue=="公司用户")
			{
				Response.Redirect("search_company.aspx");
			}

			if(persontype.SelectedValue=="公司会员")
			{
				Response.Redirect("search_company.aspx");
			}

		}

	}
}
