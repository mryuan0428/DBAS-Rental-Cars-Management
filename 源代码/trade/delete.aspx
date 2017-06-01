<%@ Page language="c#" Inherits="cartrade.delete" CodeFile="delete.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>delete</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body background="..\logo2.gif">
		<form id="Form1" method="post" runat="server">
			<asp:Label id="Label1" style="Z-INDEX: 102; LEFT: 416px; POSITION: absolute; TOP: 56px" runat="server"
				Width="104px" ForeColor="Transparent" Font-Bold="True" Font-Size="Large">废除合同</asp:Label>
			<asp:Label id="Label12" style="Z-INDEX: 103; LEFT: 304px; POSITION: absolute; TOP: 320px" runat="server"
				Visible="False">请输入口令</asp:Label>
			<asp:TextBox id="TextBox1" style="Z-INDEX: 104; LEFT: 408px; POSITION: absolute; TOP: 320px"
				runat="server" Width="112px" TextMode="Password" Visible="False"></asp:TextBox>
			<asp:Button id="Button1" style="Z-INDEX: 105; LEFT: 568px; POSITION: absolute; TOP: 320px" runat="server"
				Width="80px" Text="确定" Visible="False" onclick="Button1_Click"></asp:Button>
			<asp:Button id="Button2" style="Z-INDEX: 106; LEFT: 360px; POSITION: absolute; TOP: 360px" runat="server"
				Text="是否废除" onclick="Button2_Click"></asp:Button>
			<asp:Button id="Button3" style="Z-INDEX: 107; LEFT: 488px; POSITION: absolute; TOP: 360px" runat="server"
				Width="80px" Text="返回" onclick="Button3_Click"></asp:Button>
			<TABLE id="Table1" style="Z-INDEX: 101; LEFT: 304px; WIDTH: 340px; FONT-FAMILY: 黑体; POSITION: absolute; TOP: 112px; HEIGHT: 123px"
				cellSpacing="1" cellPadding="1" width="340" border="0">
				<TR bgcolor="#ffcc33">
					<TD bgcolor="#ffcc33" height="33">
						<asp:Label id="Label2" runat="server">合同号</asp:Label></TD>
					<TD height="33">
						<asp:Label id="Label3" runat="server"></asp:Label></TD>
				</TR>
				<TR bgcolor="#ffffcc">
					<TD height="33">
						<asp:Label id="Label4" runat="server">用户号</asp:Label></TD>
					<TD height="33">
						<asp:Label id="Label5" runat="server"></asp:Label></TD>
				</TR>
				<TR bgcolor="#ffcc33">
					<TD height="33">
						<asp:Label id="Label6" runat="server">车辆号</asp:Label></TD>
					<TD height="33">
						<asp:Label id="Label7" runat="server"></asp:Label></TD>
				</TR>
				<TR bgcolor="#ffffcc">
					<TD height="33">
						<asp:Label id="Label8" runat="server">起租时间</asp:Label></TD>
					<TD height="33">
						<asp:Label id="Label9" runat="server"></asp:Label></TD>
				</TR>
				<TR bgcolor="#ffcc33">
					<TD height="33">
						<asp:Label id="Label10" runat="server">应还时间</asp:Label></TD>
					<TD height="33">
						<asp:Label id="Label11" runat="server"></asp:Label></TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>
