<%@ Import Namespace="System.IO" %>
<%@ Page language="c#" Inherits="WebApplication4.photo" CodeFile="photo.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>photo</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<SCRIPT language="javascript">
	<!--
		function DisplayPicture(value,image)
		{
            image.src=value;
         }
	-->
		</SCRIPT>
		<script language="c#" runat="server">
protected void Page_Load(object sender, EventArgs e)
{
    /*FileStream oFileStream;
    long lFileSize = 0;
    oFileStream = new FileStream(Server.MapPath("../images/010.jpg"), FileMode.Open);
    lFileSize = oFileStream.Length;

    byte[] bBuffer = new byte[(int)lFileSize];
    oFileStream.Read(bBuffer, 0, (int)lFileSize);
    oFileStream.Close();
    Response.ClearContent();
    Response.ContentType = "image/jpg";
    Response.BinaryWrite(bBuffer);
    oFileStream.Close();
    Response.End();*/
}
		</script>
	</HEAD>
	<body background="file:///C:\Inetpub\wwwroot\images\logo2.gif">
		<form id="Form1" method="post" runat="server">
			<asp:label id="Label1" style="Z-INDEX: 101; LEFT: 32px; POSITION: absolute; TOP: 40px" runat="server"
				Font-Size="Large" Font-Bold="True" Font-Names="黑体">上传照片（照片的后缀名必须为jpg、bmp，不能大于5M）</asp:label><asp:label id="Label2" style="Z-INDEX: 102; LEFT: 40px; POSITION: absolute; TOP: 128px" runat="server"
				Font-Names="黑体">在您的电脑</asp:label><asp:label id="Label3" style="Z-INDEX: 103; LEFT: 40px; POSITION: absolute; TOP: 176px" runat="server"
				Font-Names="黑体">照片描述</asp:label><asp:textbox id="TextBox1" style="Z-INDEX: 104; LEFT: 176px; POSITION: absolute; TOP: 168px"
				runat="server"></asp:textbox><asp:button id="Button1" style="Z-INDEX: 105; LEFT: 352px; POSITION: absolute; TOP: 168px" runat="server"
				Text="上传" onclick="Button1_Click"></asp:button><asp:button id="Button2" style="Z-INDEX: 106; LEFT: 232px; POSITION: absolute; TOP: 216px" runat="server"
				Text="取消" onclick="Button2_Click"></asp:button><asp:button id="Button3" style="Z-INDEX: 107; LEFT: 312px; POSITION: absolute; TOP: 248px" runat="server"
				Text="到主菜单" onclick="Button3_Click"></asp:button><asp:image id="Image1" style="Z-INDEX: 108; LEFT: 480px; POSITION: absolute; TOP: 80px" runat="server"
				Height="216px" Width="248px"></asp:image><asp:button id="Button4" style="Z-INDEX: 109; LEFT: 136px; POSITION: absolute; TOP: 216px" runat="server"
				Text="清空照片" onclick="Button4_Click"></asp:button><asp:button id="Button5" style="Z-INDEX: 110; LEFT: 40px; POSITION: absolute; TOP: 216px" runat="server"
				Text="删除照片" onclick="Button5_Click"></asp:button><asp:label id="ErrorMsg" style="Z-INDEX: 111; LEFT: 56px; POSITION: absolute; TOP: 288px" runat="server"
				Height="24px" Width="256px" ForeColor="Red"></asp:label><input id="txtFileContents" style="Z-INDEX: 112; LEFT: 176px; POSITION: absolute; TOP: 128px"
				onpropertychange="DisplayPicture(this.value,Image1)" type="file" name="txtFileContents" runat="server">
			<asp:label id="Label4" style="Z-INDEX: 113; LEFT: 40px; POSITION: absolute; TOP: 88px" runat="server"
				Font-Names="黑体">车牌号</asp:label><asp:textbox id="TextBox2" style="Z-INDEX: 114; LEFT: 176px; POSITION: absolute; TOP: 80px" runat="server"></asp:textbox><asp:button id="Button6" style="Z-INDEX: 115; LEFT: 336px; POSITION: absolute; TOP: 80px" runat="server"
				Text="查看图片" onclick="Button6_Click"></asp:button><asp:button id="Button7" style="Z-INDEX: 116; LEFT: 40px; POSITION: absolute; TOP: 248px" runat="server"
				Text="返回添加页面" onclick="Button7_Click"></asp:button><asp:datagrid id="DataGrid1" style="Z-INDEX: 117; LEFT: 48px; POSITION: absolute; TOP: 360px"
				runat="server" Width="585px" PageSize="5" AllowPaging="True">
				<AlternatingItemStyle BackColor="#FFCC33"></AlternatingItemStyle>
				<ItemStyle BackColor="#FFFFCC"></ItemStyle>
				<HeaderStyle BackColor="#FFCC33"></HeaderStyle>
				<PagerStyle NextPageText="下一页" PrevPageText="上一页" BackColor="#FFCC33"></PagerStyle>
			</asp:datagrid>
			<asp:Label id="Message" style="Z-INDEX: 118; LEFT: 56px; POSITION: absolute; TOP: 320px" runat="server"></asp:Label>
			<asp:Button id="Button8" style="Z-INDEX: 119; LEFT: 176px; POSITION: absolute; TOP: 248px" runat="server"
				Text="返回修改页面" onclick="Button8_Click"></asp:Button>
			<asp:Label id="Label5" style="Z-INDEX: 120; LEFT: 336px; POSITION: absolute; TOP: 288px" runat="server"
				ForeColor="Blue">修改前请先删除！</asp:Label></form>
	</body>
</HTML>
