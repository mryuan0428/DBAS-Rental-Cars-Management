<%@ Page language="c#" Inherits="WebApplication1.delete_pretrade" CodeFile="delete_pretrade.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>BookDelete</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body background="..\logo2.gif">
		<form id="Form1" method="post" runat="server">
			<FONT face="黑体">
				<TABLE id="Table1" style="Z-INDEX: 104; LEFT: 320px; POSITION: absolute; TOP: 88px" cellSpacing="1"
					cellPadding="1" width="300" border="1" bgColor="#8080ff">
					<TR>
						<TD style="WIDTH: 123px"><FONT face="黑体">
								<asp:Label id="pretradeid" runat="server" Font-Names="黑体" ForeColor="White">合同号：</asp:Label></FONT></TD>
						<TD>
							<asp:TextBox id="txtPretradeid" runat="server"></asp:TextBox></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 123px">
							<asp:Label id="userid" runat="server" Font-Names="黑体" ForeColor="White">客户号：</asp:Label></TD>
						<TD>
							<asp:TextBox id="txtUserid" runat="server"></asp:TextBox></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 123px">
							<asp:Label id="Label2" runat="server" Width="80px" Font-Names="黑体" ForeColor="White">客户名称：</asp:Label></TD>
						<TD>
							<asp:TextBox id="txtPersonname" runat="server"></asp:TextBox></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 123px; HEIGHT: 16px">
							<asp:Label id="persontype" runat="server" Width="80px" Font-Names="黑体" ForeColor="White">客户类型：</asp:Label></TD>
						<TD style="HEIGHT: 16px">
							<asp:DropDownList id="txtPersontype" runat="server" ForeColor="#8080FF">
								<asp:ListItem Value="个人用户">个人用户</asp:ListItem>
								<asp:ListItem Value="个人会员">个人会员</asp:ListItem>
								<asp:ListItem Value="公司用户">公司用户</asp:ListItem>
								<asp:ListItem Value="公司会员">公司会员</asp:ListItem>
							</asp:DropDownList></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 123px">
							<asp:Label id="carid" runat="server" Width="64px" Font-Names="黑体" ForeColor="White">车辆号：</asp:Label></TD>
						<TD>
							<asp:TextBox id="txtCarid" runat="server"></asp:TextBox></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 123px">
							<asp:Label id="Label5" runat="server" Font-Names="黑体" ForeColor="White">租车时间：</asp:Label></TD>
						<TD>
							<asp:TextBox id="txtBegintime" runat="server"></asp:TextBox></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 123px">
							<asp:Label id="Label3" runat="server" Font-Names="黑体" ForeColor="White">还车时间：</asp:Label></TD>
						<TD>
							<asp:TextBox id="txtEndtime" runat="server"></asp:TextBox></TD>
					</TR>
				</TABLE>
				<asp:Label id="删除合同" style="Z-INDEX: 101; LEFT: 416px; POSITION: absolute; TOP: 48px" runat="server"
					Font-Size="Medium" Font-Names="黑体" ForeColor="#8080FF">删除预定合同</asp:Label>
				<asp:Button id="btnDel" style="Z-INDEX: 102; LEFT: 384px; POSITION: absolute; TOP: 392px" runat="server"
					Text="删 除" Width="56px" Visible="False" ForeColor="White" Font-Names="黑体" BackColor="#8080FF" onclick="btnDel_Click"></asp:Button>
				<asp:Button id="btnCancel" style="Z-INDEX: 103; LEFT: 512px; POSITION: absolute; TOP: 392px"
					runat="server" Text="取 消" Width="56px" ForeColor="White" Font-Names="黑体" BackColor="#8080FF" onclick="btnCancel_Click"></asp:Button>
				<asp:TextBox id="keyword" style="Z-INDEX: 105; LEFT: 440px; POSITION: absolute; TOP: 328px" runat="server"
					Width="104px" BorderStyle="Dotted" BorderColor="#8080FF" TextMode="Password"></asp:TextBox>
				<asp:Label id="Label1" style="Z-INDEX: 106; LEFT: 328px; POSITION: absolute; TOP: 328px" runat="server"
					Width="104px" Font-Size="Small" Font-Names="黑体" ForeColor="#8080FF">操作验证码：</asp:Label>
				<asp:Button id="Button1" style="Z-INDEX: 107; LEFT: 576px; POSITION: absolute; TOP: 328px" runat="server"
					Text="确 定" Width="48px" Font-Names="黑体" BorderStyle="Outset" ForeColor="White" BackColor="#8080FF"
					Font-Bold="True" onclick="Button1_Click"></asp:Button></FONT>
		</form>
	</body>
</HTML>
