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
	/// client_add 的摘要说明。
	/// </summary>
	public partial class client_add : System.Web.UI.Page
	{
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			// 在此处放置用户代码以初始化页面

			if(!IsPostBack)
			{
				string sqlstring = "select * from personinfo";
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

			string sqlInsert = "";



			struserid = userid.Text;
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

			if (userid.Text == "")
			{
				ErrorMsg.Text="请输入客户编号！ ";
				return; 
			}



			sqlInsert = "insert into personinfo(userid_personinfo,name_personinfo,cardtype_personinfo,idcard_personinfo,sex_personinfo,birthday_personinfo,education_personinfo,driveid_personinfo,bank_personinfo,depositnum_personinfo,danwei_personinfo,address_personinfo,postcode_personinfo,phone_personinfo,mobilephone_personinfo,fax_personinfo,email_personinfo,danbaoname_personinfo,danbaophone_personinfo,danbaocardid_personinfo,danbaoaddress_personinfo,operid_personinfo,subpoint_personinfo,member_personinfo,memberid_personinfo,membertype_personinfo,memberstart_personinfo,memberend_personinfo,favorite_personinfo,note_personinfo,rcdtime_personinfo) values('"+struserid+"','"+strname+"','"+strcardtype+"','"+stridcard+"','"+strsex+"','"+strbirthday+"','"+streducation+"','"+strdriveid+"','"+strbank+"','"+strdepositnum+"','"+strdanwei+"','"+straddress+"','"+strpostcode+"','"+strphone+"','"+strmobilephone+"','"+strfax+"','"+stremail+"','"+strdanbaoname+"','"+strdanbaophone+"','"+strdanbaocardid+"','"+strdanbaoaddress+"','"+stroperid+"','"+strsubpoint+"','"+strmember+"','"+strmemberid+"','"+strmembertype+"','"+strmemberstart+"','"+strmemberend+"','"+strfavorite+"','"+strnote+"','"+strrcd+"')";
            DBClass db = new DBClass(sqlInsert);
            db.returndr();
            db.dbClose();


			Response.Write("<Script language='javaScript'>(alert(\"记录已添加，请上传照片\"))</Script>");

		}

		protected void cancel_Click(object sender, System.EventArgs e)
		{
		

			string struserid = "";
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


			struserid = "";
			strname = "";
			stridcard = "";
			strbirthday = "";
			strdriveid = "";
			strbank = "";
			strdepositnum = "";
			straddress = "";
			strpostcode = "";
			strphone = "";
			strmobilephone = "";
			strfax = "";
			stremail = "";
			strdanwei = "";
			strdanbaoname = "";
			strdanbaophone = "";
			strdanbaocardid = "";
			strdanbaoaddress = "";
			stroperid = "";
			strsubpoint = "";
			strmemberid = "";
			strmemberstart = "";
			strmemberend = "";
			strfavorite = "";
			strnote = "";      
			strsex = "";
			strmember = "";
			strcardtype = "";
			streducation = "";
			strmembertype = "";
			strrcd = "";

		}

		protected void Button1_Click(object sender, System.EventArgs e)
		{
			Response.Redirect("main_client.aspx");
		}

		private void upload_Click(object sender, System.EventArgs e)
		{
			string userid_personinfo = userid.Text;
			Response.Redirect("photo_upload.aspx?userid_personinfo="+userid_personinfo+"");

		}

		
	}
}
