<%@ Page language="c#" Inherits="cartrade.successexchange" CodeFile="successexchange.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>successexchange</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body background="file:///F:\logo2.gif">
		<form id="Form1" method="post" runat="server">
			<FONT face="黑体">
				<TABLE id="Table1" style="Z-INDEX: 101; LEFT: 128px; WIDTH: 568px; POSITION: absolute; TOP: 160px; HEIGHT: 320px"
					cellSpacing="1" cellPadding="1" width="568" border="1">
					<TR>
						<TD style="WIDTH: 145px">合同号</TD>
						<TD style="WIDTH: 133px">
							<asp:Label id="Label2" runat="server"></asp:Label></TD>
						<TD style="WIDTH: 127px">更换后的车辆号
						</TD>
						<TD>
							<asp:Label id="Label3" runat="server"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
						</TD>
					</TR>
					<TR>
						<TD style="WIDTH: 145px">客户号</TD>
						<TD style="WIDTH: 133px">
							<asp:Label id="Label4" runat="server"></asp:Label></TD>
						<TD style="WIDTH: 127px">承租人姓名</TD>
						<TD>
							<asp:Label id="Label5" runat="server"></asp:Label></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 145px">起租时间</TD>
						<TD style="WIDTH: 133px">
							<asp:Label id="Label6" runat="server"></asp:Label></TD>
						<TD style="WIDTH: 127px">应还时间</TD>
						<TD>
							<asp:Label id="Label7" runat="server"></asp:Label></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 145px">预付租金</TD>
						<TD style="WIDTH: 133px">
							<asp:Label id="Label8" runat="server"></asp:Label></TD>
						<TD style="WIDTH: 127px">预付押金</TD>
						<TD>
							<asp:Label id="Label9" runat="server"></asp:Label></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 145px">每日租金</TD>
						<TD style="WIDTH: 133px">
							<asp:Label id="Label10" runat="server"></asp:Label></TD>
						<TD style="WIDTH: 127px"></TD>
						<TD></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 145px">备注</TD>
						<TD style="WIDTH: 133px">
							<asp:Label id="Label11" runat="server"></asp:Label></TD>
						<TD style="WIDTH: 127px"></TD>
						<TD></TD>
					</TR>
				</TABLE>
				<asp:Label id="Label1" style="Z-INDEX: 102; LEFT: 368px; POSITION: absolute; TOP: 112px" runat="server">更换车辆信息</asp:Label></FONT>
		</form>
	</body>
</HTML>
