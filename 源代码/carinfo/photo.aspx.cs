
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
using System.IO;

namespace WebApplication4
{
	
	/// <summary>
	/// photo 的摘要说明。
	/// </summary>
	public partial class photo : System.Web.UI.Page
	{
		public string imageurl;

		protected void Page_Load(object sender, System.EventArgs e)
		{
			// 在此处放置用户代码以初始化页面
			Button5.Attributes.Add("onclick","javascript:return confirm('您确认要删除么？')");
			if(!this.IsPostBack)
			{		
				BindGridToSource();
			}

		}

		private void BindGridToSource()
		{
			string SelectCommand = "SELECT * FROM  carpicture ";
            DBClass db = new DBClass(SelectCommand);
			DataSet ds = new DataSet();
            ds = db.returnSet("carpicture");   
			DataView dv = ds.Tables["carpicture"].DefaultView;
			DataGrid1.DataSource = dv;
			DataGrid1.DataBind();
			ShowPageStatus(dv.Count);			
		}

		private void ShowPageStatus(int nRecords)
		{
			Message.Text = "数据源共有<b><FONT color= #ff0000> " + nRecords + " </FONT></b>笔数据记录。" +
				"总共有<b><FONT color= #ff0000> " + DataGrid1.PageCount + " </FONT></b>页" + "，" +
				"目前是第<b><FONT color= #ff0000> " + (DataGrid1.CurrentPageIndex + 1 ) + " </FONT></b>页。";
		}

		private void DataGrid1_PageIndexChanged(object source, System.Web.UI.WebControls.DataGridPageChangedEventArgs e)
		{
			DataGrid1.CurrentPageIndex = e.NewPageIndex;
			BindGridToSource();
		}

		private void UploadFile()
		{
            SqlConnection conn = new SqlConnection("server=(local);database=pretrade;uid=sa;pwd=123456");
			string SelectCommand = "SELECT * FROM  carpicture";
			SqlDataAdapter MyCommand = new SqlDataAdapter(SelectCommand, conn);
			DataSet ds = new DataSet();
			MyCommand.Fill(ds, "carpicture");

			int intDocLen = txtFileContents.PostedFile.ContentLength;
			byte[] Docbuffer = new byte[intDocLen];
			Stream objStream;

			objStream = txtFileContents.PostedFile.InputStream;

			objStream.Read(Docbuffer,0,intDocLen);

            SqlConnection Conn = new SqlConnection("server=(local);database=pretrade;uid=sa;pwd=123456");
			Conn.Open();

			MyCommand.InsertCommand=new SqlCommand("insert into carpicture values(@车牌号,@车辆照片,@照片描述)",Conn);
			MyCommand.InsertCommand.Parameters.Add("@车牌号",SqlDbType.NVarChar);
			MyCommand.InsertCommand.Parameters.Add("@车辆照片",SqlDbType.Image);	
			MyCommand.InsertCommand.Parameters.Add("@照片描述",SqlDbType.NVarChar);
			MyCommand.InsertCommand.Parameters[0].Value=TextBox2.Text;
			MyCommand.InsertCommand.Parameters[1].Value=Docbuffer;
			MyCommand.InsertCommand.Parameters[2].Value=TextBox1.Text;
            
			
			try
			{
				int n = MyCommand.InsertCommand.ExecuteNonQuery();
				if (n>=1)ErrorMsg.Text="上传成功！";
				else ErrorMsg.Text="上传失败！";
			}
			catch
			{
				ErrorMsg.Text="车牌号重复，上传失败！";
				return;;
			}
			finally
			{
				Conn.Close();
				
			}

			Response.Redirect("photo.aspx");
			    
			DataGrid1.DataBind();
			MyCommand.Fill(ds,"carpicture");
	
			
		}

		
    
		

       

	
		#region Web 窗体设计器生成的代码
		override protected void OnInit(EventArgs e)
		{
		
			//CODEGEN: 该调用是 ASP.NET Web 窗体设计器所必需的。
		
			InitializeComponent();
			base.OnInit(e);
		}
		
		/// <summary>
		/// 设计器支持所需的方法 - 不要使用代码编辑器修改
		/// 此方法的内容。
		/// </summary>
		private void InitializeComponent()
		{   
			this.DataGrid1.PageIndexChanged += new System.Web.UI.WebControls.DataGridPageChangedEventHandler(this.DataGrid1_PageIndexChanged);

		}
		#endregion

		protected void Button3_Click(object sender, System.EventArgs e)     //返回
		{
			Response.Redirect("main.aspx");
		}

		protected void Button1_Click(object sender, System.EventArgs e)    //上传照片
		{
			if (TextBox1.Text == "") 
			{ 
				ErrorMsg.Text="错误：请输入照片描述！";
				return; 
			}
			
			UploadFile();
			
		}

		protected void Button4_Click(object sender, System.EventArgs e)   //清空照片
		{
            //???
		}

		
		protected void Button5_Click(object sender, System.EventArgs e)   //删除照片
		{
            SqlConnection conn = new SqlConnection("server=(local);database=pretrade;uid=sa;pwd=123456");
			string sql="delete from carpicture where 车牌号='"+TextBox2.Text+"'";         
			conn.Open();
			SqlCommand comm = new SqlCommand(sql,conn);
			int n = comm.ExecuteNonQuery();
			if (n>=1)ErrorMsg.Text="删除成功！";
			else ErrorMsg.Text="删除失败！";
			Response.Redirect ("photo.aspx");

		}

		protected void Button6_Click(object sender, System.EventArgs e)     //查看照片
		{
			string sql="select * from carpicture where 车牌号='"+TextBox2.Text+"'";
            DBClass db = new DBClass(sql);
            SqlDataReader dr = db.returndr();
			if(dr.Read ())
			{
				TextBox1.Text =dr["照片描述"].ToString();
				TextBox2.Text =dr["车牌号"].ToString();	
				Image1.ImageUrl =dr["车辆照片"].ToString();
				Response.BinaryWrite( (byte[]) dr["车辆照片"] );
				//跳转，仍在photo中显示
			}
			dr.Close ();
            db.dbClose();
		}

		protected void Button2_Click(object sender, System.EventArgs e)     //取消
		{
			TextBox1.Text="";
			TextBox2.Text="";
			
		}

		protected void Button7_Click(object sender, System.EventArgs e)     //继续添加
		{
			Response.Redirect("add.aspx");
		}

		protected void Button8_Click(object sender, System.EventArgs e)
		{
			Response.Redirect("modify.aspx");
		}

			
	}	
	
}
