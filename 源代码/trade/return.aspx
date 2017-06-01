<%@ Page language="c#" Inherits="cartrade._return" CodeFile="return.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>return</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body background="..\logo2.gif">
		<form id="Form1" method="post" runat="server">
			<TABLE id="Table1" style="Z-INDEX: 101; LEFT: 144px; WIDTH: 568px; POSITION: absolute; TOP: 96px; HEIGHT: 240px"
				cellSpacing="1" cellPadding="1" width="568" border="0">
				<TR bgcolor="#ffcc33">
					<TD height="33" bgcolor="#ffcc33" style="WIDTH: 178px"><div align="center"><FONT face="黑体">合同号</FONT></div>
					</TD>
					<TD bgcolor="#ffcc33">
						<asp:TextBox id="txttradeid" runat="server"></asp:TextBox></TD>
				</TR>
				<TR bgcolor="#ffffcc">
					<TD height="33" bgcolor="#ffffcc" style="WIDTH: 178px"><div align="center"><FONT face="黑体">车辆号</FONT></div>
					</TD>
					<TD bgcolor="#ffffcc">
						<asp:TextBox id="txtcarid" runat="server"></asp:TextBox></TD>
				</TR>
				<TR bgcolor="#ffcc33">
					<TD height="33" style="WIDTH: 178px"><div align="center"><FONT face="黑体">车辆当前里程</FONT></div>
					</TD>
					<TD bgcolor="#ffcc33">
						<asp:TextBox id="txtmeter" runat="server"></asp:TextBox></TD>
				</TR>
				<TR bgcolor="#ffffcc">
					<TD height="33" style="WIDTH: 178px"><div align="center"><FONT face="黑体">当前时间</FONT></div>
					</TD>
					<TD bgcolor="#ffffcc">
						<asp:Label id="Label2" runat="server" Width="152px" ForeColor="Black"></asp:Label>
						<asp:Label id="Label3" runat="server" Width="208px" ForeColor="Red">还车时间最多可落后30分钟！</asp:Label></TD>
				</TR>
				<TR bgcolor="#ffcc33">
					<TD height="33" style="WIDTH: 178px"><div align="center"><FONT face="黑体">还车时间</FONT></div>
					</TD>
					<TD bgcolor="#ffcc33">
						<asp:TextBox id="txtreturntime" runat="server"></asp:TextBox></TD>
				</TR>
				<TR bgcolor="#ffffcc">
					<TD height="33" style="WIDTH: 178px"><div align="center"><FONT face="黑体">车辆状态</FONT></div>
					</TD>
					<TD bgcolor="#ffffcc">
						<asp:DropDownList id="DropDownList1" runat="server">
							<asp:ListItem Value="0">待租</asp:ListItem>
							<asp:ListItem Value="1">已出租</asp:ListItem>
							<asp:ListItem Value="2">待修</asp:ListItem>
							<asp:ListItem Value="3">维修</asp:ListItem>
						</asp:DropDownList></TD>
				</TR>
			</TABLE>
			<asp:Label id="Label1" style="Z-INDEX: 102; LEFT: 352px; POSITION: absolute; TOP: 24px" runat="server"
				Font-Bold="True" Font-Size="Large">客户归还车辆</asp:Label>
			<asp:Button id="Button1" style="Z-INDEX: 103; LEFT: 288px; POSITION: absolute; TOP: 400px" runat="server"
				Text="确定" Width="80px" OnClick="Button1_Click1"></asp:Button>
			<asp:Button id="Button2" style="Z-INDEX: 104; LEFT: 472px; POSITION: absolute; TOP: 400px" runat="server"
				Text="取消" Width="80px"></asp:Button>
		</form>
	</body>
</HTML>
