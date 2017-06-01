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
	/// edit 的摘要说明。
	/// </summary>
	public partial class edit : System.Web.UI.Page
	{
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			// 在此处放置用户代码以初始化页面
			string strtradeid = Request.QueryString["tradeid"].ToString().Trim();
			if(!IsPostBack)
			{
				string sql = "select trade.* from trade where trade.tradeid = '"+strtradeid+"'";
                DBClass db = new DBClass(sql);
				SqlDataReader dr = db.returndr();
				if(dr.Read())
				{
					
					txttradeid.Text = dr["tradeid"].ToString().Trim();
					txtuserid.Text = dr["userid"].ToString().Trim();
					txtcarid.Text = dr["carid"].ToString().Trim();
					txtbegintime.Text = dr["begintime"].ToString().Trim();
					txtendtime.Text = dr["endtime"].ToString().Trim();
					txtnextpaytime.Text = dr["nextpaytime"].ToString().Trim();
					txtinsurename.Text  = dr["insurename"].ToString().Trim();
					txtinsureaddress.Text = dr["insureaddress"].ToString().Trim();
					txtinsurephone.Text = dr["insurephone"].ToString().Trim();
					txtrcdtime.Text = dr["rcdtime"].ToString().Trim();
					txtoperid.Text = dr["operid"].ToString().Trim();
					txtnetpay.Text =dr["netpay"].ToString ().Trim ();
					txtunitpay.Text =dr["unitpay"].ToString().Trim ();
					txtsubpoint.Text =dr["subpoint"].ToString ().Trim ();
					txtownpay.Text =dr["ownpay"].ToString ().Trim ();
					txtjiesuantime.Text =dr["jiesuantime"].ToString ().Trim ();
					txtpaytime.Text =dr["paytime"].ToString ().Trim ();
					txtproyajin.Text =dr["proyajin"].ToString ().Trim ();
					txtprozujin.Text =dr["prozujin"].ToString ().Trim ();
					txtmoneychangereason.Text =dr["moneychangereason"].ToString ().Trim ();
					txtchecknum.Text =dr["checknum"].ToString ().Trim ();
					txtnote.Text =dr["note"].ToString ().Trim ();
					if(dr["usertype"].ToString ().Trim ()=="个人用户")
					{
						DropDownList1.SelectedIndex =0;
					}
					if(dr["usertype"].ToString ().Trim ()=="个人会员")
					{
						DropDownList1.SelectedIndex  =1;
					}
					if(dr["usertype"].ToString ().Trim ()=="公司用户")
					{
						DropDownList1.SelectedIndex =2;
					}
					if(dr["usertype"].ToString ().Trim ()=="公司会员")
					{
						DropDownList1.SelectedIndex =3;
					}

					if(dr["paytype"].ToString ().Trim ()=="现金")
					{
						DropDownList2.SelectedIndex =0;
					}
					if(dr["paytype"].ToString ().Trim ()=="支票")
					{
						DropDownList2.SelectedIndex =1;
					}
					if(dr["paytype"].ToString ().Trim ()=="汇票")
					{
						DropDownList2.SelectedIndex =2;
					}
					
					if(dr["jiesuan"].ToString ().Trim ()=="是")
					{
						DropDownList3.SelectedIndex =0;
					}
					if(dr["jiesuan"].ToString ().Trim ()=="否")
					{
						DropDownList3.SelectedIndex =1;
					}
				}
				dr.Close ();
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

		protected void Button1_Click(object sender, System.EventArgs e)
		{
			Label2.Visible =true;
			TextBox1.Visible=true;
			Button4.Visible=true;
			txtuserid.Enabled =true;
			txtcarid.Enabled =true;
			txtbegintime.Enabled =true;
			txtendtime.Enabled =true;
			txtnextpaytime.Enabled =true;
			txtinsurename.Enabled =true;
			txtinsureaddress.Enabled =true;
			txtinsurephone.Enabled =true;
			DropDownList1.Enabled =true;
			DropDownList2.Enabled =true;
			txtrcdtime.Enabled =true;
			txtoperid.Enabled =true;
			DropDownList3.Enabled =true;
			txtnetpay.Enabled =true;
			txtunitpay.Enabled =true;
			txtsubpoint.Enabled =true;
			txtownpay.Enabled =true;
			txtjiesuantime.Enabled =true;
			txtpaytime.Enabled =true;
			txtproyajin.Enabled =true;
			txtprozujin.Enabled =true;
			txtmoneychangereason.Enabled =true;
			txtchecknum.Enabled =true;
			txtnote.Enabled =true;
		}

		

		private void Button3_Click(object sender, System.EventArgs e)
		{
			Response.Write("<script language = 'javascript'>window.navigate('modify.aspx');</script>");
		}

		private void Button4_Click(object sender, System.EventArgs e)
		{
			string strkeywordinput=TextBox1.Text ;
			string strkeyword="";
			string sql1="select * from keyword where operator='wyn'";
            DBClass db = new DBClass(sql1);
			SqlDataReader dr = db.returndr();
			if(dr.Read())
			{
				strkeyword = dr["keyword"].ToString().Trim();
			}
			dr.Close ();
			if(strkeywordinput == strkeyword)
			{
				Response.Write("<Script language='javaScript'>(alert(\"已成功修改信息！\"))</Script>");

				string strtradeid="";
				string struserid="";
				string strcarid="";
				string strbegintime="";
				string strendtime="";
				string strnextpaytime="";
				string strinsurename="";
				string strinsureaddress="";
				string strinsurephone="";
				string strusertype="";
				string strpaytype="";
				string strrcdtime="";
				string stroperid="";
				string strjiesuan="";
				string strnetpay="";
				string strunitpay="";
				string strsubpoint="";
				string strownpay="";
				string strjiesuantime="";
				string strpaytime="";
				string strproyajin="";
				string strprozujin="";
				string strmoneychangereason="";
				string strchecknum="";
				string strnote="";
				strtradeid=txttradeid.Text ;
				struserid=txtuserid.Text ;
				strcarid=txtcarid.Text ;
				strbegintime=txtbegintime.Text ;
				strendtime=txtendtime.Text ;
				strnextpaytime=txtnextpaytime.Text ;
				strinsurename=txtinsurename.Text ;
				strinsureaddress=txtinsureaddress.Text ;
				strinsurephone=txtinsurephone.Text ;
				strusertype=DropDownList1.SelectedItem .Text  ;
				strpaytype=DropDownList2.SelectedItem .Text  ;
				strrcdtime=txtrcdtime.Text ;
				stroperid=txtoperid.Text ;
				strjiesuan=DropDownList3.SelectedItem.Text  ;
				strnetpay=txtnetpay.Text ;
				strunitpay=txtunitpay.Text ;
				strsubpoint=txtsubpoint.Text ;
				strownpay=txtownpay.Text ;
				strjiesuantime=txtjiesuantime.Text ;
				strpaytime=txtpaytime.Text ;
				strproyajin=txtproyajin.Text ;
				strprozujin=txtprozujin.Text ;
				strmoneychangereason=txtmoneychangereason.Text ;
				strchecknum=txtchecknum.Text ;
				strnote=txtnote.Text ;
				string sql ="Update trade set tradeid = '"+strtradeid+"',userid='"+struserid+"',carid='"+strcarid+"',";
				sql+="begintime='"+strbegintime+"',endtime='"+strendtime+"',nextpaytime='"+strnextpaytime+"',";
				sql+="insurename='"+strinsurename+"',insureaddress='"+strinsureaddress+"',insurephone='"+strinsurephone+"',";
				sql+="usertype='"+strusertype+"',paytype='"+strpaytype+"',rcdtime='"+strrcdtime+"',operid='"+stroperid+"',";
				sql+="jiesuan='"+strjiesuan+"',netpay=convert(money,'"+strnetpay+"'),unitpay=convert(money,'"+strunitpay+"'),subpoint='"+strsubpoint+"',";
				sql+="ownpay=convert(money,'"+strownpay+"'),jiesuantime='"+strjiesuantime+"',paytime='"+strpaytime+"',";
				sql+="proyajin=convert(money,'"+strproyajin+"'),prozujin=convert(money,'"+strprozujin+"'),moneychangereason='"+strmoneychangereason+"',";
				sql+="checknum='"+strchecknum+"',note='"+strnote+"' where tradeid='"+strtradeid+"'";
                db = new DBClass(sql);
                db.returndr();
                Response.Redirect("modify.aspx");
			}
			else
				Response.Write("<script language = 'javascript'>alert('口令不正确！');</script>");
            db.dbClose();
		}

		
		
	}
}
