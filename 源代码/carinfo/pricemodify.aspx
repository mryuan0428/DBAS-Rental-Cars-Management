<%@ Page language="c#" Inherits="WebApplication4.pricemodify" CodeFile="pricemodify.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>pricemodify</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body background="file:///C:\Inetpub\wwwroot\images\logo2.gif">
		<form id="Form1" method="post" runat="server">
			<TABLE id="Table3" style="Z-INDEX: 103; LEFT: 112px; WIDTH: 736px; POSITION: absolute; TOP: 176px; HEIGHT: 40px"
				cellSpacing="2" cellPadding="1" width="736" border="3">
				<TR>
					<TD style="WIDTH: 357px" bgColor="#ffffcc"><FONT face="黑体">租车押金
							<asp:TextBox id="TextBox2" runat="server"></asp:TextBox></FONT></TD>
					<TD bgColor="#ffffcc"><FONT face="黑体">超驶收费
							<asp:TextBox id="TextBox3" runat="server"></asp:TextBox></FONT></TD>
				</TR>
			</TABLE>
			<TABLE id="Table1" style="Z-INDEX: 107; LEFT: 112px; WIDTH: 736px; POSITION: absolute; TOP: 120px; HEIGHT: 40px"
				cellSpacing="2" cellPadding="1" width="736" border="3">
				<TR>
					<TD style="WIDTH: 217px" bgColor="#ffcc33"><FONT face="黑体">车辆名称
							<asp:DropDownList id="DropDownList3" runat="server" Width="128px"></asp:DropDownList></FONT></TD>
					<TD style="WIDTH: 235px" bgColor="#ffcc33"><FONT face="黑体">车辆类型
							<asp:DropDownList id="DropDownList4" runat="server" Width="112px"></asp:DropDownList></FONT></TD>
					<TD bgColor="#ffcc33"><FONT face="黑体">限制里程数目
							<asp:TextBox id="TextBox1" runat="server"></asp:TextBox></FONT></TD>
				</TR>
			</TABLE>
			<TABLE id="Table2" style="Z-INDEX: 102; LEFT: 112px; WIDTH: 736px; POSITION: absolute; TOP: 248px; HEIGHT: 96px"
				cellSpacing="6" cellPadding="1" width="736" border="3">
				<TR>
					<TD style="WIDTH: 144px" bgColor="#ffcc33"><FONT face="黑体">租车费用</FONT></TD>
					<TD style="WIDTH: 183px" bgColor="#ffcc33"><FONT face="黑体">
							<asp:DropDownList id="DropDownList1" runat="server" Width="160px">
								<asp:ListItem Value="租期1到3天的费用" Selected="True">租期1到3天的费用</asp:ListItem>
								<asp:ListItem Value="租期4到7天的费用">租期4到7天的费用</asp:ListItem>
								<asp:ListItem Value="租期8到15天的费用">租期8到15天的费用</asp:ListItem>
								<asp:ListItem Value="租期16到30天的费用">租期16到30天的费用</asp:ListItem>
								<asp:ListItem Value="租期31到90天的费用">租期31到90天的费用</asp:ListItem>
								<asp:ListItem Value="租期91到180天的费用">租期91到180天的费用</asp:ListItem>
								<asp:ListItem Value="租期大于181天的费用">租期大于181天的费用</asp:ListItem>
							</asp:DropDownList></FONT></TD>
					<TD bgColor="#ffcc33">
						<asp:TextBox id="TextBox4" runat="server"></asp:TextBox></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 144px" bgColor="#ffffcc"><FONT face="黑体">超时费用</FONT></TD>
					<TD style="WIDTH: 183px" bgColor="#ffffcc">
						<asp:DropDownList id="DropDownList2" runat="server" Width="160px">
							<asp:ListItem Value="超时1到3小时收费" Selected="True">超时1到3小时收费</asp:ListItem>
							<asp:ListItem Value="超时4到6小时收费">超时4到6小时收费</asp:ListItem>
							<asp:ListItem Value="超时7到24小时收费">超时7到24小时收费</asp:ListItem>
							<asp:ListItem Value="超时大于25小时收费">超时大于25小时收费</asp:ListItem>
						</asp:DropDownList></TD>
					<TD bgColor="#ffffcc">
						<asp:TextBox id="TextBox5" runat="server"></asp:TextBox></TD>
				</TR>
			</TABLE>
			<asp:Label id="Label1" style="Z-INDEX: 101; LEFT: 400px; POSITION: absolute; TOP: 40px" runat="server"
				Font-Names="黑体" Font-Size="XX-Large" BackColor="Transparent" BorderColor="Transparent">更改租价</asp:Label>
			<asp:Button id="Button1" style="Z-INDEX: 104; LEFT: 136px; POSITION: absolute; TOP: 360px" runat="server"
				Text="修改" onclick="Button1_Click"></asp:Button>
			<asp:Button id="Button2" style="Z-INDEX: 105; LEFT: 200px; POSITION: absolute; TOP: 360px" runat="server"
				Text="新增" onclick="Button2_Click"></asp:Button>
			<asp:Button id="Button3" style="Z-INDEX: 106; LEFT: 136px; POSITION: absolute; TOP: 408px" runat="server"
				Text="返回" onclick="Button3_Click"></asp:Button>
			<asp:Label id="ErrorMsg" style="Z-INDEX: 108; LEFT: 120px; POSITION: absolute; TOP: 88px" runat="server"
				ForeColor="Red"></asp:Label>
			<asp:Button id="Button4" style="Z-INDEX: 109; LEFT: 264px; POSITION: absolute; TOP: 360px" runat="server"
				Text="继续增加" onclick="Button4_Click"></asp:Button>
			<asp:Button id="Button5" style="Z-INDEX: 110; LEFT: 384px; POSITION: absolute; TOP: 360px" runat="server"
				Text="删除" onclick="Button5_Click"></asp:Button></form>
	</body>
</HTML>
