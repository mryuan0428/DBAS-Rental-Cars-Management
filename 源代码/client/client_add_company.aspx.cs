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

namespace client
{
	/// <summary>
	/// client_add_company 的摘要说明。
	/// </summary>
	public partial class client_add_company : System.Web.UI.Page
	{
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			// 在此处放置用户代码以初始化页面

			if(!IsPostBack)
			{
				string sqlstring = "select * from companyinfo";
                DBClass db = new DBClass(sqlstring);
                db.returndr();
                db.dbClose();
				System.DateTime currentTime=new System.DateTime(); 
				currentTime=System.DateTime.Now; 
				string strT=currentTime.ToString("d"); 
				rcd.Text =strT;

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
			string struserid = "";
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
			string strmembernote = "";
			string strnote = "";
			string strrcd = "";
			

			string sqlInsert = "";


			struserid = userid.Text;
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
			strmembernote = note.Text;
			strrcd = rcd.Text;


			if (userid.Text == "")
			{
				ErrorMsg.Text="请输入客户编号！ ";
				return; 
			}


			sqlInsert = "insert into companyinfo(userid_companyinfo,name_companyinfo,mainname_companyinfo,bussinessid_companyinfo,capital_companyinfo,bank_companyinfo,depositnum_companyinfo,character_companyinfo,address_companyinfo,postcode_companyinfo,phone_companyinfo,mobilephone_companyinfo,fax_companyinfo,email_companyinfo,danbaoname_companyinfo,danbaophone_companyinfo,danbaocardid_companyinfo,danbaoaddress_companyinfo,operid_companyinfo,subpoint_companyinfo,member_companyinfo,memberid_companyinfo,membertype_companyinfo,memberstart_companyinfo,memberend_companyinfo,note_companyinfo,rcdtime_companyinfo) values('"+struserid+"','"+strname+"','"+strmainname+"','"+strbussinessid+"','"+strcapital+"','"+strbank+"','"+strdepositnum+"','"+strcharacter+"','"+straddress+"','"+strpostcode+"','"+strphone+"','"+strmobilephone+"','"+strfax+"','"+stremail+"','"+strdanbaoname+"','"+strdanbaophone+"','"+strdanbaocardid+"','"+strdanbaoaddress+"','"+stroperid+"','"+strsubpoint+"','"+strmember+"','"+strmemberid+"','"+strmembertype+"','"+strmemberstart+"','"+strmemberend+"','"+strnote+"','"+strrcd+"')";

            DBClass db = new DBClass(sqlInsert);
            db.returndr();
            db.dbClose();

			Response.Write("<Script language='javaScript'>(alert(\"记录已添加\"))</Script>");

			Response.Write("<script language='javascript'>window.navigate('main_client.aspx');</script>");


		}

		protected void cancel_Click(object sender, System.EventArgs e)
		{
		
			string struserid = "";
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
			string strmembernote = "";
			string strnote = "";
			string strrcd = "";


			struserid = "";
			strname = "";
			strmainname = "";
			strbussinessid = "";
			strcapital = "";
			strbank = "";
			strdepositnum = "";
			strcharacter = "";
			straddress = "";
			strpostcode = "";
			strphone = "";
			strmobilephone = "";
			strfax = "";
			stremail = "";
			strdanbaoname = "";
			strdanbaophone = "";
			strdanbaocardid = "";
			strdanbaoaddress = "";
			stroperid = "";
			strsubpoint = "";
			strmember = "";
			strmemberid = "";
			strmembertype = "";
			strmemberstart = "";
			strmemberend = "";
			strmembernote = "";
			strnote = "";
			strrcd = "";

		}

		protected void Button1_Click(object sender, System.EventArgs e)
		{
		
			Response.Redirect("main_client.aspx");

		}
	}
}
