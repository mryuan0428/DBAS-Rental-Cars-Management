<%@ Page language="c#" Inherits="WebApplication1.WebForm1" CodeFile="pretrade.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>预定合同</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<style>.alpha1 {
	FILTER: Alpha(Opacity=60)
}
TD {
	FONT-WEIGHT: normal; FONT-SIZE: 14px; TEXT-DECORATION: none
}
.aa {
	FONT-WEIGHT: bold; FONT-SIZE: 18px; COLOR: #333333; TEXT-DECORATION: none
}
.button1 {
	BORDER-RIGHT: #ff9900 1px solid; PADDING-RIGHT: 2px; BORDER-TOP: #ff9900 1px solid; PADDING-LEFT: 2px; FONT-SIZE: 12px; BACKGROUND: #ffcc33; PADDING-BOTTOM: 2px; BORDER-LEFT: #ff9900 1px solid; WIDTH: 70px; COLOR: #330066; PADDING-TOP: 2px; BORDER-BOTTOM: #ff9900 1px solid
}
.button2 {
	BORDER-RIGHT: #ff00ff 1px solid; PADDING-RIGHT: 1px; BORDER-TOP: #ff00ff 1px solid; PADDING-LEFT: 1px; FONT-SIZE: 12px; BACKGROUND: #ffccff; PADDING-BOTTOM: 1px; BORDER-LEFT: #ff00ff 1px solid; WIDTH: 70px; COLOR: #cc00ff; PADDING-TOP: 1px; BORDER-BOTTOM: #ff00ff 1px solid
}
		</style>
		<script language="javascript">
			function clickdriver()
			{
				window.navigate("driver.aspx");
			}
		</script>
	</HEAD>
	<body>
		<form name="form1" action="" method="post" runat="server">
			<table borderColor="#0000ff" height="586" cellSpacing="0" cellPadding="0" width="764" align="center"
				background="images/logo2.gif" border="0" runat="server">
				<tr>
					<td vAlign="top">
						<table class="alpha1" id="TABLE1" cellSpacing="2" cellPadding="1" width="100%" border="0"
							runat="server">
							<TBODY>
								<tr>
									<td style="HEIGHT: 15px" colSpan="3">&nbsp;</td>
								</tr>
								<tr align="center">
									<td class="aa" colSpan="3">预定合同</td>
								</tr>
								<tr>
									<td colSpan="3">&nbsp;</td>
								</tr>
								<tr align="right">
									<td borderColor="#ffcc33" align="right" colSpan="3">
										<table cellSpacing="0" cellPadding="0" width="100%" border="0" runat="server">
											<tr runat="server">
												<td>&nbsp;</td>
												<td>&nbsp;</td>
												<td align="center" width="32%" bgColor="#ffcc33" height="25" runat="server">合同编号
													<asp:textbox id="htbh" runat="server" Width="134px"></asp:textbox></td>
											</tr>
										</table>
									</td>
								</tr>
								<tr>
									<td colSpan="3">&nbsp;</td>
								</tr>
								<tr align="center" bgColor="#ffcc33" runat="server">
									<td style="HEIGHT: 22px" width="33%" height="22" runat="server">客户编号&nbsp;
										<asp:button id="Button1" runat="server" Width="54px" Text="选择用户" BorderStyle="None" BackColor="#FFCC33"
											ForeColor="Blue" Font-Underline="True" onclick="Button1_Click"></asp:button>&nbsp;<asp:textbox id="khbh" runat="server" Width="69px"></asp:textbox></td>
									<td style="HEIGHT: 22px" width="35%" bgColor="#ffcc33" height="22" runat="server">客户姓名
										<asp:textbox id="khxm" runat="server" Width="136px"></asp:textbox></td>
									<td style="HEIGHT: 22px" width="32%" height="22">客户类型
										<asp:dropdownlist id="persontype" runat="server">
											<asp:ListItem Value="个人用户">个人用户</asp:ListItem>
											<asp:ListItem Value="个人会员">个人会员</asp:ListItem>
											<asp:ListItem Value="公司用户">公司用户</asp:ListItem>
											<asp:ListItem Value="公司会员">公司会员</asp:ListItem>
										</asp:dropdownlist></td>
								</tr>
								<tr>
									<td style="HEIGHT: 17px" colSpan="3">&nbsp;
									</td>
								</tr>
								<tr align="center" bgColor="#ffcc33">
									<td style="HEIGHT: 19px" height="19">车牌号码&nbsp;
										<asp:hyperlink id="selcar" runat="server" Target="_blank" NavigateUrl="../carinfo/supersearch.aspx">选择车辆</asp:hyperlink>&nbsp;
										<asp:textbox id="cphm" runat="server" Width="68px"></asp:textbox></td>
									<td style="HEIGHT: 19px" height="19">车辆名称
										<asp:textbox id="clmc" runat="server" Width="136px"></asp:textbox></td>
									<td style="HEIGHT: 19px" height="19">租车模式
										<asp:dropdownlist id="zcms" runat="server" onselectedindexchanged="zcms_SelectedIndexChanged">
											<asp:ListItem Value="日租">日租</asp:ListItem>
											<asp:ListItem Value="月租">月租</asp:ListItem>
										</asp:dropdownlist></td>
								</tr>
								<tr>
									<td colSpan="3">&nbsp;</td>
								</tr>
								<tr align="center" bgColor="#ffcc33">
									<td height="23">司机编号&nbsp;
										<asp:hyperlink id="seldriver" runat="server" Target="_blank" NavigateUrl="driver2.aspx">选择司机</asp:hyperlink>&nbsp;
										<asp:textbox id="driverid" runat="server" Width="66px"></asp:textbox></td>
									<td bgColor="#ffcc33">司机姓名 <input id="drivername" style="WIDTH: 135px; HEIGHT: 22px" type="text" maxLength="20" size="17"
											name="rcdtime_pretrade" runat="server"></td>
									<td height="23">预交押金 <input id="yjyj" type="text" maxLength="10" size="17" name="deposit" runat="server"></td>
								</tr>
								<tr>
									<td colSpan="3">&nbsp;</td>
								</tr>
								<tr align="center" bgColor="#ffcc33">
									<td height="23">操作员号 <input id="czyh" type="text" maxLength="10" size="17" name="operid" runat="server"></td>
									<td>操作人员 <input id="czry" type="text" maxLength="20" size="17" name="opername_pretrade" runat="server"></td>
									<td>备&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;注 <INPUT id="beizhu" type="text" maxLength="20" size="17" name="rcdtime_pretrade" runat="server"></td>
								</tr>
								<tr>
									<td style="HEIGHT: 18px">&nbsp;</td>
									<td style="HEIGHT: 18px">&nbsp;</td>
									<td style="HEIGHT: 18px">&nbsp;</td>
									<td style="HEIGHT: 18px">&nbsp;</td>
								</tr>
								<tr align="center" bgColor="#ffcc33">
									<td height="23">租车时间&nbsp;
										<asp:textbox id="zcsj" runat="server" Width="134px" ontextchanged="zcsj_TextChanged"></asp:textbox></td>
									<td height="23">还车日期&nbsp;
										<asp:textbox id="hcsj" runat="server" Width="137px"></asp:textbox></td>
									<td height="23">登记时间 <input id="djsj" type="text" maxLength="20" size="17" name="rcdtime_pretrade" runat="server"></td>
								</tr>
								<tr>
									<td colSpan="3">&nbsp;</td>
								</tr>
								<tr>
									<td align="center"><INPUT class="button1" id="Submit1" onmouseover="this.className='button2'" style="CURSOR: hand"
											onmouseout="this.className='button1'" type="submit" value="提交申请" name="Submit1" runat="server" onserverclick="Submit1_ServerClick">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<FONT face="黑体"></FONT><INPUT class="button1" id="Reset1" onmouseover="this.className='button2'" style="CURSOR: hand"
											onmouseout="this.className='button1'" type="reset" value="重新填写" name="Reset1" runat="server"></td>
									<td align="center"><FONT face="黑体"></FONT></td>
									<td align="center">&nbsp;</td>
								</tr>
							</TBODY>
						</table>
					</td>
				</tr>
			</table>
		</form>
	</body>
</HTML>
