<%@ Page language="c#" Inherits="WebApplication4.supersearch1" CodeFile="supersearch.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>supersearch</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body background="file:///C:\Inetpub\wwwroot\images\logo2.gif">
		<form id="Form1" method="post" runat="server">
			<FONT face="黑体">
				<asp:label id="Label1" style="Z-INDEX: 110; LEFT: 136px; POSITION: absolute; TOP: 56px" runat="server">条件一</asp:label><asp:label id="Label2" style="Z-INDEX: 103; LEFT: 136px; POSITION: absolute; TOP: 120px" runat="server">条件二</asp:label><asp:dropdownlist id="DropDownList1" style="Z-INDEX: 101; LEFT: 208px; POSITION: absolute; TOP: 56px"
					runat="server">
					<asp:ListItem Value="0" Selected="True">车辆类型</asp:ListItem>
					<asp:ListItem Value="1">车辆颜色</asp:ListItem>
					<asp:ListItem Value="2">车辆状态</asp:ListItem>
					<asp:ListItem Value="3">车辆名称</asp:ListItem>
					<asp:ListItem Value="4">业务部编号</asp:ListItem>
					<asp:ListItem Value="5">公里数</asp:ListItem>
					<asp:ListItem Value="6">保险类型</asp:ListItem>
					<asp:ListItem Value="7">保险公司</asp:ListItem>
					<asp:ListItem Value="8">油类型</asp:ListItem>
				</asp:dropdownlist><asp:dropdownlist id="DropDownList2" style="Z-INDEX: 104; LEFT: 208px; POSITION: absolute; TOP: 112px"
					runat="server">
					<asp:ListItem Value="0" Selected="True">车辆类型</asp:ListItem>
					<asp:ListItem Value="1">车辆颜色</asp:ListItem>
					<asp:ListItem Value="2">车辆状态</asp:ListItem>
					<asp:ListItem Value="3">车辆名称</asp:ListItem>
					<asp:ListItem Value="4">业务部编号</asp:ListItem>
					<asp:ListItem Value="5">公里数</asp:ListItem>
					<asp:ListItem Value="6">保险公司</asp:ListItem>
					<asp:ListItem Value="7">保险类型</asp:ListItem>
					<asp:ListItem Value="8">油类型</asp:ListItem>
				</asp:dropdownlist><asp:button id="Button1" style="Z-INDEX: 106; LEFT: 200px; POSITION: absolute; TOP: 176px" runat="server"
					Text="查询" onclick="Button1_Click"></asp:button><asp:button id="Button4" style="Z-INDEX: 109; LEFT: 272px; POSITION: absolute; TOP: 176px" runat="server"
					Text="查看全部" onclick="Button4_Click"></asp:button><asp:textbox id="TextBox2" style="Z-INDEX: 105; LEFT: 336px; POSITION: absolute; TOP: 112px"
					runat="server"></asp:textbox><asp:textbox id="TextBox1" style="Z-INDEX: 102; LEFT: 336px; POSITION: absolute; TOP: 56px" runat="server"></asp:textbox><asp:button id="Button2" style="Z-INDEX: 107; LEFT: 384px; POSITION: absolute; TOP: 176px" runat="server"
					Text="取消" onclick="Button2_Click"></asp:button><asp:button id="Button3" style="Z-INDEX: 108; LEFT: 464px; POSITION: absolute; TOP: 176px" runat="server"
					Text="返回" onclick="Button3_Click"></asp:button><asp:label id="Message" style="Z-INDEX: 111; LEFT: 112px; POSITION: absolute; TOP: 216px" runat="server"></asp:label>
				<asp:datagrid id="DataGrid1" style="Z-INDEX: 112; LEFT: 104px; POSITION: absolute; TOP: 240px"
					runat="server" PageSize="5" DataSource="<%# dataSet21 %>">
					<AlternatingItemStyle BackColor="#FFCC33"></AlternatingItemStyle>
					<ItemStyle BackColor="#FFFFCC"></ItemStyle>
					<HeaderStyle BackColor="#FFCC33"></HeaderStyle>
					<PagerStyle NextPageText="下一页" PrevPageText="上一页" BackColor="#FFCC33"></PagerStyle>
				</asp:datagrid></FONT></form>
	</body>
</HTML>
