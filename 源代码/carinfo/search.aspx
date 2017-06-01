<%@ Page language="c#" Inherits="hlbd.车辆信息.search" CodeFile="search.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>search</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body background="file:///C:\Inetpub\wwwroot\images\logo2.gif">
		<form id="Form1" method="post" runat="server">
			<FONT face="黑体">
				<asp:Label id="Label1" style="Z-INDEX: 108; LEFT: 72px; POSITION: absolute; TOP: 88px" runat="server"
					Width="72px" Height="16px" BackColor="Transparent" BorderColor="Transparent">查询方式</asp:Label>
				<asp:Label id="Label2" style="Z-INDEX: 101; LEFT: 72px; POSITION: absolute; TOP: 136px" runat="server"
					BackColor="Transparent" BorderColor="Transparent">查询内容</asp:Label>
				<asp:DropDownList id="DropDownList1" style="Z-INDEX: 103; LEFT: 168px; POSITION: absolute; TOP: 88px"
					runat="server" ForeColor="#000040">
					<asp:ListItem Value="0" Selected="True">车牌号</asp:ListItem>
					<asp:ListItem Value="1">车辆状态</asp:ListItem>
				</asp:DropDownList>
				<asp:TextBox id="TextBox1" style="Z-INDEX: 102; LEFT: 168px; POSITION: absolute; TOP: 136px"
					runat="server"></asp:TextBox>
				<asp:Button id="Button4" style="Z-INDEX: 107; LEFT: 376px; POSITION: absolute; TOP: 88px" runat="server"
					Text="查看全部" onclick="Button4_Click"></asp:Button>
				<asp:Button id="Button1" style="Z-INDEX: 104; LEFT: 376px; POSITION: absolute; TOP: 136px" runat="server"
					Text="查询" onclick="Button1_Click"></asp:Button>
				<asp:Button id="Button2" style="Z-INDEX: 105; LEFT: 456px; POSITION: absolute; TOP: 136px" runat="server"
					Text="返回" onclick="Button2_Click"></asp:Button>
				<asp:Button id="Button3" style="Z-INDEX: 106; LEFT: 536px; POSITION: absolute; TOP: 136px" runat="server"
					Text="高级查询" onclick="Button3_Click"></asp:Button>
				<asp:Label id="Message" style="Z-INDEX: 109; LEFT: 72px; POSITION: absolute; TOP: 176px" runat="server"
					BorderColor="Transparent" BackColor="Transparent"></asp:Label>
				<asp:DataGrid id=DataGrid1 style="Z-INDEX: 110; LEFT: 56px; POSITION: absolute; TOP: 200px" runat="server" PageSize="5" DataSource="<%# dataSet11 %>">
					<AlternatingItemStyle BackColor="#FFCC33"></AlternatingItemStyle>
					<ItemStyle BackColor="#FFFFCC"></ItemStyle>
					<HeaderStyle BackColor="#FFCC33"></HeaderStyle>
					<PagerStyle NextPageText="下一页" PrevPageText="上一页" BackColor="#FFCC33"></PagerStyle>
				</asp:DataGrid></FONT>
		</form>
	</body>
</HTML>
