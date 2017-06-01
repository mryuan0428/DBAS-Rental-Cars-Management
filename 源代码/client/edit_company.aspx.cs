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

namespace client.client
{
	/// <summary>
	/// edit_company 的摘要说明。
	/// </summary>
	public partial class edit_company : System.Web.UI.Page
	{
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			// 在此处放置用户代码以初始化页面

			string struserid = Request.QueryString["userid_companyinfo"].ToString().Trim();

			if(!IsPostBack)
			{
				string sql = "select * from companyinfo where userid_companyinfo = '"+struserid+"'";
                DBClass db = new DBClass(sql);
				SqlDataReader dr = db.returndr();
				if(dr.Read())
				{
					
					userid.Text = dr["userid_companyinfo"].ToString().Trim();
					name.Text = dr["name_companyinfo"].ToString().Trim();
					mainname.Text = dr["mainname_companyinfo"].ToString().Trim();
					bussinessid.Text = dr["bussinessid_companyinfo"].ToString().Trim();
					capital.Text = dr["capital_companyinfo"].ToString().Trim();
					bank.Text = dr["bank_companyinfo"].ToString().Trim();
					depositnum.Text = dr["depositnum_companyinfo"].ToString().Trim();
					character.Text = dr["character_companyinfo"].ToString().Trim();
					address.Text = dr["address_companyinfo"].ToString().Trim();
					postcode.Text = dr["postcode_companyinfo"].ToString().Trim();
					phone.Text = dr["phone_companyinfo"].ToString().Trim();
					mobilephone.Text = dr["mobilephone_companyinfo"].ToString().Trim();
					fax.Text = dr["fax_companyinfo"].ToString().Trim();
					email.Text = dr["email_companyinfo"].ToString().Trim();
					danbaoname.Text = dr["danbaoname_companyinfo"].ToString().Trim();
					danbaophone.Text = dr["danbaophone_companyinfo"].ToString().Trim();
					danbaocardid.Text = dr["danbaocardid_companyinfo"].ToString().Trim();
					danbaoaddress.Text = dr["danbaoaddress_companyinfo"].ToString().Trim();
					operid.Text = dr["operid_companyinfo"].ToString().Trim();
					subpoint.Text = dr["subpoint_companyinfo"].ToString().Trim();
					memberid.Text = dr["memberid_companyinfo"].ToString().Trim();
					memberstart.Text = dr["memberstart_companyinfo"].ToString().Trim();
					memberend.Text = dr["memberend_companyinfo"].ToString().Trim();
					note.Text = dr["note_companyinfo"].ToString().Trim();





					if (dr["member_companyinfo"].ToString().Trim() == "是")
					{
						member.SelectedValue = "1";
					}

					if (dr["member_companyinfo"].ToString().Trim() == "否")
					{
						member.SelectedValue = "2";
					}



					if (dr["membertype_companyinfo"].ToString().Trim() == "普通租赁客户")
					{
						membertype.SelectedValue = "1";
					}

					if (dr["membertype_companyinfo"].ToString().Trim() == "一般会员客户")
					{
						membertype.SelectedValue = "2";
					}

					if (dr["membertype_companyinfo"].ToString().Trim() == "中级会员客户")
					{
						membertype.SelectedValue = "3";
					}

					if (dr["membertype_companyinfo"].ToString().Trim() == "高级会员客户")
					{
						membertype.SelectedValue = "4";
					}

				}


				System.DateTime currentTime=new System.DateTime(); 
				currentTime=System.DateTime.Now; 
				string strT=currentTime.ToString("d"); 
				rcd.Text =strT;

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

		protected void mod_Click(object sender, System.EventArgs e)
		{
		
			name.Enabled = true;
			mainname.Enabled = true;
			bussinessid.Enabled = true;
			capital.Enabled = true;
			bank.Enabled = true;
			depositnum.Enabled = true;
			character.Enabled = true;
			address.Enabled = true;
			postcode.Enabled = true;
			phone.Enabled = true;
			mobilephone.Enabled = true;
			fax.Enabled = true;
			email.Enabled = true;
			danbaoname.Enabled = true;
			danbaophone.Enabled = true;
			danbaocardid.Enabled = true;
			danbaoaddress.Enabled = true;
			operid.Enabled = true;
			subpoint.Enabled = true;
			memberid.Enabled = true;
			memberstart.Enabled = true;
			memberend.Enabled = true;
			note.Enabled = true;
			member.Enabled = true;
			membertype.Enabled = true;
			sure.Enabled = true;

		}

		protected void sure_Click(object sender, System.EventArgs e)
		{
			string sqlUpdate = "";
			string strname = "";
			string strmainname = "";
			string strbussinessid = "";
			string strcapital = "";
			string strbank = "";
			string strdepositnum = "";
			string strcharacter = "";
			string straddress = "";
			string strpostcode = "";
			string strphone = "";
			string strmobilephone = "";
			string strfax = "";
			string stremail = "";
			string strdanbaoname = "";
			string strdanbaophone = "";
			string strdanbaocardid = "";
			string strdanbaoaddress = "";
			string stroperid = "";
			string strsubpoint = "";
			string strmember = "";
			string strmemberid = "";
			string strmembertype = "";
			string strmemberstart = "";
			string strmemberend = "";
			string strnote = "";
			string strrcd = "";
			string struserid = "";

			strname = name.Text;
			strmainname = mainname.Text;
			strbussinessid = bussinessid.Text;
			strcapital = capital.Text;
			strbank = bank.Text;
			strdepositnum = depositnum.Text;
			strcharacter = character.Text;
			straddress = address.Text;
			strpostcode = postcode.Text;
			strphone = phone.Text;
			strmobilephone = mobilephone.Text;
			strfax = fax.Text;
			stremail = email.Text;
			strdanbaoname = danbaoname.Text;
			strdanbaophone = danbaophone.Text;
			strdanbaocardid = danbaocardid.Text;
			strdanbaoaddress = danbaoaddress.Text;
			stroperid = operid.Text;
			strsubpoint = subpoint.Text;
			strmember = member.SelectedItem.Text;
			strmemberid = memberid.Text;
			strmembertype = membertype.SelectedItem.Text;
			strmemberstart = memberstart.Text;
			strmemberend = memberend.Text;
			strnote = note.Text;
			strrcd = rcd.Text;
			struserid = userid.Text;

			sqlUpdate = "update companyinfo set name_companyinfo='"+strname+"',mainname_companyinfo='"+strmainname+"',bussinessid_companyinfo='"+strbussinessid+"',capital_companyinfo='"+strcapital+"',bank_companyinfo='"+strbank+"',depositnum_companyinfo='"+strdepositnum+"',character_companyinfo='"+strcharacter+"',address_companyinfo='"+straddress+"',postcode_companyinfo='"+strpostcode+"',phone_companyinfo='"+strphone+"',mobilephone_companyinfo='"+strmobilephone+"',fax_companyinfo='"+strfax+"',email_companyinfo='"+stremail+"',danbaoname_companyinfo='"+strdanbaoname+"',danbaophone_companyinfo='"+strdanbaophone+"',danbaocardid_companyinfo='"+strdanbaocardid+"',danbaoaddress_companyinfo='"+strdanbaoaddress+"',operid_companyinfo='"+stroperid+"',subpoint_companyinfo='"+strsubpoint+"',member_companyinfo='"+strmember+"',memberid_companyinfo='"+strmemberid+"',membertype_companyinfo='"+strmembertype+"',memberstart_companyinfo='"+strmemberstart+"',memberend_companyinfo='"+strmemberend+"',note_companyinfo='"+strnote+"',rcdtime_companyinfo='"+strrcd+"' where userid_companyinfo='"+struserid+"'";
            DBClass db = new DBClass(sqlUpdate);
            db.returndr();
            db.dbClose();

			Response.Write("<Script language='javaScript'>(alert(\"记录已修改\"))</Script>");


			Response.Write("<script language = 'javascript'>window.navigate('search_all_company.aspx');</script>");



		}

		protected void cancel_Click(object sender, System.EventArgs e)
		{
			Response.Redirect("search_all_company.aspx");

		}

		protected void Button2_Click(object sender, System.EventArgs e)
		{
			string strKeywordInput = keyword.Text.ToString().Trim();
			string sql = "select * from keyword where operator = 'hy'";
			string strKeyword = "";
            DBClass db = new DBClass(sql);
            SqlDataReader dr = db.returndr();
            if (dr.Read())
            {
                strKeyword = dr["keyword"].ToString().Trim();
            }

			db.dbClose();
			if(strKeywordInput == strKeyword)
			{
				mod.Enabled = true;
			}
			else
				Response.Write("<script language = 'javascript'>alert('验证码不正确！');</script>");

		}

	}
}
