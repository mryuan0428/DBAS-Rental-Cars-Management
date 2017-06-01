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
	/// search_person 的摘要说明。
	/// </summary>
	public partial class search_person : System.Web.UI.Page
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
					rcd.Text = dr["rcdtime_personinfo"].ToString().Trim();


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

		protected void sure_Click(object sender, System.EventArgs e)
		{
			Response.Redirect("search_all_person.aspx");
		}

		protected void mod_Click(object sender, System.EventArgs e)
		{
			string userid_personinfo = userid.Text;
			Response.Redirect("edit_person.aspx?userid_personinfo="+userid_personinfo+"");
		}

		protected void del_Click(object sender, System.EventArgs e)
		{
			string userid_personinfo = userid.Text;
			Response.Redirect("del_person.aspx?userid_personinfo="+userid_personinfo+"");

		}

		protected void photo_Click(object sender, System.EventArgs e)
		{
			string userid_personinfo = userid.Text;
			Response.Redirect("photo_browser.aspx?userid_personinfo="+userid_personinfo+"");

		}
	}
}
