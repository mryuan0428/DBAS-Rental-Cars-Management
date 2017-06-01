<%@ Page language="c#" Inherits="WebApplication4.delete1" CodeFile="delete.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>delete</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body background="file:///C:\Inetpub\wwwroot\images\logo2.gif">
		<form id="Form1" method="post" runat="server">
			<FONT face="黑体">
				<asp:Label id="Label1" style="Z-INDEX: 101; LEFT: 176px; POSITION: absolute; TOP: 56px" runat="server">删除项目</asp:Label>
				<asp:Label id="Message" style="Z-INDEX: 107; LEFT: 176px; POSITION: absolute; TOP: 152px" runat="server"></asp:Label>
				<asp:Button id="Button2" style="Z-INDEX: 106; LEFT: 512px; POSITION: absolute; TOP: 112px" runat="server"
					Text="返回" onclick="Button2_Click"></asp:Button>
				<asp:Button id="Button1" style="Z-INDEX: 105; LEFT: 448px; POSITION: absolute; TOP: 112px" runat="server"
					Text="删除" onclick="Button1_Click"></asp:Button>
				<asp:TextBox id="TextBox1" style="Z-INDEX: 104; LEFT: 272px; POSITION: absolute; TOP: 112px"
					runat="server"></asp:TextBox>
				<asp:DropDownList id="DropDownList1" style="Z-INDEX: 103; LEFT: 272px; POSITION: absolute; TOP: 56px"
					runat="server">
					<asp:ListItem Value="0" Selected="True">序号</asp:ListItem>
					<asp:ListItem Value="1">车牌号</asp:ListItem>
				</asp:DropDownList>
				<asp:Label id="Label2" style="Z-INDEX: 102; LEFT: 176px; POSITION: absolute; TOP: 112px" runat="server">删除内容</asp:Label>
				<asp:DataGrid id="DataGrid1" style="Z-INDEX: 108; LEFT: 176px; POSITION: absolute; TOP: 176px"
					runat="server" PageSize="5" AllowPaging="True">
					<AlternatingItemStyle BackColor="#FFCC33"></AlternatingItemStyle>
					<ItemStyle BackColor="#FFFFCC"></ItemStyle>
					<HeaderStyle BackColor="#FFCC33"></HeaderStyle>
					<PagerStyle NextPageText="下一页" PrevPageText="上一页" BackColor="#FFCC33"></PagerStyle>
				</asp:DataGrid></FONT>
		</form>
	</body>
</HTML>
