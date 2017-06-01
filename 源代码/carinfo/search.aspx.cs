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

namespace hlbd.车辆信息
{
	/// <summary>
	/// search 的摘要说明。
	/// </summary>
	public partial class search : System.Web.UI.Page
	{
		protected System.Data.SqlClient.SqlCommand sqlSelectCommand1;
		protected System.Data.SqlClient.SqlCommand sqlInsertCommand1;
		protected System.Data.SqlClient.SqlCommand sqlUpdateCommand1;
		protected System.Data.SqlClient.SqlCommand sqlDeleteCommand1;
		protected System.Data.SqlClient.SqlConnection sqlConnection1;
		protected System.Data.SqlClient.SqlDataAdapter sqlDataAdapter1;
		protected hlbd.车辆信息.DataSet1 dataSet11;
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			if(!this.IsPostBack)
			{
				sqlDataAdapter1.Fill(dataSet11,"carinfo");
				this.DataBind();	
			}// 在此处放置用户代码以初始化页面
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
			DataGrid1.DataBind();
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
			this.sqlSelectCommand1 = new System.Data.SqlClient.SqlCommand();
			this.sqlInsertCommand1 = new System.Data.SqlClient.SqlCommand();
			this.sqlUpdateCommand1 = new System.Data.SqlClient.SqlCommand();
			this.sqlDeleteCommand1 = new System.Data.SqlClient.SqlCommand();
			this.sqlConnection1 = new System.Data.SqlClient.SqlConnection();
			this.sqlDataAdapter1 = new System.Data.SqlClient.SqlDataAdapter();
			this.dataSet11 = new hlbd.车辆信息.DataSet1();
			((System.ComponentModel.ISupportInitialize)(this.dataSet11)).BeginInit();
			// 
			// sqlSelectCommand1
			// 
			this.sqlSelectCommand1.CommandText = "SELECT 序号, 车牌号, 车辆类型, 车辆名称, 车辆颜色, 车辆状态, 业务部编号, 公里数, 是否有效, 记录时间, 开始记录时间, 发动机号, 车架号" +
				", 防盗器号, 保险开始时间, 保险结束时间, 保险号, 保险类型, 保险公司, 油类型, 备注, 业务部序号, 车辆颜色序号, 车辆名称序号, 车辆状态序号," +
				" 车辆类型序号 FROM carinfo";
			this.sqlSelectCommand1.Connection = this.sqlConnection1;
			// 
			// sqlInsertCommand1
			// 
			this.sqlInsertCommand1.CommandText = @"INSERT INTO carinfo(车牌号, 车辆类型, 车辆名称, 车辆颜色, 车辆状态, 业务部编号, 公里数, 是否有效, 记录时间, 开始记录时间, 发动机号, 车架号, 防盗器号, 保险开始时间, 保险结束时间, 保险号, 保险类型, 保险公司, 油类型, 备注, 业务部序号, 车辆颜色序号, 车辆名称序号, 车辆状态序号, 车辆类型序号) VALUES (@车牌号, @车辆类型, @车辆名称, @车辆颜色, @车辆状态, @业务部编号, @公里数, @是否有效, @记录时间, @开始记录时间, @发动机号, @车架号, @防盗器号, @保险开始时间, @保险结束时间, @保险号, @保险类型, @保险公司, @油类型, @备注, @业务部序号, @车辆颜色序号, @车辆名称序号, @车辆状态序号, @车辆类型序号); SELECT 序号, 车牌号, 车辆类型, 车辆名称, 车辆颜色, 车辆状态, 业务部编号, 公里数, 是否有效, 记录时间, 开始记录时间, 发动机号, 车架号, 防盗器号, 保险开始时间, 保险结束时间, 保险号, 保险类型, 保险公司, 油类型, 备注, 业务部序号, 车辆颜色序号, 车辆名称序号, 车辆状态序号, 车辆类型序号 FROM carinfo WHERE (序号 = @@IDENTITY) AND (车牌号 = @车牌号)";
			this.sqlInsertCommand1.Connection = this.sqlConnection1;
			this.sqlInsertCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@车牌号", System.Data.SqlDbType.NVarChar, 15, "车牌号"));
			this.sqlInsertCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@车辆类型", System.Data.SqlDbType.NVarChar, 10, "车辆类型"));
			this.sqlInsertCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@车辆名称", System.Data.SqlDbType.NVarChar, 20, "车辆名称"));
			this.sqlInsertCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@车辆颜色", System.Data.SqlDbType.NVarChar, 10, "车辆颜色"));
			this.sqlInsertCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@车辆状态", System.Data.SqlDbType.NVarChar, 10, "车辆状态"));
			this.sqlInsertCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@业务部编号", System.Data.SqlDbType.Int, 4, "业务部编号"));
			this.sqlInsertCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@公里数", System.Data.SqlDbType.Decimal, 9, System.Data.ParameterDirection.Input, false, ((System.Byte)(18)), ((System.Byte)(0)), "公里数", System.Data.DataRowVersion.Current, null));
			this.sqlInsertCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@是否有效", System.Data.SqlDbType.NVarChar, 50, "是否有效"));
			this.sqlInsertCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@记录时间", System.Data.SqlDbType.DateTime, 4, "记录时间"));
			this.sqlInsertCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@开始记录时间", System.Data.SqlDbType.DateTime, 4, "开始记录时间"));
			this.sqlInsertCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@发动机号", System.Data.SqlDbType.NVarChar, 30, "发动机号"));
			this.sqlInsertCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@车架号", System.Data.SqlDbType.NVarChar, 30, "车架号"));
			this.sqlInsertCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@防盗器号", System.Data.SqlDbType.NVarChar, 30, "防盗器号"));
			this.sqlInsertCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@保险开始时间", System.Data.SqlDbType.DateTime, 4, "保险开始时间"));
			this.sqlInsertCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@保险结束时间", System.Data.SqlDbType.DateTime, 4, "保险结束时间"));
			this.sqlInsertCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@保险号", System.Data.SqlDbType.NVarChar, 20, "保险号"));
			this.sqlInsertCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@保险类型", System.Data.SqlDbType.NVarChar, 20, "保险类型"));
			this.sqlInsertCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@保险公司", System.Data.SqlDbType.NVarChar, 30, "保险公司"));
			this.sqlInsertCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@油类型", System.Data.SqlDbType.NVarChar, 10, "油类型"));
			this.sqlInsertCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@备注", System.Data.SqlDbType.NVarChar, 255, "备注"));
			this.sqlInsertCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@业务部序号", System.Data.SqlDbType.Int, 4, "业务部序号"));
			this.sqlInsertCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@车辆颜色序号", System.Data.SqlDbType.Int, 4, "车辆颜色序号"));
			this.sqlInsertCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@车辆名称序号", System.Data.SqlDbType.Int, 4, "车辆名称序号"));
			this.sqlInsertCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@车辆状态序号", System.Data.SqlDbType.Int, 4, "车辆状态序号"));
			this.sqlInsertCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@车辆类型序号", System.Data.SqlDbType.NVarChar, 10, "车辆类型序号"));
			// 
			// sqlUpdateCommand1
			// 
			this.sqlUpdateCommand1.CommandText = "UPDATE carinfo SET 车牌号 = @车牌号, 车辆类型 = @车辆类型, 车辆名称 = @车辆名称, 车辆颜色 = @车辆颜色, 车辆状态 = @" +
				"车辆状态, 业务部编号 = @业务部编号, 公里数 = @公里数, 是否有效 = @是否有效, 记录时间 = @记录时间, 开始记录时间 = @开始记录时间, " +
				"发动机号 = @发动机号, 车架号 = @车架号, 防盗器号 = @防盗器号, 保险开始时间 = @保险开始时间, 保险结束时间 = @保险结束时间, 保险号 " +
				"= @保险号, 保险类型 = @保险类型, 保险公司 = @保险公司, 油类型 = @油类型, 备注 = @备注, 业务部序号 = @业务部序号, 车辆颜色序号" +
				" = @车辆颜色序号, 车辆名称序号 = @车辆名称序号, 车辆状态序号 = @车辆状态序号, 车辆类型序号 = @车辆类型序号 WHERE (序号 = @Or" +
				"iginal_序号) AND (车牌号 = @Original_车牌号) AND (业务部序号 = @Original_业务部序号 OR @Original_业" +
				"务部序号 IS NULL AND 业务部序号 IS NULL) AND (业务部编号 = @Original_业务部编号 OR @Original_业务部编号 " +
				"IS NULL AND 业务部编号 IS NULL) AND (保险公司 = @Original_保险公司 OR @Original_保险公司 IS NULL " +
				"AND 保险公司 IS NULL) AND (保险号 = @Original_保险号 OR @Original_保险号 IS NULL AND 保险号 IS N" +
				"ULL) AND (保险开始时间 = @Original_保险开始时间 OR @Original_保险开始时间 IS NULL AND 保险开始时间 IS NU" +
				"LL) AND (保险类型 = @Original_保险类型 OR @Original_保险类型 IS NULL AND 保险类型 IS NULL) AND (" +
				"保险结束时间 = @Original_保险结束时间 OR @Original_保险结束时间 IS NULL AND 保险结束时间 IS NULL) AND (公" +
				"里数 = @Original_公里数 OR @Original_公里数 IS NULL AND 公里数 IS NULL) AND (发动机号 = @Origin" +
				"al_发动机号 OR @Original_发动机号 IS NULL AND 发动机号 IS NULL) AND (备注 = @Original_备注 OR @O" +
				"riginal_备注 IS NULL AND 备注 IS NULL) AND (开始记录时间 = @Original_开始记录时间 OR @Original_开" +
				"始记录时间 IS NULL AND 开始记录时间 IS NULL) AND (是否有效 = @Original_是否有效 OR @Original_是否有效 I" +
				"S NULL AND 是否有效 IS NULL) AND (油类型 = @Original_油类型 OR @Original_油类型 IS NULL AND 油" +
				"类型 IS NULL) AND (记录时间 = @Original_记录时间 OR @Original_记录时间 IS NULL AND 记录时间 IS NUL" +
				"L) AND (车架号 = @Original_车架号 OR @Original_车架号 IS NULL AND 车架号 IS NULL) AND (车辆名称 " +
				"= @Original_车辆名称 OR @Original_车辆名称 IS NULL AND 车辆名称 IS NULL) AND (车辆名称序号 = @Orig" +
				"inal_车辆名称序号 OR @Original_车辆名称序号 IS NULL AND 车辆名称序号 IS NULL) AND (车辆状态 = @Origina" +
				"l_车辆状态 OR @Original_车辆状态 IS NULL AND 车辆状态 IS NULL) AND (车辆状态序号 = @Original_车辆状态序" +
				"号 OR @Original_车辆状态序号 IS NULL AND 车辆状态序号 IS NULL) AND (车辆类型 = @Original_车辆类型 OR " +
				"@Original_车辆类型 IS NULL AND 车辆类型 IS NULL) AND (车辆类型序号 = @Original_车辆类型序号 OR @Orig" +
				"inal_车辆类型序号 IS NULL AND 车辆类型序号 IS NULL) AND (车辆颜色 = @Original_车辆颜色 OR @Original_" +
				"车辆颜色 IS NULL AND 车辆颜色 IS NULL) AND (车辆颜色序号 = @Original_车辆颜色序号 OR @Original_车辆颜色序" +
				"号 IS NULL AND 车辆颜色序号 IS NULL) AND (防盗器号 = @Original_防盗器号 OR @Original_防盗器号 IS NU" +
				"LL AND 防盗器号 IS NULL); SELECT 序号, 车牌号, 车辆类型, 车辆名称, 车辆颜色, 车辆状态, 业务部编号, 公里数, 是否有效, " +
				"记录时间, 开始记录时间, 发动机号, 车架号, 防盗器号, 保险开始时间, 保险结束时间, 保险号, 保险类型, 保险公司, 油类型, 备注, 业务部序号, " +
				"车辆颜色序号, 车辆名称序号, 车辆状态序号, 车辆类型序号 FROM carinfo WHERE (序号 = @序号) AND (车牌号 = @车牌号)";
			this.sqlUpdateCommand1.Connection = this.sqlConnection1;
			this.sqlUpdateCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@车牌号", System.Data.SqlDbType.NVarChar, 15, "车牌号"));
			this.sqlUpdateCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@车辆类型", System.Data.SqlDbType.NVarChar, 10, "车辆类型"));
			this.sqlUpdateCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@车辆名称", System.Data.SqlDbType.NVarChar, 20, "车辆名称"));
			this.sqlUpdateCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@车辆颜色", System.Data.SqlDbType.NVarChar, 10, "车辆颜色"));
			this.sqlUpdateCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@车辆状态", System.Data.SqlDbType.NVarChar, 10, "车辆状态"));
			this.sqlUpdateCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@业务部编号", System.Data.SqlDbType.Int, 4, "业务部编号"));
			this.sqlUpdateCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@公里数", System.Data.SqlDbType.Decimal, 9, System.Data.ParameterDirection.Input, false, ((System.Byte)(18)), ((System.Byte)(0)), "公里数", System.Data.DataRowVersion.Current, null));
			this.sqlUpdateCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@是否有效", System.Data.SqlDbType.NVarChar, 50, "是否有效"));
			this.sqlUpdateCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@记录时间", System.Data.SqlDbType.DateTime, 4, "记录时间"));
			this.sqlUpdateCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@开始记录时间", System.Data.SqlDbType.DateTime, 4, "开始记录时间"));
			this.sqlUpdateCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@发动机号", System.Data.SqlDbType.NVarChar, 30, "发动机号"));
			this.sqlUpdateCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@车架号", System.Data.SqlDbType.NVarChar, 30, "车架号"));
			this.sqlUpdateCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@防盗器号", System.Data.SqlDbType.NVarChar, 30, "防盗器号"));
			this.sqlUpdateCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@保险开始时间", System.Data.SqlDbType.DateTime, 4, "保险开始时间"));
			this.sqlUpdateCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@保险结束时间", System.Data.SqlDbType.DateTime, 4, "保险结束时间"));
			this.sqlUpdateCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@保险号", System.Data.SqlDbType.NVarChar, 20, "保险号"));
			this.sqlUpdateCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@保险类型", System.Data.SqlDbType.NVarChar, 20, "保险类型"));
			this.sqlUpdateCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@保险公司", System.Data.SqlDbType.NVarChar, 30, "保险公司"));
			this.sqlUpdateCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@油类型", System.Data.SqlDbType.NVarChar, 10, "油类型"));
			this.sqlUpdateCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@备注", System.Data.SqlDbType.NVarChar, 255, "备注"));
			this.sqlUpdateCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@业务部序号", System.Data.SqlDbType.Int, 4, "业务部序号"));
			this.sqlUpdateCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@车辆颜色序号", System.Data.SqlDbType.Int, 4, "车辆颜色序号"));
			this.sqlUpdateCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@车辆名称序号", System.Data.SqlDbType.Int, 4, "车辆名称序号"));
			this.sqlUpdateCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@车辆状态序号", System.Data.SqlDbType.Int, 4, "车辆状态序号"));
			this.sqlUpdateCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@车辆类型序号", System.Data.SqlDbType.NVarChar, 10, "车辆类型序号"));
			this.sqlUpdateCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Original_序号", System.Data.SqlDbType.Int, 4, System.Data.ParameterDirection.Input, false, ((System.Byte)(0)), ((System.Byte)(0)), "序号", System.Data.DataRowVersion.Original, null));
			this.sqlUpdateCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Original_车牌号", System.Data.SqlDbType.NVarChar, 15, System.Data.ParameterDirection.Input, false, ((System.Byte)(0)), ((System.Byte)(0)), "车牌号", System.Data.DataRowVersion.Original, null));
			this.sqlUpdateCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Original_业务部序号", System.Data.SqlDbType.Int, 4, System.Data.ParameterDirection.Input, false, ((System.Byte)(0)), ((System.Byte)(0)), "业务部序号", System.Data.DataRowVersion.Original, null));
			this.sqlUpdateCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Original_业务部编号", System.Data.SqlDbType.Int, 4, System.Data.ParameterDirection.Input, false, ((System.Byte)(0)), ((System.Byte)(0)), "业务部编号", System.Data.DataRowVersion.Original, null));
			this.sqlUpdateCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Original_保险公司", System.Data.SqlDbType.NVarChar, 30, System.Data.ParameterDirection.Input, false, ((System.Byte)(0)), ((System.Byte)(0)), "保险公司", System.Data.DataRowVersion.Original, null));
			this.sqlUpdateCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Original_保险号", System.Data.SqlDbType.NVarChar, 20, System.Data.ParameterDirection.Input, false, ((System.Byte)(0)), ((System.Byte)(0)), "保险号", System.Data.DataRowVersion.Original, null));
			this.sqlUpdateCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Original_保险开始时间", System.Data.SqlDbType.DateTime, 4, System.Data.ParameterDirection.Input, false, ((System.Byte)(0)), ((System.Byte)(0)), "保险开始时间", System.Data.DataRowVersion.Original, null));
			this.sqlUpdateCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Original_保险类型", System.Data.SqlDbType.NVarChar, 20, System.Data.ParameterDirection.Input, false, ((System.Byte)(0)), ((System.Byte)(0)), "保险类型", System.Data.DataRowVersion.Original, null));
			this.sqlUpdateCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Original_保险结束时间", System.Data.SqlDbType.DateTime, 4, System.Data.ParameterDirection.Input, false, ((System.Byte)(0)), ((System.Byte)(0)), "保险结束时间", System.Data.DataRowVersion.Original, null));
			this.sqlUpdateCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Original_公里数", System.Data.SqlDbType.Decimal, 9, System.Data.ParameterDirection.Input, false, ((System.Byte)(18)), ((System.Byte)(0)), "公里数", System.Data.DataRowVersion.Original, null));
			this.sqlUpdateCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Original_发动机号", System.Data.SqlDbType.NVarChar, 30, System.Data.ParameterDirection.Input, false, ((System.Byte)(0)), ((System.Byte)(0)), "发动机号", System.Data.DataRowVersion.Original, null));
			this.sqlUpdateCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Original_备注", System.Data.SqlDbType.NVarChar, 255, System.Data.ParameterDirection.Input, false, ((System.Byte)(0)), ((System.Byte)(0)), "备注", System.Data.DataRowVersion.Original, null));
			this.sqlUpdateCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Original_开始记录时间", System.Data.SqlDbType.DateTime, 4, System.Data.ParameterDirection.Input, false, ((System.Byte)(0)), ((System.Byte)(0)), "开始记录时间", System.Data.DataRowVersion.Original, null));
			this.sqlUpdateCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Original_是否有效", System.Data.SqlDbType.NVarChar, 50, System.Data.ParameterDirection.Input, false, ((System.Byte)(0)), ((System.Byte)(0)), "是否有效", System.Data.DataRowVersion.Original, null));
			this.sqlUpdateCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Original_油类型", System.Data.SqlDbType.NVarChar, 10, System.Data.ParameterDirection.Input, false, ((System.Byte)(0)), ((System.Byte)(0)), "油类型", System.Data.DataRowVersion.Original, null));
			this.sqlUpdateCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Original_记录时间", System.Data.SqlDbType.DateTime, 4, System.Data.ParameterDirection.Input, false, ((System.Byte)(0)), ((System.Byte)(0)), "记录时间", System.Data.DataRowVersion.Original, null));
			this.sqlUpdateCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Original_车架号", System.Data.SqlDbType.NVarChar, 30, System.Data.ParameterDirection.Input, false, ((System.Byte)(0)), ((System.Byte)(0)), "车架号", System.Data.DataRowVersion.Original, null));
			this.sqlUpdateCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Original_车辆名称", System.Data.SqlDbType.NVarChar, 20, System.Data.ParameterDirection.Input, false, ((System.Byte)(0)), ((System.Byte)(0)), "车辆名称", System.Data.DataRowVersion.Original, null));
			this.sqlUpdateCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Original_车辆名称序号", System.Data.SqlDbType.Int, 4, System.Data.ParameterDirection.Input, false, ((System.Byte)(0)), ((System.Byte)(0)), "车辆名称序号", System.Data.DataRowVersion.Original, null));
			this.sqlUpdateCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Original_车辆状态", System.Data.SqlDbType.NVarChar, 10, System.Data.ParameterDirection.Input, false, ((System.Byte)(0)), ((System.Byte)(0)), "车辆状态", System.Data.DataRowVersion.Original, null));
			this.sqlUpdateCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Original_车辆状态序号", System.Data.SqlDbType.Int, 4, System.Data.ParameterDirection.Input, false, ((System.Byte)(0)), ((System.Byte)(0)), "车辆状态序号", System.Data.DataRowVersion.Original, null));
			this.sqlUpdateCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Original_车辆类型", System.Data.SqlDbType.NVarChar, 10, System.Data.ParameterDirection.Input, false, ((System.Byte)(0)), ((System.Byte)(0)), "车辆类型", System.Data.DataRowVersion.Original, null));
			this.sqlUpdateCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Original_车辆类型序号", System.Data.SqlDbType.NVarChar, 10, System.Data.ParameterDirection.Input, false, ((System.Byte)(0)), ((System.Byte)(0)), "车辆类型序号", System.Data.DataRowVersion.Original, null));
			this.sqlUpdateCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Original_车辆颜色", System.Data.SqlDbType.NVarChar, 10, System.Data.ParameterDirection.Input, false, ((System.Byte)(0)), ((System.Byte)(0)), "车辆颜色", System.Data.DataRowVersion.Original, null));
			this.sqlUpdateCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Original_车辆颜色序号", System.Data.SqlDbType.Int, 4, System.Data.ParameterDirection.Input, false, ((System.Byte)(0)), ((System.Byte)(0)), "车辆颜色序号", System.Data.DataRowVersion.Original, null));
			this.sqlUpdateCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Original_防盗器号", System.Data.SqlDbType.NVarChar, 30, System.Data.ParameterDirection.Input, false, ((System.Byte)(0)), ((System.Byte)(0)), "防盗器号", System.Data.DataRowVersion.Original, null));
			this.sqlUpdateCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@序号", System.Data.SqlDbType.Int, 4, "序号"));
			// 
			// sqlDeleteCommand1
			// 
			this.sqlDeleteCommand1.CommandText = "DELETE FROM carinfo WHERE (序号 = @Original_序号) AND (车牌号 = @Original_车牌号) AND (业务部序" +
				"号 = @Original_业务部序号 OR @Original_业务部序号 IS NULL AND 业务部序号 IS NULL) AND (业务部编号 = @" +
				"Original_业务部编号 OR @Original_业务部编号 IS NULL AND 业务部编号 IS NULL) AND (保险公司 = @Origin" +
				"al_保险公司 OR @Original_保险公司 IS NULL AND 保险公司 IS NULL) AND (保险号 = @Original_保险号 OR " +
				"@Original_保险号 IS NULL AND 保险号 IS NULL) AND (保险开始时间 = @Original_保险开始时间 OR @Origin" +
				"al_保险开始时间 IS NULL AND 保险开始时间 IS NULL) AND (保险类型 = @Original_保险类型 OR @Original_保险" +
				"类型 IS NULL AND 保险类型 IS NULL) AND (保险结束时间 = @Original_保险结束时间 OR @Original_保险结束时间 " +
				"IS NULL AND 保险结束时间 IS NULL) AND (公里数 = @Original_公里数 OR @Original_公里数 IS NULL AN" +
				"D 公里数 IS NULL) AND (发动机号 = @Original_发动机号 OR @Original_发动机号 IS NULL AND 发动机号 IS " +
				"NULL) AND (备注 = @Original_备注 OR @Original_备注 IS NULL AND 备注 IS NULL) AND (开始记录时间" +
				" = @Original_开始记录时间 OR @Original_开始记录时间 IS NULL AND 开始记录时间 IS NULL) AND (是否有效 = " +
				"@Original_是否有效 OR @Original_是否有效 IS NULL AND 是否有效 IS NULL) AND (油类型 = @Original_" +
				"油类型 OR @Original_油类型 IS NULL AND 油类型 IS NULL) AND (记录时间 = @Original_记录时间 OR @Ori" +
				"ginal_记录时间 IS NULL AND 记录时间 IS NULL) AND (车架号 = @Original_车架号 OR @Original_车架号 I" +
				"S NULL AND 车架号 IS NULL) AND (车辆名称 = @Original_车辆名称 OR @Original_车辆名称 IS NULL AND" +
				" 车辆名称 IS NULL) AND (车辆名称序号 = @Original_车辆名称序号 OR @Original_车辆名称序号 IS NULL AND 车辆" +
				"名称序号 IS NULL) AND (车辆状态 = @Original_车辆状态 OR @Original_车辆状态 IS NULL AND 车辆状态 IS N" +
				"ULL) AND (车辆状态序号 = @Original_车辆状态序号 OR @Original_车辆状态序号 IS NULL AND 车辆状态序号 IS NU" +
				"LL) AND (车辆类型 = @Original_车辆类型 OR @Original_车辆类型 IS NULL AND 车辆类型 IS NULL) AND (" +
				"车辆类型序号 = @Original_车辆类型序号 OR @Original_车辆类型序号 IS NULL AND 车辆类型序号 IS NULL) AND (车" +
				"辆颜色 = @Original_车辆颜色 OR @Original_车辆颜色 IS NULL AND 车辆颜色 IS NULL) AND (车辆颜色序号 = @" +
				"Original_车辆颜色序号 OR @Original_车辆颜色序号 IS NULL AND 车辆颜色序号 IS NULL) AND (防盗器号 = @Ori" +
				"ginal_防盗器号 OR @Original_防盗器号 IS NULL AND 防盗器号 IS NULL)";
			this.sqlDeleteCommand1.Connection = this.sqlConnection1;
			this.sqlDeleteCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Original_序号", System.Data.SqlDbType.Int, 4, System.Data.ParameterDirection.Input, false, ((System.Byte)(0)), ((System.Byte)(0)), "序号", System.Data.DataRowVersion.Original, null));
			this.sqlDeleteCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Original_车牌号", System.Data.SqlDbType.NVarChar, 15, System.Data.ParameterDirection.Input, false, ((System.Byte)(0)), ((System.Byte)(0)), "车牌号", System.Data.DataRowVersion.Original, null));
			this.sqlDeleteCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Original_业务部序号", System.Data.SqlDbType.Int, 4, System.Data.ParameterDirection.Input, false, ((System.Byte)(0)), ((System.Byte)(0)), "业务部序号", System.Data.DataRowVersion.Original, null));
			this.sqlDeleteCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Original_业务部编号", System.Data.SqlDbType.Int, 4, System.Data.ParameterDirection.Input, false, ((System.Byte)(0)), ((System.Byte)(0)), "业务部编号", System.Data.DataRowVersion.Original, null));
			this.sqlDeleteCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Original_保险公司", System.Data.SqlDbType.NVarChar, 30, System.Data.ParameterDirection.Input, false, ((System.Byte)(0)), ((System.Byte)(0)), "保险公司", System.Data.DataRowVersion.Original, null));
			this.sqlDeleteCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Original_保险号", System.Data.SqlDbType.NVarChar, 20, System.Data.ParameterDirection.Input, false, ((System.Byte)(0)), ((System.Byte)(0)), "保险号", System.Data.DataRowVersion.Original, null));
			this.sqlDeleteCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Original_保险开始时间", System.Data.SqlDbType.DateTime, 4, System.Data.ParameterDirection.Input, false, ((System.Byte)(0)), ((System.Byte)(0)), "保险开始时间", System.Data.DataRowVersion.Original, null));
			this.sqlDeleteCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Original_保险类型", System.Data.SqlDbType.NVarChar, 20, System.Data.ParameterDirection.Input, false, ((System.Byte)(0)), ((System.Byte)(0)), "保险类型", System.Data.DataRowVersion.Original, null));
			this.sqlDeleteCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Original_保险结束时间", System.Data.SqlDbType.DateTime, 4, System.Data.ParameterDirection.Input, false, ((System.Byte)(0)), ((System.Byte)(0)), "保险结束时间", System.Data.DataRowVersion.Original, null));
			this.sqlDeleteCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Original_公里数", System.Data.SqlDbType.Decimal, 9, System.Data.ParameterDirection.Input, false, ((System.Byte)(18)), ((System.Byte)(0)), "公里数", System.Data.DataRowVersion.Original, null));
			this.sqlDeleteCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Original_发动机号", System.Data.SqlDbType.NVarChar, 30, System.Data.ParameterDirection.Input, false, ((System.Byte)(0)), ((System.Byte)(0)), "发动机号", System.Data.DataRowVersion.Original, null));
			this.sqlDeleteCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Original_备注", System.Data.SqlDbType.NVarChar, 255, System.Data.ParameterDirection.Input, false, ((System.Byte)(0)), ((System.Byte)(0)), "备注", System.Data.DataRowVersion.Original, null));
			this.sqlDeleteCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Original_开始记录时间", System.Data.SqlDbType.DateTime, 4, System.Data.ParameterDirection.Input, false, ((System.Byte)(0)), ((System.Byte)(0)), "开始记录时间", System.Data.DataRowVersion.Original, null));
			this.sqlDeleteCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Original_是否有效", System.Data.SqlDbType.NVarChar, 50, System.Data.ParameterDirection.Input, false, ((System.Byte)(0)), ((System.Byte)(0)), "是否有效", System.Data.DataRowVersion.Original, null));
			this.sqlDeleteCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Original_油类型", System.Data.SqlDbType.NVarChar, 10, System.Data.ParameterDirection.Input, false, ((System.Byte)(0)), ((System.Byte)(0)), "油类型", System.Data.DataRowVersion.Original, null));
			this.sqlDeleteCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Original_记录时间", System.Data.SqlDbType.DateTime, 4, System.Data.ParameterDirection.Input, false, ((System.Byte)(0)), ((System.Byte)(0)), "记录时间", System.Data.DataRowVersion.Original, null));
			this.sqlDeleteCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Original_车架号", System.Data.SqlDbType.NVarChar, 30, System.Data.ParameterDirection.Input, false, ((System.Byte)(0)), ((System.Byte)(0)), "车架号", System.Data.DataRowVersion.Original, null));
			this.sqlDeleteCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Original_车辆名称", System.Data.SqlDbType.NVarChar, 20, System.Data.ParameterDirection.Input, false, ((System.Byte)(0)), ((System.Byte)(0)), "车辆名称", System.Data.DataRowVersion.Original, null));
			this.sqlDeleteCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Original_车辆名称序号", System.Data.SqlDbType.Int, 4, System.Data.ParameterDirection.Input, false, ((System.Byte)(0)), ((System.Byte)(0)), "车辆名称序号", System.Data.DataRowVersion.Original, null));
			this.sqlDeleteCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Original_车辆状态", System.Data.SqlDbType.NVarChar, 10, System.Data.ParameterDirection.Input, false, ((System.Byte)(0)), ((System.Byte)(0)), "车辆状态", System.Data.DataRowVersion.Original, null));
			this.sqlDeleteCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Original_车辆状态序号", System.Data.SqlDbType.Int, 4, System.Data.ParameterDirection.Input, false, ((System.Byte)(0)), ((System.Byte)(0)), "车辆状态序号", System.Data.DataRowVersion.Original, null));
			this.sqlDeleteCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Original_车辆类型", System.Data.SqlDbType.NVarChar, 10, System.Data.ParameterDirection.Input, false, ((System.Byte)(0)), ((System.Byte)(0)), "车辆类型", System.Data.DataRowVersion.Original, null));
			this.sqlDeleteCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Original_车辆类型序号", System.Data.SqlDbType.NVarChar, 10, System.Data.ParameterDirection.Input, false, ((System.Byte)(0)), ((System.Byte)(0)), "车辆类型序号", System.Data.DataRowVersion.Original, null));
			this.sqlDeleteCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Original_车辆颜色", System.Data.SqlDbType.NVarChar, 10, System.Data.ParameterDirection.Input, false, ((System.Byte)(0)), ((System.Byte)(0)), "车辆颜色", System.Data.DataRowVersion.Original, null));
			this.sqlDeleteCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Original_车辆颜色序号", System.Data.SqlDbType.Int, 4, System.Data.ParameterDirection.Input, false, ((System.Byte)(0)), ((System.Byte)(0)), "车辆颜色序号", System.Data.DataRowVersion.Original, null));
			this.sqlDeleteCommand1.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Original_防盗器号", System.Data.SqlDbType.NVarChar, 30, System.Data.ParameterDirection.Input, false, ((System.Byte)(0)), ((System.Byte)(0)), "防盗器号", System.Data.DataRowVersion.Original, null));
			// 
			// sqlConnection1
			// 
            this.sqlConnection1.ConnectionString = "server=(local);database=pretrade;uid=sa;pwd=123456";
			// 
			// sqlDataAdapter1
			// 
			this.sqlDataAdapter1.DeleteCommand = this.sqlDeleteCommand1;
			this.sqlDataAdapter1.InsertCommand = this.sqlInsertCommand1;
			this.sqlDataAdapter1.SelectCommand = this.sqlSelectCommand1;
			this.sqlDataAdapter1.TableMappings.AddRange(new System.Data.Common.DataTableMapping[] {
																									  new System.Data.Common.DataTableMapping("Table", "carinfo", new System.Data.Common.DataColumnMapping[] {
																																																				 new System.Data.Common.DataColumnMapping("序号", "序号"),
																																																				 new System.Data.Common.DataColumnMapping("车牌号", "车牌号"),
																																																				 new System.Data.Common.DataColumnMapping("车辆类型", "车辆类型"),
																																																				 new System.Data.Common.DataColumnMapping("车辆名称", "车辆名称"),
																																																				 new System.Data.Common.DataColumnMapping("车辆颜色", "车辆颜色"),
																																																				 new System.Data.Common.DataColumnMapping("车辆状态", "车辆状态"),
																																																				 new System.Data.Common.DataColumnMapping("业务部编号", "业务部编号"),
																																																				 new System.Data.Common.DataColumnMapping("公里数", "公里数"),
																																																				 new System.Data.Common.DataColumnMapping("是否有效", "是否有效"),
																																																				 new System.Data.Common.DataColumnMapping("记录时间", "记录时间"),
																																																				 new System.Data.Common.DataColumnMapping("开始记录时间", "开始记录时间"),
																																																				 new System.Data.Common.DataColumnMapping("发动机号", "发动机号"),
																																																				 new System.Data.Common.DataColumnMapping("车架号", "车架号"),
																																																				 new System.Data.Common.DataColumnMapping("防盗器号", "防盗器号"),
																																																				 new System.Data.Common.DataColumnMapping("保险开始时间", "保险开始时间"),
																																																				 new System.Data.Common.DataColumnMapping("保险结束时间", "保险结束时间"),
																																																				 new System.Data.Common.DataColumnMapping("保险号", "保险号"),
																																																				 new System.Data.Common.DataColumnMapping("保险类型", "保险类型"),
																																																				 new System.Data.Common.DataColumnMapping("保险公司", "保险公司"),
																																																				 new System.Data.Common.DataColumnMapping("油类型", "油类型"),
																																																				 new System.Data.Common.DataColumnMapping("备注", "备注"),
																																																				 new System.Data.Common.DataColumnMapping("业务部序号", "业务部序号"),
																																																				 new System.Data.Common.DataColumnMapping("车辆颜色序号", "车辆颜色序号"),
																																																				 new System.Data.Common.DataColumnMapping("车辆名称序号", "车辆名称序号"),
																																																				 new System.Data.Common.DataColumnMapping("车辆状态序号", "车辆状态序号"),
																																																				 new System.Data.Common.DataColumnMapping("车辆类型序号", "车辆类型序号")})});
			this.sqlDataAdapter1.UpdateCommand = this.sqlUpdateCommand1;
			// 
			// dataSet11
			// 
			this.dataSet11.DataSetName = "DataSet1";
			this.dataSet11.Locale = new System.Globalization.CultureInfo("zh-CN");
			((System.ComponentModel.ISupportInitialize)(this.dataSet11)).EndInit();

		}
		#endregion

		protected void Button1_Click(object sender, System.EventArgs e)
		{
			string query1 = null;
			if(DropDownList1.SelectedIndex==0)
			{
                query1 = "where 车牌号=" + "'" + TextBox1.Text + "'";                       //对应数据库的属性字段英文
				sqlDataAdapter1.SelectCommand.CommandText ="select * from carinfo "+query1;
			}
			if (DropDownList1.SelectedIndex==1)
			{
                query1 = "where 车辆状态=" + "'" + TextBox1.Text + "'";
				sqlDataAdapter1.SelectCommand.CommandText ="select * from carinfo "+query1;
			}
			sqlDataAdapter1.Fill(dataSet11,"carinfo");
			DataGrid1.DataBind();
			
			
		}

		protected void Button2_Click(object sender, System.EventArgs e)
		{
			Response.Redirect("main.aspx");

		}

		protected void Button3_Click(object sender, System.EventArgs e)
		{
			Response.Redirect("supersearch.aspx");

		}

		protected void Button4_Click(object sender, System.EventArgs e)
		{
			Response.Redirect("search.aspx");

		}
	}

}
