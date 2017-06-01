<%@ Page language="c#" Inherits="cartrade.edit" CodeFile="edit.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>edit</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<style type="text/css">
TD { FONT-WEIGHT: bold; FONT-SIZE: 14px; COLOR: #000000; TEXT-DECORATION: none }
		</style>
	</HEAD>
	<body background="..\logo2.gif">
		<form id="Form1" method="post" runat="server">
			<TABLE id="Table1" style="Z-INDEX: 101; LEFT: 152px; WIDTH: 656px; POSITION: absolute; TOP: 64px; HEIGHT: 603px"
				cellSpacing="1" cellPadding="1" width="656" border="0">
				<TR bgcolor="#ffcc33">
					<TD height="20" align="center" style="WIDTH: 127px"><FONT face="黑体">合同号</FONT></TD>
					<TD style="WIDTH: 174px">
						<asp:TextBox id="txttradeid" runat="server" Enabled="False"></asp:TextBox></TD>
					<TD align="center" style="WIDTH: 134px"><FONT face="黑体">用户号</FONT></TD>
					<TD>
						<asp:TextBox id="txtuserid" runat="server" Enabled="False"></asp:TextBox></TD>
				</TR>
				<TR bgcolor="#ffffcc">
					<TD height="20" align="center" style="WIDTH: 127px"><FONT face="黑体">车辆号</FONT></TD>
					<TD style="WIDTH: 174px">
						<asp:TextBox id="txtcarid" runat="server" Enabled="False"></asp:TextBox></TD>
					<TD align="center" style="WIDTH: 134px"><FONT face="黑体">起租时间</FONT></TD>
					<TD>
						<asp:TextBox id="txtbegintime" runat="server" Enabled="False"></asp:TextBox></TD>
				</TR>
				<TR bgcolor="#ffcc33">
					<TD height="20" align="center" style="WIDTH: 127px"><FONT face="黑体">应还时间</FONT></TD>
					<TD style="WIDTH: 174px">
						<asp:TextBox id="txtendtime" runat="server" Enabled="False"></asp:TextBox></TD>
					<TD align="center" style="WIDTH: 134px"><FONT face="黑体">下次付款时间</FONT></TD>
					<TD>
						<asp:TextBox id="txtnextpaytime" runat="server" Enabled="False"></asp:TextBox></TD>
				</TR>
				<TR bgcolor="#ffffcc">
					<TD height="20" align="center" style="WIDTH: 127px"><FONT face="黑体">用户类型</FONT></TD>
					<TD style="WIDTH: 174px">
						<asp:DropDownList id="DropDownList1" runat="server" Enabled="False">
							<asp:ListItem Value="0">个人用户</asp:ListItem>
							<asp:ListItem Value="1">个人会员</asp:ListItem>
							<asp:ListItem Value="2">公司用户</asp:ListItem>
							<asp:ListItem Value="3">公司会员</asp:ListItem>
						</asp:DropDownList></TD>
					<TD align="center" style="WIDTH: 134px"><FONT face="黑体">担保人姓名</FONT></TD>
					<TD>
						<asp:TextBox id="txtinsurename" runat="server" Enabled="False"></asp:TextBox></TD>
				</TR>
				<TR bgcolor="#ffcc33">
					<TD height="20" align="center" style="WIDTH: 127px"><FONT face="黑体">担保人地址</FONT></TD>
					<TD style="WIDTH: 174px">
						<asp:TextBox id="txtinsureaddress" runat="server" Enabled="False"></asp:TextBox></TD>
					<TD align="center" style="WIDTH: 134px"><FONT face="黑体">担保人电话</FONT></TD>
					<TD>
						<asp:TextBox id="txtinsurephone" runat="server" Enabled="False"></asp:TextBox></TD>
				</TR>
				<TR bgcolor="#ffffcc">
					<TD height="20" align="center" style="WIDTH: 127px"><FONT face="黑体">付款类型</FONT></TD>
					<TD style="WIDTH: 174px">
						<asp:DropDownList id="DropDownList2" runat="server" Enabled="False" Width="80px">
							<asp:ListItem Value="0">现金</asp:ListItem>
							<asp:ListItem Value="1">支票</asp:ListItem>
							<asp:ListItem Value="2">汇票</asp:ListItem>
						</asp:DropDownList></TD>
					<TD align="center" style="WIDTH: 134px"><FONT face="黑体">合同记录时间</FONT></TD>
					<TD>
						<asp:TextBox id="txtrcdtime" runat="server" Enabled="False"></asp:TextBox></TD>
				</TR>
				<TR bgcolor="#ffcc33">
					<TD height="20" align="center" style="WIDTH: 127px"><FONT face="黑体">操作员号</FONT></TD>
					<TD style="WIDTH: 174px">
						<asp:TextBox id="txtoperid" runat="server" Enabled="False"></asp:TextBox></TD>
					<TD align="center" style="WIDTH: 134px"><FONT face="黑体">是否结算</FONT></TD>
					<TD>
						<asp:DropDownList id="DropDownList3" runat="server" Enabled="False" Width="80px">
							<asp:ListItem Value="0">是</asp:ListItem>
							<asp:ListItem Value="1">否</asp:ListItem>
						</asp:DropDownList></TD>
				</TR>
				<TR bgcolor="#ffffcc">
					<TD height="20" align="center" style="WIDTH: 127px"><FONT face="黑体">纯收入</FONT></TD>
					<TD style="WIDTH: 174px">
						<asp:TextBox id="txtnetpay" runat="server" Enabled="False"></asp:TextBox></TD>
					<TD align="center" style="WIDTH: 134px"><FONT face="黑体">每日租金</FONT></TD>
					<TD>
						<asp:TextBox id="txtunitpay" runat="server" Enabled="False"></asp:TextBox></TD>
				</TR>
				<TR bgcolor="#ffcc33">
					<TD height="20" align="center" style="WIDTH: 127px"><FONT face="黑体">业务部号</FONT></TD>
					<TD style="WIDTH: 174px">
						<asp:TextBox id="txtsubpoint" runat="server" Enabled="False"></asp:TextBox></TD>
					<TD align="center" style="WIDTH: 134px"><FONT face="黑体">欠款数</FONT></TD>
					<TD>
						<asp:TextBox id="txtownpay" runat="server" Enabled="False"></asp:TextBox></TD>
				</TR>
				<TR bgcolor="#ffffcc">
					<TD height="20" align="center" style="WIDTH: 127px"><FONT face="黑体">合同结算时间</FONT></TD>
					<TD style="WIDTH: 174px">
						<asp:TextBox id="txtjiesuantime" runat="server" Enabled="False"></asp:TextBox></TD>
					<TD align="center" style="WIDTH: 134px"><FONT face="黑体">付款日期</FONT></TD>
					<TD>
						<asp:TextBox id="txtpaytime" runat="server" Enabled="False"></asp:TextBox></TD>
				</TR>
				<TR bgcolor="#ffcc33">
					<TD height="20" align="center" style="WIDTH: 127px"><FONT face="黑体">预付押金</FONT></TD>
					<TD style="WIDTH: 174px">
						<asp:TextBox id="txtproyajin" runat="server" Enabled="False"></asp:TextBox></TD>
					<TD align="center" style="WIDTH: 134px"><FONT face="黑体">预付租金</FONT></TD>
					<TD>
						<asp:TextBox id="txtprozujin" runat="server" Enabled="False"></asp:TextBox></TD>
				</TR>
				<TR bgcolor="#ffffcc">
					<TD height="20" align="center" style="WIDTH: 127px"><FONT face="黑体">租金变动原因</FONT></TD>
					<TD style="WIDTH: 174px">
						<asp:TextBox id="txtmoneychangereason" runat="server" Enabled="False"></asp:TextBox></TD>
					<TD align="center" style="WIDTH: 134px"><FONT face="黑体">支票号</FONT></TD>
					<TD>
						<asp:TextBox id="txtchecknum" runat="server" Enabled="False"></asp:TextBox></TD>
				</TR>
				<TR bgcolor="#ffcc33">
					<TD height="20" align="center" style="WIDTH: 127px"><FONT face="黑体">备注</FONT></TD>
					<TD style="WIDTH: 174px">
						<asp:TextBox id="txtnote" runat="server" TextMode="MultiLine" Enabled="False"></asp:TextBox></TD>
					<TD style="WIDTH: 134px"></TD>
					<TD><FONT face="黑体"></FONT></TD>
				</TR>
			</TABLE>
			<asp:Button id="Button1" style="Z-INDEX: 102; LEFT: 320px; POSITION: absolute; TOP: 728px" runat="server"
				Text="是否修改" Width="80px" onclick="Button1_Click"></asp:Button>
			<asp:Button id="Button3" style="Z-INDEX: 104; LEFT: 560px; POSITION: absolute; TOP: 728px" runat="server"
				Text="返回" Width="80px" Height="26px"></asp:Button>
			<asp:Label id="Label1" style="Z-INDEX: 105; LEFT: 424px; POSITION: absolute; TOP: 24px" runat="server"
				Width="104px" ForeColor="Black" Font-Bold="True" Font-Size="Large">更改合同</asp:Label>
			<asp:Label id="Label2" style="Z-INDEX: 106; LEFT: 256px; POSITION: absolute; TOP: 688px" runat="server"
				Visible="False">请输入口令：</asp:Label>
			<asp:TextBox id="TextBox1" style="Z-INDEX: 107; LEFT: 392px; POSITION: absolute; TOP: 688px"
				runat="server" Visible="False" TextMode="Password"></asp:TextBox>
			<asp:Button id="Button4" style="Z-INDEX: 108; LEFT: 600px; POSITION: absolute; TOP: 688px" runat="server"
				Width="88px" Text="确定" Visible="False"></asp:Button>
		</form>
	</body>
</HTML>
