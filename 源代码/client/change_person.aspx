<%@ Page language="c#" Inherits="client.client.change_person" CodeFile="change_person.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>change_person</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body background="file:///C:\Inetpub\wwwroot\HLBD\pretrade\images\logo2.gif">
		<form id="Form1" method="post" runat="server">
			<FONT face="黑体">
				<TABLE id="Table1" style="Z-INDEX: 106; LEFT: 16px; WIDTH: 736px; POSITION: absolute; TOP: 40px; HEIGHT: 657px"
					borderColor="#669966" cellSpacing="1" cellPadding="1" width="736" align="center" border="1">
					<TR>
						<TD style="HEIGHT: 25px" bgColor="#0080c0" colSpan="4">
							<DIV align="center"><STRONG><FONT face="黑体" color="#ffff00" size="2" style="FONT-FAMILY: Arial">用户基本信息</FONT></STRONG></DIV>
						</TD>
					</TR>
					<TR>
						<TD class="style1" style="FONT-SIZE: 9pt; WIDTH: 107px; FONT-FAMILY: Arial; HEIGHT: 26px"
							align="center">姓名</TD>
						<TD style="WIDTH: 210px; HEIGHT: 26px" align="center">
							<asp:textbox id="name" runat="server" Enabled="False" Font-Names="Arial"></asp:textbox></TD>
						<TD style="WIDTH: 148px; HEIGHT: 26px" align="center">
							<asp:dropdownlist id="cardtype" runat="server" Enabled="False" Width="107px" Font-Names="Arial">
								<asp:ListItem Value="1">身份证</asp:ListItem>
								<asp:ListItem Value="2">军官证</asp:ListItem>
								<asp:ListItem Value="3">护照</asp:ListItem>
								<asp:ListItem Value="4">外国人居留证</asp:ListItem>
							</asp:dropdownlist></TD>
						<TD style="HEIGHT: 26px" align="center">
							<asp:textbox id="idcard" runat="server" Enabled="False" Font-Names="Arial"></asp:textbox></TD>
					</TR>
					<TR>
						<TD class="style1" style="FONT-SIZE: 9pt; WIDTH: 107px; FONT-FAMILY: Arial; HEIGHT: 2px"
							align="center">性别</TD>
						<TD class="style1" style="WIDTH: 210px; HEIGHT: 2px" align="center">
							<asp:radiobuttonlist id="sex" runat="server" Enabled="False" Width="56px" Height="2px" RepeatDirection="Horizontal"
								Font-Size="X-Small" Font-Names="Arial">
								<asp:ListItem Value="1" Selected="True">男</asp:ListItem>
								<asp:ListItem Value="2">女</asp:ListItem>
							</asp:radiobuttonlist></TD>
						<TD class="style1" style="FONT-SIZE: 9pt; WIDTH: 148px; FONT-FAMILY: Arial; HEIGHT: 2px"
							align="center">出生日期</TD>
						<TD class="style1" style="FONT-SIZE: 10pt; HEIGHT: 2px" align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<asp:textbox id="birthday" runat="server" Enabled="False" Width="120px" Font-Names="Arial"></asp:textbox>(1980-06-25)</TD>
					</TR>
					<TR>
						<TD class="style1" style="FONT-SIZE: 9pt; WIDTH: 107px; FONT-FAMILY: Arial; HEIGHT: 2px"
							align="center">学历</TD>
						<TD style="WIDTH: 210px; HEIGHT: 2px" align="center">
							<asp:dropdownlist id="education" runat="server" Enabled="False" Width="83px" Font-Names="Arial">
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
						<TD class="style1" style="FONT-SIZE: 9pt; WIDTH: 148px; FONT-FAMILY: Arial; HEIGHT: 2px"
							align="center">驾驶证号码</TD>
						<TD style="HEIGHT: 2px" align="center">
							<asp:textbox id="driveid" runat="server" Enabled="False" Font-Names="Arial"></asp:textbox></TD>
					</TR>
					<TR>
						<TD class="style1" style="FONT-SIZE: 9pt; WIDTH: 107px; FONT-FAMILY: Arial; HEIGHT: 2px"
							align="center">银行名称</TD>
						<TD style="WIDTH: 210px; HEIGHT: 7px" align="center">
							<asp:textbox id="bank" runat="server" Enabled="False" Font-Names="Arial"></asp:textbox></TD>
						<TD class="style1" style="FONT-SIZE: 9pt; WIDTH: 148px; FONT-FAMILY: Arial; HEIGHT: 2px"
							align="center">银行卡号</TD>
						<TD style="HEIGHT: 7px" align="center">
							<asp:textbox id="depositnum" runat="server" Enabled="False" Font-Names="Arial"></asp:textbox></TD>
					</TR>
					<TR>
						<TD class="style1" style="FONT-SIZE: 9pt; WIDTH: 107px; FONT-FAMILY: Arial; HEIGHT: 2px"
							align="center">工作单位</TD>
						<TD style="WIDTH: 210px; HEIGHT: 7px" align="center">
							<asp:textbox id="danwei" runat="server" Enabled="False" Font-Names="Arial"></asp:textbox></TD>
						<TD class="style1" style="FONT-SIZE: 10pt; WIDTH: 148px; HEIGHT: 2px" align="center"></TD>
						<TD style="HEIGHT: 7px" align="center"></TD>
					</TR>
					<TR>
						<TD style="HEIGHT: 26px" align="center" bgColor="#0080c0" colSpan="4"><FONT face="黑体" color="#ffff00" size="2"><STRONG style="FONT-FAMILY: Arial">联系方法</STRONG></FONT></TD>
					</TR>
					<TR>
						<TD class="style1" style="FONT-SIZE: 9pt; WIDTH: 107px; FONT-FAMILY: Arial" align="center">个人住址</TD>
						<TD style="WIDTH: 210px" align="center">
							<asp:textbox id="address" runat="server" Enabled="False" Font-Names="Arial"></asp:textbox></TD>
						<TD class="style1" style="FONT-SIZE: 9pt; WIDTH: 148px; FONT-FAMILY: Arial" align="center">邮政编码</TD>
						<TD align="center">
							<asp:textbox id="postcode" runat="server" Enabled="False" Font-Names="Arial"></asp:textbox></TD>
					</TR>
					<TR>
						<TD class="style1" style="FONT-SIZE: 9pt; WIDTH: 107px; FONT-FAMILY: Arial" align="center">电话</TD>
						<TD style="WIDTH: 210px" align="center">
							<asp:textbox id="phone" runat="server" Enabled="False" Font-Names="Arial"></asp:textbox></TD>
						<TD class="style1" style="FONT-SIZE: 9pt; WIDTH: 148px; FONT-FAMILY: Arial" align="center">手机</TD>
						<TD align="center">
							<asp:textbox id="mobilephone" runat="server" Enabled="False" Font-Names="Arial"></asp:textbox></TD>
					</TR>
					<TR>
						<TD class="style1" style="FONT-SIZE: 9pt; WIDTH: 107px; FONT-FAMILY: Arial" align="center">传真</TD>
						<TD style="WIDTH: 210px" align="center">
							<asp:textbox id="fax" runat="server" Enabled="False" Font-Names="Arial"></asp:textbox></TD>
						<TD class="style1" style="FONT-SIZE: 9pt; WIDTH: 148px; FONT-FAMILY: Arial" align="center">电子邮箱</TD>
						<TD align="center">
							<asp:textbox id="email" runat="server" Enabled="False" Font-Names="Arial"></asp:textbox></TD>
					</TR>
					<TR>
						<TD style="HEIGHT: 24px" bgColor="#0080c0" colSpan="4">
							<DIV align="center"><STRONG><FONT face="黑体" color="#ffff00" size="2" style="FONT-FAMILY: Arial">担保人信息</FONT></STRONG></DIV>
						</TD>
					</TR>
					<TR>
						<TD style="WIDTH: 107px" align="center"><FONT face="黑体" size="2"><FONT size="2"><FONT face="黑体"><FONT face="黑体"><FONT size="2"><SPAN class="style1" style="FONT-SIZE: 9pt; COLOR: black; FONT-FAMILY: Arial; mso-ascii-font-family: ??; mso-hansi-font-family: ??; mso-bidi-font-family: 黑体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">姓名</SPAN></FONT></FONT></FONT></FONT></FONT></TD>
						<TD style="WIDTH: 210px" align="center">
							<asp:textbox id="danbaoname" runat="server" Enabled="False" Font-Names="Arial"></asp:textbox></TD>
						<TD style="WIDTH: 148px" align="center"><FONT face="黑体" size="2"><FONT size="2"><FONT face="黑体"><FONT face="黑体"><FONT size="2"><SPAN class="style1" style="FONT-SIZE: 9pt; COLOR: black; FONT-FAMILY: Arial; mso-ascii-font-family: ??; mso-hansi-font-family: ??; mso-bidi-font-family: 黑体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">电话</SPAN></FONT></FONT></FONT></FONT></FONT></TD>
						<TD align="center">
							<asp:textbox id="danbaophone" runat="server" Enabled="False" Font-Names="Arial"></asp:textbox></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 107px" align="center"><FONT face="黑体" size="2"><FONT size="2"><FONT face="黑体"><FONT face="黑体"><FONT size="2"><SPAN class="style1" style="FONT-SIZE: 9pt; COLOR: black; FONT-FAMILY: Arial; mso-ascii-font-family: ??; mso-hansi-font-family: ??; mso-bidi-font-family: 黑体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">身份证号</SPAN></FONT></FONT></FONT></FONT></FONT></TD>
						<TD style="WIDTH: 210px" align="center">
							<asp:textbox id="danbaocardid" runat="server" Enabled="False" Font-Names="Arial"></asp:textbox></TD>
						<TD style="WIDTH: 148px" align="center"><FONT face="黑体" size="2"><FONT size="2"><FONT face="黑体"><FONT face="黑体"><FONT size="2"><SPAN class="style1" style="FONT-SIZE: 9pt; COLOR: black; FONT-FAMILY: Arial; mso-ascii-font-family: ??; mso-hansi-font-family: ??; mso-bidi-font-family: 黑体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">现住址</SPAN></FONT></FONT></FONT></FONT></FONT></TD>
						<TD align="center">
							<asp:textbox id="danbaoaddress" runat="server" Enabled="False" Font-Names="Arial"></asp:textbox></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 107px" align="center"><FONT face="黑体" size="2"><FONT size="2"><FONT face="黑体"><FONT face="黑体"><FONT size="2"><SPAN class="style1" style="FONT-SIZE: 9pt; COLOR: black; FONT-FAMILY: Arial; mso-ascii-font-family: ??; mso-hansi-font-family: ??; mso-bidi-font-family: 黑体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">操作员号</SPAN></FONT></FONT></FONT></FONT></FONT></TD>
						<TD style="WIDTH: 210px" align="center">
							<asp:textbox id="operid" runat="server" Enabled="False" Font-Names="Arial"></asp:textbox></TD>
						<TD class="style1" style="FONT-SIZE: 9pt; WIDTH: 148px; FONT-FAMILY: Arial" align="center">业务部号</TD>
						<TD align="center">
							<asp:textbox id="subpoint" runat="server" Enabled="False" Font-Names="Arial"></asp:textbox></TD>
					</TR>
					<TR>
						<TD bgColor="#0080c0" colSpan="4">
							<DIV align="center"><STRONG><FONT face="黑体" color="#ffff00" size="2" style="FONT-FAMILY: Arial">会 
										员</FONT></STRONG></DIV>
						</TD>
					</TR>
					<TR>
						<TD style="WIDTH: 107px" align="center"><FONT face="黑体" size="2"><SPAN class="style1" style="FONT-SIZE: 9pt; COLOR: black; FONT-FAMILY: Arial; mso-ascii-font-family: ??; mso-hansi-font-family: ??; mso-bidi-font-family: 黑体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">是否会员</SPAN></FONT></TD>
						<TD class="style1" style="WIDTH: 210px" align="center">
							<asp:radiobuttonlist id="member" runat="server" Enabled="False" Width="16px" Height="16px" RepeatDirection="Horizontal"
								Font-Size="X-Small" AutoPostBack="True" Font-Names="Arial">
								<asp:ListItem Value="1">是</asp:ListItem>
								<asp:ListItem Value="2" Selected="True">否</asp:ListItem>
							</asp:radiobuttonlist></TD>
						<TD style="WIDTH: 148px" align="center"><FONT face="黑体" size="2"><SPAN class="style1" style="FONT-SIZE: 9pt; COLOR: black; FONT-FAMILY: Arial; mso-ascii-font-family: ??; mso-hansi-font-family: ??; mso-bidi-font-family: 黑体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">会员卡号</SPAN></FONT></TD>
						<TD align="center">
							<asp:textbox id="memberid" runat="server" Enabled="False" Font-Names="Arial"></asp:textbox></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 107px" align="center"><FONT face="黑体" size="2"><SPAN class="style1" style="FONT-SIZE: 9pt; COLOR: black; FONT-FAMILY: Arial; mso-ascii-font-family: ??; mso-hansi-font-family: ??; mso-bidi-font-family: 黑体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">会员类别</SPAN></FONT></TD>
						<TD style="WIDTH: 210px" align="center">
							<asp:dropdownlist id="membertype" runat="server" Enabled="False" Font-Names="Arial">
								<asp:ListItem Value="1">普通租赁客户</asp:ListItem>
								<asp:ListItem Value="2">一般会员客户</asp:ListItem>
								<asp:ListItem Value="3">中级会员客户</asp:ListItem>
								<asp:ListItem Value="4">高级会员客户</asp:ListItem>
							</asp:dropdownlist></TD>
						<TD style="WIDTH: 148px"></TD>
						<TD></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 107px" align="center"><FONT face="黑体" size="2"><SPAN class="style1" style="FONT-SIZE: 9pt; COLOR: black; FONT-FAMILY: Arial; mso-ascii-font-family: ??; mso-hansi-font-family: ??; mso-bidi-font-family: 黑体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">会员开始日期</SPAN></FONT></TD>
						<TD class="style1" style="FONT-SIZE: 10pt; WIDTH: 210px; FONT-FAMILY: Arial">&nbsp;
							<asp:textbox id="memberstart" runat="server" Enabled="False" Width="108px" Font-Names="Arial"></asp:textbox>(1980-06-25)</TD>
						<TD style="WIDTH: 148px" align="center"><FONT face="黑体" size="2"><SPAN class="style1" style="FONT-SIZE: 9pt; COLOR: black; FONT-FAMILY: Arial; mso-ascii-font-family: ??; mso-hansi-font-family: ??; mso-bidi-font-family: 黑体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">结束日期</SPAN></FONT></TD>
						<TD class="style1" style="FONT-SIZE: 10pt; FONT-FAMILY: Arial" align="left">&nbsp;&nbsp;&nbsp;&nbsp;
							<asp:textbox id="memberend" runat="server" Enabled="False" Width="124px" Font-Names="Arial"></asp:textbox>(1980-06-25)</TD>
					</TR>
					<TR>
						<TD style="WIDTH: 107px" align="center"><FONT class="style1" face="黑体" size="2"><SPAN style="FONT-SIZE: 9pt; COLOR: black; FONT-FAMILY: Arial; mso-ascii-font-family: ??; mso-hansi-font-family: ??; mso-bidi-font-family: 黑体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">个人喜好</SPAN></FONT></TD>
						<TD align="center" colSpan="3">
							<asp:textbox id="favorite" runat="server" Enabled="False" Width="457px" Wrap="False" TextMode="MultiLine"
								Font-Names="Arial"></asp:textbox></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 107px" align="center">
							<DIV align="center"><FONT face="黑体" size="2"><SPAN class="style1" style="FONT-SIZE: 9pt; COLOR: black; FONT-FAMILY: Arial; mso-ascii-font-family: ??; mso-hansi-font-family: ??; mso-bidi-font-family: 黑体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">备注</SPAN><SPAN lang="EN-US" style="FONT-SIZE: 9pt; COLOR: black; FONT-FAMILY: ??; mso-bidi-font-family: 黑体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-fareast-font-family: 黑体"></SPAN></FONT></DIV>
						</TD>
						<TD align="center" colSpan="3">
							<asp:textbox id="note" runat="server" Enabled="False" Width="455px" Wrap="False" TextMode="MultiLine"
								Font-Names="Arial"></asp:textbox></TD>
					</TR>
					<TR>
						<TD style="FONT-SIZE: 11pt; FONT-FAMILY: Arial" align="center" colSpan="4"><FONT face="宋体">
								<asp:Label id="Label3" runat="server" Font-Names="Arial">请输入操作员验证码</asp:Label>&nbsp;&nbsp; 
								&nbsp;
								<asp:TextBox id="keyword" runat="server" Width="94px" TextMode="Password"></asp:TextBox>&nbsp;&nbsp;&nbsp;
								<asp:Button id="Button2" runat="server" Text="确定" onclick="Button2_Click"></asp:Button></FONT></TD>
					</TR>
					<TR>
						<TD style="FONT-SIZE: 11pt; FONT-FAMILY: Arial" align="left" colSpan="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
							&nbsp;&nbsp;&nbsp;&nbsp;
							<asp:button id="change" runat="server" Width="49px" Font-Size="X-Small" Text="转换" Font-Names="Arial"
								Enabled="False" onclick="change_Click"></asp:button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
							<asp:button id="sure" runat="server" Enabled="False" Width="52px" Font-Size="X-Small" Text="确认"
								Font-Names="Arial" onclick="sure_Click"></asp:button>&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;
							<asp:Button id="cancel" runat="server" Width="52px" Font-Size="X-Small" Text="取消" Font-Names="Arial" onclick="cancel_Click"></asp:Button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;登记时间
							<asp:textbox id="rcd" runat="server" Enabled="False" Width="104px" Font-Names="Arial"></asp:textbox></TD>
					</TR>
				</TABLE>
				<FONT face="黑体">
					<asp:label id="Label1" style="Z-INDEX: 101; LEFT: 280px; POSITION: absolute; TOP: 8px" runat="server"
						Font-Size="Large" Font-Bold="True" Font-Names="Arial">个人客户会员转换</asp:label></FONT>
				<asp:label id="Label2" style="Z-INDEX: 102; LEFT: 544px; POSITION: absolute; TOP: 16px" runat="server"
					Width="75px" Height="8px" Font-Size="Small" Font-Names="Arial">客户编号</asp:label>
				<asp:textbox id="userid" style="Z-INDEX: 103; LEFT: 624px; POSITION: absolute; TOP: 16px" runat="server"
					Enabled="False" Width="128px" Font-Names="Arial"></asp:textbox>
				<TABLE id="Table2" style="Z-INDEX: 105; LEFT: 360px; WIDTH: 72px; POSITION: absolute; TOP: 800px; HEIGHT: 24px"
					cellSpacing="1" cellPadding="1" width="72" border="1">
					<TR>
						<TD></TD>
					</TR>
				</TABLE>
			</FONT>
		</form>
	</body>
</HTML>
