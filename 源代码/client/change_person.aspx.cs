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
	/// change_person 的摘要说明。
	/// </summary>
	public partial class change_person : System.Web.UI.Page
	{
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			// 在此处放置用户代码以初始化页面

			string struserid = Request.QueryString["userid_personinfo"].ToString().Trim();

			if(!IsPostBack)
			{
				string sql = "select * from personinfo where userid_personinfo = '"+struserid+"'";
                DBClass db = new DBClass(sql);
				SqlDataReader dr = db.returndr();
				if(dr.Read())
				{
					
					userid.Text = dr["userid_personinfo"].ToString().Trim();
					name.Text = dr["name_personinfo"].ToString().Trim();
					idcard.Text = dr["idcard_personinfo"].ToString().Trim();
					birthday.Text = dr["birthday_personinfo"].ToString().Trim();
					driveid.Text = dr["driveid_personinfo"].ToString().Trim();
					bank.Text = dr["bank_personinfo"].ToString().Trim();
					depositnum.Text = dr["depositnum_personinfo"].ToString().Trim();
					danwei.Text = dr["danwei_personinfo"].ToString().Trim();
					address.Text = dr["address_personinfo"].ToString().Trim();
					postcode.Text = dr["postcode_personinfo"].ToString().Trim();
					phone.Text = dr["phone_personinfo"].ToString().Trim();
					mobilephone.Text = dr["mobilephone_personinfo"].ToString().Trim();
					fax.Text = dr["fax_personinfo"].ToString().Trim();
					email.Text = dr["email_personinfo"].ToString().Trim();
					danbaoname.Text = dr["danbaoname_personinfo"].ToString().Trim();
					danbaophone.Text = dr["danbaophone_personinfo"].ToString().Trim();
					danbaocardid.Text = dr["danbaocardid_personinfo"].ToString().Trim();
					danbaoaddress.Text = dr["danbaoaddress_personinfo"].ToString().Trim();
					operid.Text = dr["operid_personinfo"].ToString().Trim();
					subpoint.Text = dr["subpoint_personinfo"].ToString().Trim();
					memberid.Text = dr["memberid_personinfo"].ToString().Trim();
					memberstart.Text = dr["memberstart_personinfo"].ToString().Trim();
					memberend.Text = dr["memberend_personinfo"].ToString().Trim();
					favorite.Text = dr["favorite_personinfo"].ToString().Trim();
					note.Text = dr["note_personinfo"].ToString().Trim();


					if (dr["education_personinfo"].ToString().Trim()=="博士")
					{
						education.SelectedValue = "1";
					}

					if (dr["education_personinfo"].ToString().Trim()=="硕士")
					{
						education.SelectedValue = "2";
					}

					if (dr["education_personinfo"].ToString().Trim()=="研究生")
					{
						education.SelectedValue = "3";
					}

					if (dr["education_personinfo"].ToString().Trim()=="本科")
					{
						education.SelectedValue = "4";
					}

					if (dr["education_personinfo"].ToString().Trim()=="大专")
					{
						education.SelectedValue = "5";
					}

					if (dr["education_personinfo"].ToString().Trim()=="高中")
					{
						education.SelectedValue = "6";
					}

					if (dr["education_personinfo"].ToString().Trim()=="高职/中专")
					{
						education.SelectedValue = "7";
					}

					if (dr["education_personinfo"].ToString().Trim()=="初中")
					{
						education.SelectedValue = "8";
					}

					if (dr["education_personinfo"].ToString().Trim()=="小学")
					{
						education.SelectedValue = "9";
					}



					if (dr["cardtype_personinfo"].ToString().Trim() == "身份证")
					{
						cardtype.SelectedValue = "1";
					}

					if (dr["cardtype_personinfo"].ToString().Trim() == "军官证")
					{
						cardtype.SelectedValue = "2";
					}

					if (dr["cardtype_personinfo"].ToString().Trim() == "护照")
					{
						cardtype.SelectedValue = "3";
					}

					if (dr["cardtype_personinfo"].ToString().Trim() == "外国人居留证")
					{
						cardtype.SelectedValue = "4";
					}



					if (dr["sex_personinfo"].ToString().Trim() == "男")
					{
						sex.SelectedValue = "1";
					}

					if (dr["sex_personinfo"].ToString().Trim() == "女")
					{
						sex.SelectedValue = "2";
					}



					if (dr["member_personinfo"].ToString().Trim() == "是")
					{
						member.SelectedValue = "1";
					}

					if (dr["member_personinfo"].ToString().Trim() == "否")
					{
						member.SelectedValue = "2";
					}



					if (dr["membertype_personinfo"].ToString().Trim() == "普通租赁客户")
					{
						membertype.SelectedValue = "1";
					}

					if (dr["membertype_personinfo"].ToString().Trim() == "一般会员客户")
					{
						membertype.SelectedValue = "2";
					}

					if (dr["membertype_personinfo"].ToString().Trim() == "中级会员客户")
					{
						membertype.SelectedValue = "3";
					}

					if (dr["membertype_personinfo"].ToString().Trim() == "高级会员客户")
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


			if (sure.Enabled == true)
			{
				member.Enabled = true;
				if (member.SelectedItem.Text == "是")
				{
					memberid.Enabled = true;
					membertype.Enabled = true;
					memberstart.Enabled = true;
					memberend.Enabled = true;
					membertype.SelectedValue = "2";
				}

				if (member.SelectedItem.Text =="否")
				{
					memberid.Text = "";
					memberid.Enabled = false;
					membertype.SelectedValue = "1";
					membertype.Enabled = false;
					memberstart.Text = "";
					memberstart.Enabled = false;
					memberend.Text = "";
					memberend.Enabled = false;
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

		protected void cancel_Click(object sender, System.EventArgs e)
		{
			Response.Redirect("search_all_person.aspx");
		}

		protected void change_Click(object sender, System.EventArgs e)
		{
			sure.Enabled = true;
			member.Enabled = true;
			if (member.SelectedItem.Text == "是")
			{
				memberid.Enabled = true;
				membertype.Enabled = true;
				memberstart.Enabled = true;
				memberend.Enabled = true;
			}

			if (member.SelectedItem.Text =="否")
			{
				memberid.Text = "";
				memberid.Enabled = false;
				membertype.SelectedValue = "1";
				membertype.Enabled = false;
				memberstart.Text = "";
				memberstart.Enabled = false;
				memberend.Text = "";
				memberend.Enabled = false;
			}
		}

		protected void sure_Click(object sender, System.EventArgs e)
		{

			string sqlUpdate = "";


			string strname = "";
			string stridcard = "";
			string strbirthday = "";
			string strdriveid = "";
			string strbank = "";
			string strdepositnum = "";
			string straddress = "";
			string strpostcode = "";
			string strphone = "";
			string strmobilephone = "";
			string strfax = "";
			string stremail = "";
			string strdanwei = "";
			string strdanbaoname = "";
			string strdanbaophone = "";
			string strdanbaocardid = "";
			string strdanbaoaddress = "";
			string stroperid = "";
			string strsubpoint = "";
			string strmemberid = "";
			string strmemberstart = "";
			string strmemberend = "";
			string strfavorite = "";
			string strnote = "";      
			string strsex = "";
			string strmember = "";
			string strcardtype = "";
			string streducation = "";
			string strmembertype = "";
			string strrcd = "";
			string struserid="";

			strname = name.Text;
			stridcard = idcard.Text;
			strbirthday = birthday.Text;
			strdriveid = driveid.Text;
			strbank = bank.Text;
			strdepositnum = depositnum.Text;
			straddress = address.Text;
			strpostcode = postcode.Text;
			strphone = phone.Text;
			strmobilephone = mobilephone.Text;
			strfax = fax.Text;
			stremail = email.Text;
			strdanwei = danwei.Text;
			strdanbaoname = danbaoname.Text;
			strdanbaophone = danbaophone.Text;
			strdanbaocardid = danbaocardid.Text;
			strdanbaoaddress = danbaoaddress.Text;
			stroperid = operid.Text;
			strsubpoint = subpoint.Text;
			strmemberid = memberid.Text;
			strmemberstart = memberstart.Text;
			strmemberend = memberend.Text;
			strfavorite = favorite.Text;
			strnote = note.Text;      
			strsex = sex.SelectedItem.Text;
			strmember = member.SelectedItem.Text;
			strcardtype = cardtype.SelectedItem.Text;
			streducation = education.SelectedItem.Text;
			strmembertype = membertype.SelectedItem.Text;
			strrcd = rcd.Text;
			struserid = userid.Text;

			sqlUpdate = "update personinfo set name_personinfo='"+strname+"',cardtype_personinfo='"+strcardtype+"',idcard_personinfo='"+stridcard+"',sex_personinfo='"+strsex+"',birthday_personinfo='"+strbirthday+"',education_personinfo='"+streducation+"',driveid_personinfo='"+strdriveid+"',bank_personinfo='"+strbank+"',depositnum_personinfo='"+strdepositnum+"',danwei_personinfo='"+strdanwei+"',address_personinfo='"+straddress+"',postcode_personinfo='"+strpostcode+"',phone_personinfo='"+strphone+"',mobilephone_personinfo='"+strmobilephone+"',fax_personinfo='"+strfax+"',email_personinfo='"+stremail+"',danbaoname_personinfo='"+strdanbaoname+"',danbaophone_personinfo='"+strdanbaophone+"',danbaocardid_personinfo='"+strdanbaocardid+"',danbaoaddress_personinfo='"+strdanbaoaddress+"',operid_personinfo='"+stroperid+"',subpoint_personinfo='"+strsubpoint+"',member_personinfo='"+strmember+"',memberid_personinfo='"+strmemberid+"',membertype_personinfo='"+strmembertype+"',memberstart_personinfo='"+strmemberstart+"',memberend_personinfo='"+strmemberend+"'),favorite_personinfo='"+strfavorite+"',note_personinfo='"+strnote+"',rcdtime_personinfo='"+strrcd+"' where userid_personinfo='"+struserid+"'";
            DBClass db = new DBClass(sqlUpdate);
            db.returndr();
            db.dbClose();

			Response.Write("<Script language='javaScript'>(alert(\"转换成功\"))</Script>");


			Response.Write("<script language = 'javascript'>window.navigate('search_all_person.aspx');</script>");

		}

		protected void Button2_Click(object sender, System.EventArgs e)
		{
			string strKeywordInput = keyword.Text.ToString().Trim();
			string sql = "select * from keyword where operator = 'hy'";
			string strKeyword = "";

            DBClass db = new DBClass(sql);
            SqlDataReader dr = db.returndr();
			if(dr.Read())
			{
				strKeyword = dr["keyword"].ToString().Trim();
			}
			db.dbClose():
			if(strKeywordInput == strKeyword)
			{
				change.Enabled = true;
			}
			else
				Response.Write("<script language = 'javascript'>alert('验证码不正确！');</script>");

		}
	}
}
