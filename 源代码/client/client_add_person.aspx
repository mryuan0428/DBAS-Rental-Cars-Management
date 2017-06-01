<%@ Page language="c#" Inherits="client.client_add" CodeFile="client_add_person.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>client_add_person</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<style type="text/css">.style1 { FONT-SIZE: 9pt; COLOR: black }
		</style>
		<script language="JavaScript" type="text/JavaScript">
<!--
function MM_goToURL() { //v3.0
  var i, args=MM_goToURL.arguments; document.MM_returnValue = false;
  for (i=0; i<(args.length-1); i+=2) eval(args[i]+".location='"+args[i+1]+"'");
}
//-->
		</script>
	</HEAD>
	<body background="file:///C:\Inetpub\wwwroot\HLBD\logo2.gif">
		<form id="Form1" method="post" runat="server">
			<FONT face="黑体">
				<TABLE id="Table1" style="Z-INDEX: 101; LEFT: 16px; WIDTH: 736px; POSITION: absolute; TOP: 40px; HEIGHT: 657px"
					borderColor="#669966" cellSpacing="1" cellPadding="1" width="736" align="center" border="1">
					<TR>
						<TD style="HEIGHT: 25px" bgColor="#0080c0" colSpan="4">
							<DIV align="center"><STRONG><FONT face="黑体" color="#ffff00" size="2" style="FONT-FAMILY: Arial">用户基本信息</FONT></STRONG></DIV>
						</TD>
					</TR>
					<TR>
						<TD class="style1" style="WIDTH: 107px; FONT-FAMILY: Arial; HEIGHT: 26px" align="center">姓名</TD>
						<TD style="WIDTH: 210px; HEIGHT: 26px" align="center"><asp:textbox id="name" runat="server" Font-Names="Arial"></asp:textbox></TD>
						<TD style="WIDTH: 148px; HEIGHT: 26px" align="center"><asp:dropdownlist id="cardtype" runat="server" Width="107px" Font-Names="Arial">
								<asp:ListItem Value="1">身份证</asp:ListItem>
								<asp:ListItem Value="2">军官证</asp:ListItem>
								<asp:ListItem Value="3">护照</asp:ListItem>
								<asp:ListItem Value="4">外国人居留证</asp:ListItem>
							</asp:dropdownlist></TD>
						<TD style="HEIGHT: 26px" align="center"><asp:textbox id="idcard" runat="server" Font-Names="Arial"></asp:textbox></TD>
					</TR>
					<TR>
						<TD class="style1" style="WIDTH: 107px; FONT-FAMILY: Arial; HEIGHT: 10px" align="center">性别</TD>
						<TD class="style1" style="WIDTH: 210px; HEIGHT: 10px" align="center"><asp:radiobuttonlist id="sex" runat="server" Width="56px" Height="2px" Font-Size="X-Small" RepeatDirection="Horizontal"
								Font-Names="Arial">
								<asp:ListItem Value="1" Selected="True">男</asp:ListItem>
								<asp:ListItem Value="2">女</asp:ListItem>
							</asp:radiobuttonlist></TD>
						<TD class="style1" style="WIDTH: 148px; FONT-FAMILY: Arial; HEIGHT: 10px" align="center">出生日期</TD>
						<TD class="style1" style="FONT-SIZE: 10pt; FONT-FAMILY: Arial; HEIGHT: 10px" align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<asp:textbox id="birthday" runat="server" Width="120px" Font-Names="Arial"></asp:textbox>(1980-06-25)</TD>
					</TR>
					<TR>
						<TD class="style1" style="WIDTH: 107px; FONT-FAMILY: Arial; HEIGHT: 2px" align="center">学历</TD>
						<TD style="WIDTH: 210px; HEIGHT: 2px" align="center"><asp:dropdownlist id="education" runat="server" Width="83px" Font-Names="Arial">
								<asp:ListItem Value="1">博士</asp:ListItem>
								<asp:ListItem Value="2">硕士</asp:ListItem>
								<asp:ListItem Value="3">研究生</asp:ListItem>
								<asp:ListItem Value="4">本科</asp:ListItem>
								<asp:ListItem Value="5" Selected="True">大专</asp:ListItem>
								<asp:ListItem Value="6">高中</asp:ListItem>
								<asp:ListItem Value="7">高职/中专</asp:ListItem>
								<asp:ListItem Value="8">初中</asp:ListItem>
								<asp:ListItem Value="9">小学</asp:ListItem>
							</asp:dropdownlist></TD>
						<TD class="style1" style="WIDTH: 148px; FONT-FAMILY: Arial; HEIGHT: 2px" align="center">驾驶证号码</TD>
						<TD style="HEIGHT: 2px" align="center"><asp:textbox id="driveid" runat="server" Font-Names="Arial"></asp:textbox></TD>
					</TR>
					<TR>
						<TD class="style1" style="WIDTH: 107px; FONT-FAMILY: Arial; HEIGHT: 2px" align="center">银行名称</TD>
						<TD style="WIDTH: 210px; HEIGHT: 7px" align="center"><asp:textbox id="bank" runat="server" Font-Names="Arial"></asp:textbox></TD>
						<TD class="style1" style="WIDTH: 148px; FONT-FAMILY: Arial; HEIGHT: 2px" align="center">银行卡号</TD>
						<TD style="HEIGHT: 7px" align="center"><asp:textbox id="depositnum" runat="server" Font-Names="Arial"></asp:textbox></TD>
					</TR>
					<TR>
						<TD class="style1" style="WIDTH: 107px; FONT-FAMILY: Arial; HEIGHT: 2px" align="center">工作单位</TD>
						<TD style="WIDTH: 210px; HEIGHT: 7px" align="center"><asp:textbox id="danwei" runat="server" Font-Names="Arial"></asp:textbox></TD>
						<TD class="style1" style="WIDTH: 148px; HEIGHT: 2px" align="center"><FONT face="宋体"></FONT></TD>
						<TD style="HEIGHT: 7px" align="center"></TD>
					</TR>
					<TR>
						<TD style="HEIGHT: 26px" align="center" bgColor="#0080c0" colSpan="4"><FONT face="黑体" color="#ffff00" size="2"><STRONG style="FONT-FAMILY: Arial">联系方法</STRONG></FONT></TD>
					</TR>
					<TR>
						<TD class="style1" style="WIDTH: 107px; FONT-FAMILY: Arial" align="center">个人住址</TD>
						<TD style="WIDTH: 210px" align="center"><asp:textbox id="address" runat="server" Font-Names="Arial"></asp:textbox></TD>
						<TD class="style1" style="WIDTH: 148px; FONT-FAMILY: Arial" align="center">邮政编码</TD>
						<TD align="center"><asp:textbox id="postcode" runat="server" Font-Names="Arial"></asp:textbox></TD>
					</TR>
					<TR>
						<TD class="style1" style="WIDTH: 107px; FONT-FAMILY: Arial" align="center">电话</TD>
						<TD style="WIDTH: 210px" align="center"><asp:textbox id="phone" runat="server" Font-Names="Arial"></asp:textbox></TD>
						<TD class="style1" style="WIDTH: 148px; FONT-FAMILY: Arial" align="center">手机</TD>
						<TD align="center"><asp:textbox id="mobilephone" runat="server" Font-Names="Arial"></asp:textbox></TD>
					</TR>
					<TR>
						<TD class="style1" style="WIDTH: 107px; FONT-FAMILY: Arial" align="center">传真</TD>
						<TD style="WIDTH: 210px" align="center"><asp:textbox id="fax" runat="server" Font-Names="Arial"></asp:textbox></TD>
						<TD class="style1" style="WIDTH: 148px; FONT-FAMILY: Arial" align="center">电子邮箱</TD>
						<TD align="center"><asp:textbox id="email" runat="server" Font-Names="Arial"></asp:textbox></TD>
					</TR>
					<TR>
						<TD style="HEIGHT: 24px" bgColor="#0080c0" colSpan="4">
							<DIV align="center"><STRONG><FONT face="黑体" color="#ffff00" size="2" style="FONT-FAMILY: Arial">担保人信息</FONT></STRONG></DIV>
						</TD>
					</TR>
					<TR>
						<TD style="WIDTH: 107px" align="center"><FONT face="黑体" size="2"><FONT size="2"><FONT face="黑体"><FONT face="黑体"><FONT size="2"><SPAN class="style1" style="FONT-SIZE: 9pt; COLOR: black; FONT-FAMILY: Arial; mso-ascii-font-family: ??; mso-hansi-font-family: ??; mso-bidi-font-family: 黑体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">姓名</SPAN></FONT></FONT></FONT></FONT></FONT></TD>
						<TD style="WIDTH: 210px" align="center"><asp:textbox id="danbaoname" runat="server" Font-Names="Arial"></asp:textbox></TD>
						<TD style="WIDTH: 148px" align="center"><FONT face="黑体" size="2"><FONT size="2"><FONT face="黑体"><FONT face="黑体"><FONT size="2"><SPAN class="style1" style="FONT-SIZE: 9pt; COLOR: black; FONT-FAMILY: 黑体; mso-ascii-font-family: ??; mso-hansi-font-family: ??; mso-bidi-font-family: 黑体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">电话</SPAN></FONT></FONT></FONT></FONT></FONT></TD>
						<TD align="center"><asp:textbox id="danbaophone" runat="server" Font-Names="Arial"></asp:textbox></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 107px" align="center"><FONT face="黑体" size="2"><FONT size="2"><FONT face="黑体"><FONT face="黑体"><FONT size="2"><SPAN class="style1" style="FONT-SIZE: 9pt; COLOR: black; FONT-FAMILY: Arial; mso-ascii-font-family: ??; mso-hansi-font-family: ??; mso-bidi-font-family: 黑体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">身份证号</SPAN></FONT></FONT></FONT></FONT></FONT></TD>
						<TD style="WIDTH: 210px" align="center"><asp:textbox id="danbaocardid" runat="server" Font-Names="Arial"></asp:textbox></TD>
						<TD style="WIDTH: 148px" align="center"><FONT face="黑体" size="2"><FONT size="2"><FONT face="黑体"><FONT face="黑体"><FONT size="2"><SPAN class="style1" style="FONT-SIZE: 9pt; COLOR: black; FONT-FAMILY: Arial; mso-ascii-font-family: ??; mso-hansi-font-family: ??; mso-bidi-font-family: 黑体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">现住址</SPAN></FONT></FONT></FONT></FONT></FONT></TD>
						<TD align="center"><asp:textbox id="danbaoaddress" runat="server" Font-Names="Arial"></asp:textbox></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 107px" align="center"><FONT face="黑体" size="2"><FONT size="2"><FONT face="黑体"><FONT face="黑体"><FONT size="2"><SPAN class="style1" style="FONT-SIZE: 9pt; COLOR: black; FONT-FAMILY: Arial; mso-ascii-font-family: ??; mso-hansi-font-family: ??; mso-bidi-font-family: 黑体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">操作员号</SPAN></FONT></FONT></FONT></FONT></FONT></TD>
						<TD style="WIDTH: 210px" align="center"><asp:textbox id="operid" runat="server" Font-Names="Arial"></asp:textbox></TD>
						<TD class="style1" style="WIDTH: 148px; FONT-FAMILY: Arial" align="center">业务部号</TD>
						<TD align="center"><asp:textbox id="subpoint" runat="server" Font-Names="Arial"></asp:textbox></TD>
					</TR>
					<TR>
						<TD bgColor="#0080c0" colSpan="4">
							<DIV align="center"><STRONG><FONT face="黑体" color="#ffff00" size="2" style="FONT-FAMILY: Arial">会 
										员</FONT></STRONG></DIV>
						</TD>
					</TR>
					<TR>
						<TD style="WIDTH: 107px" align="center"><FONT face="黑体" size="2"><SPAN class="style1" style="FONT-SIZE: 9pt; COLOR: black; FONT-FAMILY: Arial; mso-ascii-font-family: ??; mso-hansi-font-family: ??; mso-bidi-font-family: 黑体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">是否会员</SPAN></FONT></TD>
						<TD class="style1" style="WIDTH: 210px" align="center"><asp:radiobuttonlist id="member" runat="server" Width="16px" Height="16px" Font-Size="X-Small" RepeatDirection="Horizontal"
								Font-Names="Arial">
								<asp:ListItem Value="1">是</asp:ListItem>
								<asp:ListItem Value="2" Selected="True">否</asp:ListItem>
							</asp:radiobuttonlist></TD>
						<TD style="WIDTH: 148px" align="center"><FONT face="黑体" size="2"><SPAN class="style1" style="FONT-SIZE: 9pt; COLOR: black; FONT-FAMILY: Arial; mso-ascii-font-family: ??; mso-hansi-font-family: ??; mso-bidi-font-family: 黑体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">会员卡号</SPAN></FONT></TD>
						<TD align="center"><asp:textbox id="memberid" runat="server" Font-Names="Arial"></asp:textbox></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 107px" align="center"><FONT face="黑体" size="2"><SPAN class="style1" style="FONT-SIZE: 9pt; COLOR: black; FONT-FAMILY: Arial; mso-ascii-font-family: ??; mso-hansi-font-family: ??; mso-bidi-font-family: 黑体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">会员类别</SPAN></FONT></TD>
						<TD style="WIDTH: 210px" align="center"><asp:dropdownlist id="membertype" runat="server" Font-Names="Arial">
								<asp:ListItem Value="1">普通租赁客户</asp:ListItem>
								<asp:ListItem Value="2">一般会员客户</asp:ListItem>
								<asp:ListItem Value="3">中级会员客户</asp:ListItem>
								<asp:ListItem Value="4">高级会员客户</asp:ListItem>
							</asp:dropdownlist></TD>
						<TD style="WIDTH: 148px"></TD>
						<TD><FONT face="宋体"></FONT></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 107px" align="center"><FONT face="黑体" size="2"><SPAN class="style1" style="FONT-SIZE: 9pt; COLOR: black; FONT-FAMILY: Arial; mso-ascii-font-family: ??; mso-hansi-font-family: ??; mso-bidi-font-family: 黑体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">会员开始日期</SPAN></FONT></TD>
						<TD class="style1" style="FONT-SIZE: 10pt; WIDTH: 210px; FONT-FAMILY: Arial">&nbsp;<asp:textbox id="memberstart" runat="server" Width="112px" Font-Names="Arial"></asp:textbox>(1980-06-25)</TD>
						<TD style="WIDTH: 148px" align="center"><FONT face="黑体" size="2"><SPAN class="style1" style="FONT-SIZE: 9pt; COLOR: black; FONT-FAMILY: Arial; mso-ascii-font-family: ??; mso-hansi-font-family: ??; mso-bidi-font-family: 黑体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">结束日期</SPAN></FONT></TD>
						<TD class="style1" style="FONT-SIZE: 10pt; FONT-FAMILY: Arial" align="left">&nbsp;<asp:textbox id="memberend" runat="server" Width="128px" Font-Names="Arial"></asp:textbox>(1980-06-25)</TD>
					</TR>
					<TR>
						<TD style="WIDTH: 107px" align="center"><FONT class="style1" face="黑体" size="2"><SPAN style="FONT-SIZE: 9pt; COLOR: black; FONT-FAMILY: Arial; mso-ascii-font-family: ??; mso-hansi-font-family: ??; mso-bidi-font-family: 黑体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">个人喜好</SPAN></FONT></TD>
						<TD align="center" colSpan="3"><asp:textbox id="favorite" runat="server" Width="457px" Wrap="False" TextMode="MultiLine" Font-Names="Arial"></asp:textbox></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 107px" align="center">
							<DIV align="center"><FONT face="黑体" size="2"><SPAN class="style1" style="FONT-SIZE: 9pt; COLOR: black; FONT-FAMILY: Arial; mso-ascii-font-family: ??; mso-hansi-font-family: ??; mso-bidi-font-family: 黑体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">备注</SPAN><SPAN lang="EN-US" style="FONT-SIZE: 9pt; COLOR: black; FONT-FAMILY: ??; mso-bidi-font-family: 黑体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-fareast-font-family: 黑体"></SPAN></FONT></DIV>
						</TD>
						<TD align="center" colSpan="3"><asp:textbox id="note" runat="server" Width="455px" Wrap="False" TextMode="MultiLine" Font-Names="Arial"></asp:textbox></TD>
					</TR>
					<TR>
						<td style="FONT-SIZE: 11pt; FONT-FAMILY: Arial" align="left" colSpan="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
							&nbsp;&nbsp;
							<asp:button id="sure" runat="server" Width="70px" Text="接受输入" Font-Names="Arial" onclick="sure_Click"></asp:button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
							&nbsp;
							<asp:button id="cancel" runat="server" Width="70px" Text="重新输入" Font-Names="Arial" onclick="cancel_Click"></asp:button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;登记时间
							<asp:textbox id="rcd" runat="server" Width="104px" Enabled="False" Font-Names="Arial"></asp:textbox></td>
					</TR>
				</TABLE>
				<asp:label id="Label1" style="Z-INDEX: 102; LEFT: 280px; POSITION: absolute; TOP: 8px" runat="server"
					Font-Size="Large" Font-Bold="True" Font-Names="Arial">录入个人客户信息</asp:label><asp:textbox id="userid" style="Z-INDEX: 103; LEFT: 624px; POSITION: absolute; TOP: 16px" runat="server"
					Width="128px" Font-Names="Arial"></asp:textbox><asp:label id="Label2" style="Z-INDEX: 104; LEFT: 536px; POSITION: absolute; TOP: 16px" runat="server"
					Width="85px" Height="8px" Font-Size="Small" Font-Names="Arial">客户编号 *</asp:label>
				<TABLE id="Table2" style="Z-INDEX: 105; LEFT: 176px; POSITION: absolute; TOP: 768px" cellSpacing="1"
					cellPadding="1" width="300" border="0">
					<TR>
						<TD></TD>
					</TR>
				</TABLE>
				<asp:Button id="Button1" style="Z-INDEX: 106; LEFT: 680px; POSITION: absolute; TOP: 736px" runat="server"
					Width="72px" Font-Size="Small" Text="返回" Font-Names="Arial" onclick="Button1_Click"></asp:Button>
				<asp:Label id="ErrorMsg" style="Z-INDEX: 107; LEFT: 32px; POSITION: absolute; TOP: 16px" runat="server"
					Font-Size="Medium" Font-Bold="True" Font-Names="Arial"></asp:Label>
			</FONT>
		</form>
	</body>
</HTML>
