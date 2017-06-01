<%@ Page language="c#" Inherits="WebApplication4.addinsurecompany" CodeFile="addinsurecompany.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>addinsurecompany</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body bgColor="#ffffff" background="file:///C:\Inetpub\wwwroot\images\logo2.gif">
		<form id="Form1" method="post" runat="server">
			<asp:Label id="Label1" style="Z-INDEX: 101; LEFT: 224px; POSITION: absolute; TOP: 88px" runat="server"
				Width="88px" Font-Names="黑体" BorderColor="Transparent" BackColor="Transparent">输入新保险公司名称</asp:Label>
			<asp:Label id="Label2" style="Z-INDEX: 102; LEFT: 224px; POSITION: absolute; TOP: 152px" runat="server"
				Width="96px" Font-Names="黑体">输入要删除的保险公司序号</asp:Label>
			<asp:TextBox id="TextBox1" style="Z-INDEX: 103; LEFT: 344px; POSITION: absolute; TOP: 104px"
				runat="server"></asp:TextBox>
			<asp:TextBox id="TextBox2" style="Z-INDEX: 104; LEFT: 344px; POSITION: absolute; TOP: 160px"
				runat="server"></asp:TextBox>
			<asp:Button id="Button1" style="Z-INDEX: 105; LEFT: 544px; POSITION: absolute; TOP: 104px" runat="server"
				Text="添加" onclick="Button1_Click"></asp:Button>
			<asp:Button id="Button2" style="Z-INDEX: 106; LEFT: 616px; POSITION: absolute; TOP: 104px" runat="server"
				Text="返回" onclick="Button2_Click"></asp:Button>
			<asp:Button id="Button3" style="Z-INDEX: 107; LEFT: 544px; POSITION: absolute; TOP: 160px" runat="server"
				Text="删除" onclick="Button3_Click"></asp:Button>
			<asp:DataGrid id="DataGrid1" style="Z-INDEX: 108; LEFT: 224px; POSITION: absolute; TOP: 248px"
				runat="server" Width="376px" PageSize="3" AllowPaging="True">
				<AlternatingItemStyle BackColor="#FFCC33"></AlternatingItemStyle>
				<ItemStyle BackColor="#FFFFCC"></ItemStyle>
				<HeaderStyle BackColor="#FFCC33"></HeaderStyle>
				<PagerStyle NextPageText="下一页" PrevPageText="上一页" BackColor="#FFCC33"></PagerStyle>
			</asp:DataGrid>
			<asp:Label id="ErrorMsg" style="Z-INDEX: 109; LEFT: 376px; POSITION: absolute; TOP: 200px"
				runat="server" ForeColor="Red"></asp:Label>
			<asp:Label id="Label3" style="Z-INDEX: 110; LEFT: 336px; POSITION: absolute; TOP: 32px" runat="server"
				ForeColor="#8080FF" Font-Size="X-Large" Font-Names="黑体" BorderColor="Transparent" BackColor="Transparent">增加保险公司</asp:Label>
			<asp:Label id="Message" style="Z-INDEX: 111; LEFT: 224px; POSITION: absolute; TOP: 224px" runat="server"></asp:Label>
		</form>
	</body>
</HTML>
