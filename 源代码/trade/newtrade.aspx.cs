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
	/// WebForm2 的摘要说明。
	/// </summary>
	public partial class WebForm2 : System.Web.UI.Page
	{
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			// 在此处放置用户代码以初始化页面
			Button1.Attributes.Add("onclick","javascript:return confirm('已成功添加纪录，是否输出结算单？')");
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
			string txt_6 = "";
			string txt_7 = "";
			string txt_8 = "";
			string txt_9 = "";
			string txt_10 = "";
			string txt_11 = "";
			string txt_12 = "";
			string txt_13 = "";
			string txt_14 = "";
			string txt_15 = "";
			string txt_16 = "";
			string txt_17 = "";
			string txt_18 = "";
			string txt_19 = "";
			string txt_20 = "";
			string txt_21 = "";
			string txt_22 = "";
			string txt_23 = "";
			string txt_24 = "";
			string txt_25 = "";
			txt_1 = txttradeid.Text ;
			txt_2 = txtuserid.Text ;
			txt_3 = txtcarid.Text ;
			txt_4 = txtbegintime.Text ;
			txt_5 = txtendtime.Text ;
			txt_6 = txtnextpaytime.Text ;
			txt_7 = ddlusertype.SelectedItem .Text ;
			txt_8 = txtinsurename.Text ;
			txt_9 = txtinsureaddress.Text ;
			txt_10 = txtinsurephone.Text ;
			txt_11 = ddlpaytype.SelectedItem .Text  ;
			txt_12 = txtrcdtime.Text ;
			txt_13 = txtoperid.Text ;
			txt_14 = ddljiesuan.SelectedItem .Text ;
			txt_15 = txtnetpay.Text ;
			txt_16 = txtunitpay.Text ;
			txt_17 = txtsubpoint.Text ;
			txt_18 = txtownpay.Text ;
			txt_19= txtjiesuantime.Text ;
			txt_20=txtpaytime.Text ;
			txt_21=txtproyajin.Text ;
			txt_22=txtprozujin.Text ;
			txt_23=txtmoneychangereason.Text ;
			txt_24=txtchecknum.Text ;
			txt_25=txtnote.Text;
			
			Session["tradeid"]=txttradeid.Text ;
			Session["usertype"]=ddlusertype.SelectedItem.Text;
			
			string sql = "insert into trade(tradeid,userid,carid,begintime,endtime,nextpaytime,usertype,";
			sql+="insurename,insureaddress,insurephone,paytype,rcdtime,operid,jiesuan,netpay,unitpay,";
			sql+="subpoint,ownpay,jiesuantime,paytime,proyajin,prozujin,moneychangereason,checknum,note) ";
			sql+="values('"+txt_1+"','"+txt_2+"','"+txt_3+"','"+txt_4+"','"+txt_5+"','"+txt_6+"','"+txt_7+"',";
			sql+="'"+txt_8+"','"+txt_9+"','"+txt_10+"','"+txt_11+"','"+txt_12+"','"+txt_13+"','"+txt_14+"',";
			sql+="convert(money,'"+txt_15+"'),convert(money,'"+txt_16+"'),'"+txt_17+"',convert(money,'"+txt_18+"'),";
			sql+="'"+txt_19+"','"+txt_20+"',convert(money,'"+txt_21+"'),convert(money,'"+txt_22+"'),'"+txt_23+"',";
			sql+="'"+txt_24+"','"+txt_25+"')";
            DBClass db = new DBClass(sql);
            db.returndr();
            db.dbClose();

			Response.Redirect ("newtradepaper.aspx");
		}

		protected void Button3_Click(object sender, System.EventArgs e)
		{
			txttradeid.Text ="";
			txtuserid.Text ="";
			txtcarid.Text ="";
			txtbegintime.Text ="";
			txtendtime.Text ="";
			txtnextpaytime.Text ="";
			ddlusertype.SelectedItem.Text ="个人用户";
			txtinsurename.Text ="";
			txtinsureaddress.Text ="";
			txtinsurephone.Text ="";
			ddlpaytype.SelectedItem .Text  ="现金";
			txtrcdtime.Text ="";
			txtoperid.Text ="";
			ddljiesuan.SelectedItem .Text  ="否";
			txtnetpay.Text ="";
			txtunitpay.Text ="";
			txtsubpoint.Text ="";
			txtownpay.Text ="";
			txtjiesuantime.Text ="";
			txtpaytime.Text ="";
			txtproyajin.Text ="";
			txtprozujin.Text ="";
			txtmoneychangereason.Text ="";
			txtchecknum.Text ="";
			txtnote.Text ="";

		}

		protected void Button2_Click(object sender, System.EventArgs e)
		{
			Response.Redirect ("main.aspx");
		}
	}
}
