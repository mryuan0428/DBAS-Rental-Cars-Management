<%@ Page language="c#" Inherits="cartrade.WebForm2" CodeFile="newtrade.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>WebForm2</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body background="file:///C:\Inetpub\wwwroot\HLBD\logo2.gif">
		<form id="Form1" method="post" runat="server">
			<asp:label id="Label1" style="Z-INDEX: 101; LEFT: 408px; POSITION: absolute; TOP: 8px" runat="server"
				ForeColor="Black" Font-Size="Large" Font-Bold="True" Width="160px">新建租赁合同</asp:label>
			<TABLE id="Table1" style="Z-INDEX: 105; LEFT: 152px; WIDTH: 672px; POSITION: absolute; TOP: 56px; HEIGHT: 384px"
				cellSpacing="2" cellPadding="1" width="672" border="0">
				<TR bgcolor="#ffcc33">
					<TD height="33" style="WIDTH: 170px"><FONT face="黑体">合同号</FONT></TD>
					<TD style="WIDTH: 158px">
						<asp:TextBox id="txttradeid" runat="server"></asp:TextBox></TD>
					<TD style="WIDTH: 182px"><FONT face="黑体">用户号</FONT></TD>
					<TD>
						<asp:TextBox id="txtuserid" runat="server"></asp:TextBox></TD>
				</TR>
				<TR bgcolor="#ffffcc">
					<TD height="33" style="WIDTH: 170px"><FONT face="黑体">车辆号</FONT></TD>
					<TD style="WIDTH: 158px">
						<asp:TextBox id="txtcarid" runat="server"></asp:TextBox></TD>
					<TD style="WIDTH: 182px"><FONT face="黑体">起租时间</FONT></TD>
					<TD>
						<asp:TextBox id="txtbegintime" runat="server"></asp:TextBox></TD>
				</TR>
				<TR bgcolor="#ffcc33">
					<TD height="33" style="WIDTH: 170px"><FONT face="黑体">应还时间</FONT></TD>
					<TD style="WIDTH: 158px">
						<asp:TextBox id="txtendtime" runat="server"></asp:TextBox></TD>
					<TD style="WIDTH: 182px"><FONT face="黑体">下次付款时间</FONT></TD>
					<TD>
						<asp:TextBox id="txtnextpaytime" runat="server"></asp:TextBox></TD>
				</TR>
				<TR bgcolor="#ffffcc">
					<TD height="33" style="WIDTH: 170px; HEIGHT: 25px"><FONT face="黑体">用户类型</FONT></TD>
					<TD style="WIDTH: 158px; HEIGHT: 25px">
						<asp:DropDownList id="ddlusertype" runat="server">
							<asp:ListItem Value="0">个人用户</asp:ListItem>
							<asp:ListItem Value="1">个人会员</asp:ListItem>
							<asp:ListItem Value="2">公司用户</asp:ListItem>
							<asp:ListItem Value="3">公司会员</asp:ListItem>
						</asp:DropDownList></TD>
					<TD style="WIDTH: 182px; HEIGHT: 25px"><FONT face="黑体">担保人姓名</FONT></TD>
					<TD style="HEIGHT: 25px">
						<asp:TextBox id="txtinsurename" runat="server"></asp:TextBox></TD>
				</TR>
				<TR bgcolor="#ffcc33">
					<TD height="33" style="WIDTH: 170px"><FONT face="黑体">担保人地址</FONT></TD>
					<TD style="WIDTH: 158px">
						<asp:TextBox id="txtinsureaddress" runat="server"></asp:TextBox></TD>
					<TD style="WIDTH: 182px"><FONT face="黑体">担保人电话</FONT></TD>
					<TD>
						<asp:TextBox id="txtinsurephone" runat="server"></asp:TextBox></TD>
				</TR>
				<TR bgcolor="#ffffcc">
					<TD height="33" style="WIDTH: 170px"><FONT face="黑体">付款类型</FONT></TD>
					<TD style="WIDTH: 158px">
						<asp:DropDownList id="ddlpaytype" runat="server">
							<asp:ListItem Value="0">现金</asp:ListItem>
							<asp:ListItem Value="1">支票</asp:ListItem>
							<asp:ListItem Value="3">汇票</asp:ListItem>
						</asp:DropDownList></TD>
					<TD style="WIDTH: 182px"><FONT face="黑体">合同记录时间</FONT></TD>
					<TD>
						<asp:TextBox id="txtrcdtime" runat="server"></asp:TextBox></TD>
				</TR>
				<TR bgcolor="#ffcc33">
					<TD height="33" style="WIDTH: 170px"><FONT face="黑体">操作员号</FONT></TD>
					<TD style="WIDTH: 158px">
						<asp:TextBox id="txtoperid" runat="server"></asp:TextBox></TD>
					<TD style="WIDTH: 182px"><FONT face="黑体">是否结算</FONT></TD>
					<TD>
						<asp:DropDownList id="ddljiesuan" runat="server">
							<asp:ListItem Value="0">否</asp:ListItem>
							<asp:ListItem Value="1">是</asp:ListItem>
						</asp:DropDownList></TD>
				</TR>
				<TR bgcolor="#ffffcc">
					<TD height="33" style="WIDTH: 170px"><FONT face="黑体">纯收入</FONT></TD>
					<TD style="WIDTH: 158px">
						<asp:TextBox id="txtnetpay" runat="server"></asp:TextBox></TD>
					<TD style="WIDTH: 182px"><FONT face="黑体">每日租金</FONT></TD>
					<TD>
						<asp:TextBox id="txtunitpay" runat="server"></asp:TextBox></TD>
				</TR>
				<TR bgcolor="#ffcc33">
					<TD height="33" style="WIDTH: 170px"><FONT face="黑体">业务部号</FONT></TD>
					<TD style="WIDTH: 158px">
						<asp:TextBox id="txtsubpoint" runat="server"></asp:TextBox></TD>
					<TD style="WIDTH: 182px"><FONT face="黑体">欠款数目</FONT></TD>
					<TD>
						<asp:TextBox id="txtownpay" runat="server"></asp:TextBox></TD>
				</TR>
				<TR bgcolor="#ffffcc">
					<TD height="33" style="WIDTH: 170px"><FONT face="黑体">结算时间</FONT></TD>
					<TD style="WIDTH: 158px">
						<asp:TextBox id="txtjiesuantime" runat="server"></asp:TextBox></TD>
					<TD style="WIDTH: 182px"><FONT face="黑体">付款日期</FONT></TD>
					<TD>
						<asp:TextBox id="txtpaytime" runat="server"></asp:TextBox></TD>
				</TR>
				<TR bgcolor="#ffcc33">
					<TD height="33" style="WIDTH: 170px"><FONT face="黑体">预付押金</FONT></TD>
					<TD style="WIDTH: 158px">
						<asp:TextBox id="txtproyajin" runat="server"></asp:TextBox></TD>
					<TD style="WIDTH: 182px"><FONT face="黑体">预付租金</FONT></TD>
					<TD>
						<asp:TextBox id="txtprozujin" runat="server"></asp:TextBox></TD>
				</TR>
				<TR bgcolor="#ffffcc">
					<TD height="33" style="WIDTH: 170px"><FONT face="黑体">租金变动原因</FONT></TD>
					<TD style="WIDTH: 158px">
						<asp:TextBox id="txtmoneychangereason" runat="server"></asp:TextBox></TD>
					<TD style="WIDTH: 182px"><FONT face="黑体">支票号</FONT></TD>
					<TD>
						<asp:TextBox id="txtchecknum" runat="server"></asp:TextBox></TD>
				</TR>
				<TR>
					<TD height="40" colSpan="4" bgcolor="#ffcc33" style="WIDTH: 170px"><FONT face="黑体">备注</FONT>
						<asp:TextBox id="txtnote" runat="server" Width="320px" TextMode="MultiLine"></asp:TextBox></TD>
				</TR>
			</TABLE>
			<asp:button id="Button1" style="Z-INDEX: 102; LEFT: 336px; POSITION: absolute; TOP: 536px" runat="server"
				Width="84px" Text="确定" onclick="Button1_Click"></asp:button><asp:button id="Button2" style="Z-INDEX: 103; LEFT: 568px; POSITION: absolute; TOP: 536px" runat="server"
				Width="84px" Text="取消" onclick="Button2_Click"></asp:button>
			<asp:Button id="Button3" style="Z-INDEX: 104; LEFT: 456px; POSITION: absolute; TOP: 536px" runat="server"
				Width="80px" Text="重置" onclick="Button3_Click"></asp:Button></form>
	</body>
</HTML>
