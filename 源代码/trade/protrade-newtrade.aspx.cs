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
	/// protrade_newtrade 的摘要说明。
	/// </summary>
    public partial class protrade_newtrade : System.Web.UI.Page
    {

        protected void Page_Load(object sender, System.EventArgs e)
        {
            // 在此处放置用户代码以初始化页面
            Button1.Attributes.Add("onclick", "javascript:return confirm('已成功添加纪录，是否输出结算单？')");
            string strpretradeid = Request.QueryString["id_pretrade"].ToString().Trim();
            TextBox1.Text = strpretradeid;
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

        protected void Button4_Click(object sender, System.EventArgs e)
        {
            string strpretradeid = Request.QueryString["id_pretrade"].ToString().Trim();

            string sql = "select pretrade.* from pretrade where pretrade.id_pretrade = '" + strpretradeid + "'";
            DBClass db = new DBClass(sql);
            SqlDataReader dr = db.returndr();
            if (dr.Read())
            {

                lblidpretrade.Text = dr["id_pretrade"].ToString().Trim();
                Session["tradeid"] = lblidpretrade.Text;
                lbluserid.Text = dr["userid"].ToString().Trim();
                lblcarid.Text = dr["carid"].ToString().Trim();
                lblusernamepretrade.Text = dr["username_pretrade"].ToString().Trim();
                lblcarnamepretrade.Text = dr["carname_pretrade"].ToString().Trim();
                lbldriverpretrade.Text = dr["driver_pretrade"].ToString().Trim();
                lblbegintimepretrade.Text = dr["begintime_pretrade"].ToString().Trim();
                lblendtimepretrade.Text = dr["endtime_pretrade"].ToString().Trim();
                lbloperid.Text = dr["operid"].ToString().Trim();
                lbldepositpretrade.Text = dr["deposit_pretrade"].ToString().Trim();
                lblrcdtime.Text = dr["rcdtime_pretrade"].ToString().Trim();
                if (dr["persontype_pretrade"].ToString().Trim() == "个人用户")
                {
                    ddlpersontypepretrade.SelectedIndex = 0;
                }
                if (dr["persontype_pretrade"].ToString().Trim() == "个人会员")
                {
                    ddlpersontypepretrade.SelectedIndex = 1;
                }
                if (dr["persontype_pretrade"].ToString().Trim() == "公司用户")
                {
                    ddlpersontypepretrade.SelectedIndex = 2;
                }
                if (dr["persontype_pretrade"].ToString().Trim() == "公司会员")
                {
                    ddlpersontypepretrade.SelectedIndex = 3;
                }

            }
            else
            {
                Response.Write("<Script language='javaScript'>(alert(\"没有纪录！\"))</Script>");
            }
            Session["usertype"] = ddlpersontypepretrade.SelectedItem.Text;
            dr.Close();
            db.dbClose();
        }

        private void Button1_Click(object sender, System.EventArgs e)
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

            txt_1 = txtinsurename.Text;
            txt_2 = txtinsureaddress.Text;
            txt_3 = txtinsurephone.Text;
            txt_4 = txtnextpaytime.Text;
            txt_5 = txtnetpay.Text;
            txt_6 = txtunitpay.Text;
            txt_7 = txtsubpoint.Text;
            txt_8 = txtownpay.Text;
            txt_9 = txtjiesuantime.Text;
            txt_10 = txtpaytime.Text;
            txt_11 = txtprozujin.Text;
            txt_12 = txtchecknum.Text;
            txt_13 = txtmoneychangereason.Text;
            txt_14 = txtnote.Text;
            txt_15 = lblidpretrade.Text;
            txt_16 = lbluserid.Text;
            txt_17 = lblcarid.Text;
            txt_18 = lblbegintimepretrade.Text;
            txt_19 = lblendtimepretrade.Text;
            txt_20 = lbloperid.Text;
            txt_21 = lbldepositpretrade.Text;
            txt_22 = lblrcdtime.Text;
            txt_23 = ddlpersontypepretrade.SelectedItem.Text;
            txt_24 = ddlpaytype.SelectedItem.Text;
            txt_25 = ddljiesuan.SelectedItem.Text;

            string sql = "insert into trade(insurename,insureaddress,insurephone,nextpaytime,netpay,unitpay,";
            sql += "subpoint,ownpay,jiesuantime,paytime,prozujin,checknum,moneychangereason,note,";
            sql += "tradeid,userid,carid,begintime,endtime,operid,proyajin,rcdtime,usertype,paytype,jiesuan)";
            sql += "values('" + txt_1 + "','" + txt_2 + "','" + txt_3 + "','" + txt_4 + "',convert(money,'" + txt_5 + "'),";
            sql += "convert(money,'" + txt_6 + "'),'" + txt_7 + "',convert(money,'" + txt_8 + "'),'" + txt_9 + "','" + txt_10 + "',convert(money,'" + txt_11 + "'),";
            sql += "'" + txt_12 + "','" + txt_13 + "','" + txt_14 + "','" + txt_15 + "','" + txt_16 + "','" + txt_17 + "',";
            sql += "'" + txt_18 + "','" + txt_19 + "','" + txt_20 + "',convert(money,'" + txt_21 + "'),'" + txt_22 + "','" + txt_23 + "','" + txt_24 + "','" + txt_25 + "')";

            DBClass db = new DBClass(sql);
            SqlDataReader dr = db.returndr();
            dr.Close();
            db.dbClose();
            Response.Redirect("pretrade-newtradepaper.aspx");

        }

        private void Button2_Click(object sender, System.EventArgs e)
        {
            txtinsurename.Text = "";
            txtinsureaddress.Text = ""; ;
            txtinsurephone.Text = "";
            txtnextpaytime.Text = "";
            txtnetpay.Text = "";
            txtunitpay.Text = "";
            txtsubpoint.Text = "";
            txtownpay.Text = "";
            txtjiesuantime.Text = "";
            txtpaytime.Text = "";
            txtprozujin.Text = "";
            txtchecknum.Text = "";
            txtmoneychangereason.Text = "";
            txtnote.Text = "";
        }

        private void Button3_Click(object sender, System.EventArgs e)
        {
            Response.Redirect("main.aspx");
        }

        protected void Button1_Click1(object sender, EventArgs e)
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

            txt_1 = txtinsurename.Text;
            txt_2 = txtinsureaddress.Text;
            txt_3 = txtinsurephone.Text;
            txt_4 = txtnextpaytime.Text;
            txt_5 = txtnetpay.Text;
            txt_6 = txtunitpay.Text;
            txt_7 = txtsubpoint.Text;
            txt_8 = txtownpay.Text;
            txt_9 = txtjiesuantime.Text;
            txt_10 = txtpaytime.Text;
            txt_11 = txtprozujin.Text;
            txt_12 = txtchecknum.Text;
            txt_13 = txtmoneychangereason.Text;
            txt_14 = txtnote.Text;
            txt_15 = lblidpretrade.Text;
            txt_16 = lbluserid.Text;
            txt_17 = lblcarid.Text;
            txt_18 = lblbegintimepretrade.Text;
            txt_19 = lblendtimepretrade.Text;
            txt_20 = lbloperid.Text;
            txt_21 = lbldepositpretrade.Text;
            txt_22 = lblrcdtime.Text;
            txt_23 = ddlpersontypepretrade.SelectedItem.Text;
            txt_24 = ddlpaytype.SelectedItem.Text;
            txt_25 = ddljiesuan.SelectedItem.Text;

            string sql = "insert into trade(insurename,insureaddress,insurephone,nextpaytime,netpay,unitpay,";
            sql += "subpoint,ownpay,jiesuantime,paytime,prozujin,checknum,moneychangereason,note,";
            sql += "tradeid,userid,carid,begintime,endtime,operid,proyajin,rcdtime,usertype,paytype,jiesuan)";
            sql += "values('" + txt_1 + "','" + txt_2 + "','" + txt_3 + "','" + txt_4 + "',convert(money,'" + txt_5 + "'),";
            sql += "convert(money,'" + txt_6 + "'),'" + txt_7 + "',convert(money,'" + txt_8 + "'),'" + txt_9 + "','" + txt_10 + "',convert(money,'" + txt_11 + "'),";
            sql += "'" + txt_12 + "','" + txt_13 + "','" + txt_14 + "','" + txt_15 + "','" + txt_16 + "','" + txt_17 + "',";
            sql += "'" + txt_18 + "','" + txt_19 + "','" + txt_20 + "',convert(money,'" + txt_21 + "'),'" + txt_22 + "','" + txt_23 + "','" + txt_24 + "','" + txt_25 + "')";

            DBClass db = new DBClass(sql);
            SqlDataReader dr = db.returndr();
            dr.Close();
            db.dbClose();
            Response.Redirect("pretrade-newtradepaper.aspx");

        }
}
}
