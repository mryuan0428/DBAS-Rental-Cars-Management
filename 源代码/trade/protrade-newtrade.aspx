<%@ Page language="c#" Inherits="cartrade.protrade_newtrade" CodeFile="protrade-newtrade.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>protrade-newtrade</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body background="file:///C:\Inetpub\wwwroot\HLBD\logo2.gif">
		<form id="Form1" method="post" runat="server">
			<asp:label id="Label1" style="Z-INDEX: 101; LEFT: 344px; POSITION: absolute; TOP: 16px" runat="server"
				ForeColor="Black" Font-Size="Large" Font-Bold="True">填写相关信息录入租赁合同</asp:label>
			<TABLE id="Table1" style="Z-INDEX: 102; LEFT: 184px; WIDTH: 608px; POSITION: absolute; TOP: 112px; HEIGHT: 243px"
				cellSpacing="1" cellPadding="1" width="608" border="0">
				<TR bgcolor="#ffcc33">
					<TD height="33" bgcolor="#ffcc33" style="WIDTH: 112px"><FONT face="黑体">合同号</FONT></TD>
					<TD style="WIDTH: 181px"><asp:label id="lblidpretrade" runat="server"></asp:label></TD>
					<TD style="WIDTH: 104px"><FONT face="黑体">客户号</FONT></TD>
					<TD><asp:label id="lbluserid" runat="server"></asp:label></TD>
				</TR>
				<TR bgcolor="#ffffcc">
					<TD height="31" bgcolor="#ffffcc" style="WIDTH: 112px; HEIGHT: 31px"><FONT face="黑体">车辆号</FONT></TD>
					<TD style="WIDTH: 181px; HEIGHT: 31px"><asp:label id="lblcarid" runat="server"></asp:label></TD>
					<TD style="WIDTH: 104px; HEIGHT: 31px"><FONT face="黑体">承租方姓名</FONT></TD>
					<TD style="HEIGHT: 31px"><asp:label id="lblusernamepretrade" runat="server"></asp:label></TD>
				</TR>
				<TR bgcolor="#ffcc33">
					<TD height="33" bgcolor="#ffcc33" style="WIDTH: 112px"><FONT face="黑体">车辆名称</FONT></TD>
					<TD style="WIDTH: 181px"><asp:label id="lblcarnamepretrade" runat="server"></asp:label></TD>
					<TD style="WIDTH: 104px"><FONT face="黑体">客户类型</FONT></TD>
					<TD><asp:dropdownlist id="ddlpersontypepretrade" runat="server">
							<asp:ListItem Value="0">个人用户</asp:ListItem>
							<asp:ListItem Value="1">个人会员</asp:ListItem>
							<asp:ListItem Value="2">公司用户</asp:ListItem>
							<asp:ListItem Value="3">公司会员</asp:ListItem>
						</asp:dropdownlist></TD>
				</TR>
				<TR bgcolor="#ffffcc">
					<TD height="33" bgcolor="#ffffcc" style="WIDTH: 112px; HEIGHT: 24px"><FONT face="黑体">担保方姓名</FONT></TD>
					<TD style="WIDTH: 181px; HEIGHT: 24px"><asp:textbox id="txtinsurename" runat="server"></asp:textbox></TD>
					<TD style="WIDTH: 104px; HEIGHT: 24px"><FONT face="黑体">担保方住址</FONT></TD>
					<TD style="HEIGHT: 24px"><asp:textbox id="txtinsureaddress" runat="server"></asp:textbox></TD>
				</TR>
				<TR bgcolor="#ffcc33">
					<TD height="33" bgcolor="#ffcc33" style="WIDTH: 112px"><FONT face="黑体">担保方电话</FONT></TD>
					<TD style="WIDTH: 181px"><asp:textbox id="txtinsurephone" runat="server"></asp:textbox></TD>
					<TD style="WIDTH: 104px"><FONT face="黑体">驾驶员姓名</FONT></TD>
					<TD><asp:label id="lbldriverpretrade" runat="server"></asp:label></TD>
				</TR>
				<TR bgcolor="#ffffcc">
					<TD height="33" bgcolor="#ffffcc" style="WIDTH: 112px"><FONT face="黑体">起租时间</FONT></TD>
					<TD style="WIDTH: 181px"><asp:label id="lblbegintimepretrade" runat="server"></asp:label></TD>
					<TD style="WIDTH: 104px"><FONT face="黑体">应还时间</FONT></TD>
					<TD><asp:label id="lblendtimepretrade" runat="server"></asp:label></TD>
				</TR>
				<TR bgcolor="#ffcc33">
					<TD height="33" bgcolor="#ffcc33" style="WIDTH: 112px"><FONT face="黑体">下次付款日期</FONT></TD>
					<TD style="WIDTH: 181px"><asp:textbox id="txtnextpaytime" runat="server"></asp:textbox></TD>
					<TD style="WIDTH: 104px"><FONT face="黑体">付款类型</FONT></TD>
					<TD><asp:dropdownlist id="ddlpaytype" runat="server">
							<asp:ListItem Value="0">现金</asp:ListItem>
							<asp:ListItem Value="1">支票</asp:ListItem>
							<asp:ListItem Value="2">汇票</asp:ListItem>
						</asp:dropdownlist></TD>
				</TR>
				<TR bgcolor="#ffffcc">
					<TD height="33" bgcolor="#ffffcc" style="WIDTH: 112px; HEIGHT: 23px"><FONT face="黑体">合同记录时间</FONT></TD>
					<TD style="WIDTH: 181px; HEIGHT: 23px"><asp:label id="lblrcdtime" runat="server"></asp:label></TD>
					<TD style="WIDTH: 104px; HEIGHT: 23px"><FONT face="黑体">操作员号</FONT></TD>
					<TD style="HEIGHT: 23px"><asp:label id="lbloperid" runat="server"></asp:label></TD>
				</TR>
				<TR bgcolor="#ffcc33">
					<TD height="33" bgcolor="#ffcc33" style="WIDTH: 112px"><FONT face="黑体">是否结算</FONT></TD>
					<TD style="WIDTH: 181px"><asp:dropdownlist id="ddljiesuan" runat="server">
							<asp:ListItem Value="0">否</asp:ListItem>
							<asp:ListItem Value="1">是</asp:ListItem>
						</asp:dropdownlist></TD>
					<TD style="WIDTH: 104px"><FONT face="黑体">纯收入</FONT></TD>
					<TD><asp:textbox id="txtnetpay" runat="server" Enabled="False"></asp:textbox></TD>
				</TR>
				<TR bgcolor="#ffffcc">
					<TD height="33" bgcolor="#ffffcc" style="WIDTH: 112px"><FONT face="黑体">每日租金</FONT></TD>
					<TD style="WIDTH: 181px"><asp:textbox id="txtunitpay" runat="server"></asp:textbox></TD>
					<TD style="WIDTH: 104px"><FONT face="黑体">业务部号</FONT></TD>
					<TD><asp:textbox id="txtsubpoint" runat="server"></asp:textbox></TD>
				</TR>
				<TR bgcolor="#ffcc33">
					<TD height="33" bgcolor="#ffcc33" style="WIDTH: 112px"><FONT face="黑体">欠款数目</FONT></TD>
					<TD style="WIDTH: 181px"><asp:textbox id="txtownpay" runat="server" Enabled="False"></asp:textbox></TD>
					<TD style="WIDTH: 104px"><FONT face="黑体">结算时间</FONT></TD>
					<TD><asp:textbox id="txtjiesuantime" runat="server"></asp:textbox></TD>
				</TR>
				<TR bgcolor="#ffffcc">
					<TD height="33" bgcolor="#ffffcc" style="WIDTH: 112px; HEIGHT: 28px"><FONT face="黑体">付款日期</FONT></TD>
					<TD style="WIDTH: 181px; HEIGHT: 28px"><asp:textbox id="txtpaytime" runat="server"></asp:textbox></TD>
					<TD style="WIDTH: 104px; HEIGHT: 28px"><FONT face="黑体">预付押金</FONT></TD>
					<TD style="HEIGHT: 28px"><asp:label id="lbldepositpretrade" runat="server"></asp:label></TD>
				</TR>
				<TR bgcolor="#ffcc33">
					<TD height="33" bgcolor="#ffcc33" style="WIDTH: 112px; HEIGHT: 29px"><FONT face="黑体">预付租金</FONT></TD>
					<TD style="WIDTH: 181px; HEIGHT: 29px"><asp:textbox id="txtprozujin" runat="server"></asp:textbox></TD>
					<TD style="WIDTH: 104px; HEIGHT: 29px"><FONT face="黑体">支票号</FONT></TD>
					<TD style="HEIGHT: 29px"><asp:textbox id="txtchecknum" runat="server"></asp:textbox></TD>
				</TR>
				<TR bgcolor="#ffffcc">
					<TD height="33" bgcolor="#ffffcc" style="WIDTH: 112px"><FONT face="黑体">租金变动原因</FONT></TD>
					<TD style="WIDTH: 181px"><FONT face="黑体">
							<asp:textbox id="txtmoneychangereason" runat="server"></asp:textbox></FONT></TD>
					<TD style="WIDTH: 104px"><FONT face="黑体">备注</FONT></TD>
					<TD><asp:textbox id="txtnote" runat="server" TextMode="MultiLine"></asp:textbox></TD>
				</TR>
			</TABLE>
			<asp:button id="Button1" style="Z-INDEX: 103; LEFT: 304px; POSITION: absolute; TOP: 600px" runat="server"
				Text="确  定" Width="81px" OnClick="Button1_Click1"></asp:button><asp:button id="Button2" style="Z-INDEX: 104; LEFT: 440px; POSITION: absolute; TOP: 600px" runat="server"
				Text="重  置" Width="80px"></asp:button><asp:button id="Button3" style="Z-INDEX: 105; LEFT: 576px; POSITION: absolute; TOP: 600px" runat="server"
				Text="取  消" Width="80px"></asp:button><asp:textbox id="TextBox1" style="Z-INDEX: 106; LEFT: 424px; POSITION: absolute; TOP: 72px" runat="server"></asp:textbox><asp:label id="Label2" style="Z-INDEX: 107; LEFT: 288px; POSITION: absolute; TOP: 72px" runat="server">输入预定合同号：</asp:label><asp:button id="Button4" style="Z-INDEX: 108; LEFT: 600px; POSITION: absolute; TOP: 72px" runat="server"
				Text="查  询" Width="72px" onclick="Button4_Click"></asp:button></form>
	</body>
</HTML>
