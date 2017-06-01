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
	/// jiesuanpaper 的摘要说明。
	/// </summary>
	public partial class jiesuanpaper : System.Web.UI.Page
	{
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			// 在此处放置用户代码以初始化页面
			System.DateTime currentTime=new System.DateTime(); 
			currentTime=System.DateTime.Now; 
			string strT=currentTime.ToString("g"); 
			lbltimenow.Text =strT;

			Object objtradeid=Session["tradeid"];
			string strtradeid=objtradeid.ToString ().Trim ();

			if(!IsPostBack)
			{
				string sql="select trade.*,carinfo.* from trade,carinfo where trade.carid=carinfo.序号 and tradeid='"+strtradeid+"' ";
                DBClass db = new DBClass(sql);
				SqlDataReader dr = db.returndr();
				if(dr.Read())
				{
					
					lbltradeid.Text = dr["tradeid"].ToString().Trim();
					lblcarid.Text =dr["carid"].ToString ().Trim ();
					lblreturntime.Text=dr["returntime"].ToString ().Trim ();
					lblprozujin.Text =dr["prozujin"].ToString ().Trim ();
					lblbujiaozujin.Text =("-"+lblprozujin.Text) ;
			     	lblproyajin.Text =dr["proyajin"].ToString ().Trim ();
					lbltuiyajin.Text =dr["proyajin"].ToString ().Trim ();
					lbljiesuantime.Text=dr["jiesuantime"].ToString ().Trim ();
					if(dr["usertype"].ToString ().Trim ()=="个人会员" )
					{
						lblhuiyuan.Text="是";
					}
					if(dr["usertype"].ToString ().Trim ()=="公司会员" )
					{
						lblhuiyuan.Text="是";
					}
					if(dr["usertype"].ToString ().Trim ()=="个人用户" )
					{
						lblhuiyuan.Text="否";
					}
					if(dr["usertype"].ToString ().Trim ()=="公司用户" )
					{
						lblhuiyuan.Text="否";
					}
					lblchepaihao.Text =dr["车牌号"].ToString ().Trim ();
					lblchexing.Text =dr["车辆类型"].ToString ().Trim ();
					lblcheyanse.Text=dr["车辆颜色"].ToString ().Trim ();

					lblsubpoint.Text =dr["subpoint"].ToString ().Trim ();
					lbljiesuanren.Text =dr["operid"].ToString ().Trim ();
					
				}
				dr.Close ();
                db.dbClose();
			}
			


			Object objperson=Session["lblperson"].ToString ();
			string strperson=objperson.ToString ().Trim ();
			lblperson.Text=strperson;
			
			
			Object objchecknum=Session["txtchecknum"].ToString ();
			string strchecknum=objchecknum.ToString ().Trim ();
			lblchecknum.Text=strchecknum;
			
			Object objnote=Session["txtnote"].ToString ();
			string strnote=objnote.ToString ().Trim ();
			lblnote.Text=strnote;
			
			Object objchaoshijiafei1=Session["txtchaoshijiafei1"].ToString ();
			string strchaoshijiafei1=objchaoshijiafei1.ToString ().Trim ();
			lblchaoshijiafei1.Text=strchaoshijiafei1;
			double a2=Convert.ToDouble (lblchaoshijiafei1.Text );

			Object objchaoshijiafei=Session["txtchaoshijiafei"].ToString ();
			string strchaoshijiafei=objchaoshijiafei.ToString ().Trim ();
			lblchaoshijiafei.Text=strchaoshijiafei;
			double a1=Convert.ToDouble (lblchaoshijiafei.Text );
			
			Object objpaizhengyishi=Session["txtpaizhengyishi"].ToString ();
			string strpaizhengyishi=objpaizhengyishi.ToString ().Trim ();
			lblpaizhengyishi.Text=strpaizhengyishi;
			double a3=Convert.ToDouble (lblpaizhengyishi.Text );

			Object objloubaofei=Session["txtloubaofei"].ToString ();
			string strloubaofei=objloubaofei.ToString ().Trim ();
			lblloubaofei.Text=strloubaofei;
			double a4=Convert.ToDouble (lblloubaofei.Text );

			Object objchaizhuangpeichang=Session["txtchaizhuangpeichang"].ToString ();
			string strchaizhuangpeichang=objchaizhuangpeichang.ToString ().Trim ();
			lblchaizhuangpeichang.Text=strchaizhuangpeichang;
			double a5=Convert.ToDouble (lblchaizhuangpeichang.Text );

			Object objbaoxianfei=Session["txtbaoxianfei"].ToString ();
			string strbaoxianfei=objbaoxianfei.ToString ().Trim ();
			lblbaoxianfei.Text=strbaoxianfei;
			double a6=Convert.ToDouble (lblbaoxianfei.Text );

			Object objloujianfei=Session["txtloujianfei"].ToString ();
			string strloujianfei=objloujianfei.ToString ().Trim ();
			lblloujianfei.Text=strloujianfei;
			double a7=Convert.ToDouble (lblloujianfei.Text);

			Object objsijifei=Session["txtsijifei"].ToString ();
			string strsijifei=objsijifei.ToString ().Trim ();
			lblsijifei.Text=strsijifei;
			double a8=Convert.ToDouble (lblsijifei.Text );

			Object objxiulifei=Session["txtxiulifei"].ToString ();
			string strxiulifei=objxiulifei.ToString ().Trim ();
			lblxiulifei.Text=strxiulifei;
			double a9=Convert.ToDouble (lblxiulifei.Text );

			Object objchesunfei=Session["txtchesunfei"].ToString ();
			string strchesunfei=objchesunfei.ToString ().Trim ();
			lblchesunfei.Text=strchesunfei;
			double a10=Convert.ToDouble (lblchesunfei.Text); 

			Object objsongchefei=Session["txtsongchefei"].ToString ();
			string strsongchefei=objsongchefei.ToString ().Trim ();
			lblsongchefei.Text=strsongchefei;
			double a11=Convert.ToDouble (lblsongchefei.Text );

			Object objweizhangyajin=Session["txtweizhangyajin"].ToString ();
			string strweizhangyajin=objweizhangyajin.ToString ().Trim ();
			lblweizhangyajin.Text=strweizhangyajin;
			double a12=Convert.ToDouble (lblweizhangyajin.Text );

			double b1=Convert.ToDouble (lbltuiyajin.Text );
			

			double a=a1+a2+a3+a4+a5+a6+a7+a8+a9+a10+a11+a12;
			string shoufeixiaoji=Convert.ToString(a);
			lblshoufeixiaoji.Text =shoufeixiaoji;
			
			double b=b1;
			string tuifeixiaoji=Convert.ToString (b);
			lbltuifeixiaoji.Text =tuifeixiaoji;

			//应补交款,应退款
			string yingbujiaokuan="";
			string yingtuikuan="";
			double c=(a-b);
			if(c<=0)
			{
				yingbujiaokuan=".0000";
				yingtuikuan=Convert.ToString (Math.Abs (c));//求绝对值
			}
			else
			{
				yingbujiaokuan=Convert.ToString (c);
				yingtuikuan=".0000";
			}
			lblyingbujiaokuan.Text=yingbujiaokuan;
			lblyingtuikuan.Text =yingtuikuan;

			double d=Convert.ToDouble(lblshoufeixiaoji.Text )+Convert.ToDouble(lblprozujin.Text );
			if(lblhuiyuan.Text =="是")
			{
				string feiyongzongji=Convert.ToString (d*0.8);
				lblfeiyongzongji.Text =feiyongzongji;
			}
			else
			{
				string feiyongzongji=Convert.ToString (d);
				lblfeiyongzongji.Text =feiyongzongji;
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
	}
}
