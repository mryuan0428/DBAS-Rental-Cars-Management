<%@ Page language="c#" Inherits="cartrade.main" CodeFile="main.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>main</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<asp:HyperLink id="HyperLink1" style="Z-INDEX: 101; LEFT: 144px; POSITION: absolute; TOP: 48px"
				runat="server" NavigateUrl="newtrade.aspx">新建合同</asp:HyperLink>
			<asp:HyperLink id="HyperLink3" style="Z-INDEX: 102; LEFT: 144px; POSITION: absolute; TOP: 216px"
				runat="server" NavigateUrl="return.aspx">归还车辆</asp:HyperLink>
			<asp:HyperLink id="HyperLink4" style="Z-INDEX: 103; LEFT: 264px; POSITION: absolute; TOP: 216px"
				runat="server">成功还车</asp:HyperLink>
			<asp:HyperLink id="HyperLink6" style="Z-INDEX: 104; LEFT: 144px; POSITION: absolute; TOP: 136px"
				runat="server" NavigateUrl="relet.aspx">合同续租</asp:HyperLink>
			<asp:HyperLink id="HyperLink7" style="Z-INDEX: 105; LEFT: 144px; POSITION: absolute; TOP: 264px"
				runat="server" NavigateUrl="exchangecar.aspx">更换车辆</asp:HyperLink>
			<asp:HyperLink id="HyperLink8" style="Z-INDEX: 106; LEFT: 264px; POSITION: absolute; TOP: 264px"
				runat="server">成功更换车辆</asp:HyperLink>
			<asp:HyperLink id="HyperLink10" style="Z-INDEX: 107; LEFT: 144px; POSITION: absolute; TOP: 344px"
				runat="server" NavigateUrl="modify.aspx">查询修改删除合同</asp:HyperLink>
			<asp:HyperLink id="HyperLink9" style="Z-INDEX: 110; LEFT: 144px; POSITION: absolute; TOP: 88px"
				runat="server" NavigateUrl="protrade-newtrade.aspx">预定合同-新建</asp:HyperLink>
		</form>
	</body>
</HTML>
