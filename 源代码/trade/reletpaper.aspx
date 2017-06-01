<%@ Page language="c#" Inherits="cartrade.reletpaper" CodeFile="reletpaper.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>reletpaper</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<asp:Label id="Label1" style="Z-INDEX: 101; LEFT: 360px; POSITION: absolute; TOP: 24px" runat="server"
				Width="232px" ForeColor="Blue" Font-Bold="True" Font-Size="Large">汽车租赁续租登记表</asp:Label>
			<table width="880" border="1" cellpadding="0" cellspacing="1" bgcolor="#000000" style="Z-INDEX: 103; LEFT: 40px; WIDTH: 880px; POSITION: absolute; TOP: 216px; HEIGHT: 635px">
				<TR bgColor="#ffffff">
					<TD colSpan="2" height="27">驾驶员姓名</TD>
					<TD colSpan="2">驾驶证号</TD>
					<TD colSpan="2">身份证号</TD>
				</TR>
				<TR bgColor="#ffffff">
					<TD colSpan="2" height="27">&nbsp;</TD>
					<TD colSpan="2">&nbsp;</TD>
					<TD colSpan="2">&nbsp;</TD>
				</TR>
				<TR bgColor="#ffffff">
					<TD colSpan="2" height="27">&nbsp;</TD>
					<TD colSpan="2">&nbsp;</TD>
					<TD colSpan="2">&nbsp;</TD>
				</TR>
				<TR bgColor="#ffffff">
					<TD colSpan="2" height="25">&nbsp;</TD>
					<TD colSpan="2">&nbsp;</TD>
					<TD colSpan="2">&nbsp;</TD>
				</TR>
				<TR bgColor="#ffffff">
					<TD width="18%" height="25">车辆号</TD>
					<TD width="13%">&nbsp;
						<asp:Label id="lblchepaihao" runat="server"></asp:Label></TD>
					<TD width="14%">颜色</TD>
					<TD width="20%">&nbsp;
						<asp:Label id="lblcarcolor" runat="server"></asp:Label></TD>
					<TD width="13%">下次付款日期</TD>
					<TD width="22%">&nbsp;
						<asp:Label id="lblnextpaytime" runat="server"></asp:Label></TD>
				</TR>
				<TR bgColor="#ffffff">
					<TD height="31">车型</TD>
					<TD height="31">&nbsp;
						<asp:Label id="lblcarmodel" runat="server"></asp:Label></TD>
					<TD height="31">起租时间</TD>
					<TD height="31">&nbsp;
						<asp:Label id="lblbegintime" runat="server"></asp:Label></TD>
					<TD height="31">应还时间</TD>
					<TD height="31">&nbsp;
						<asp:Label id="lblendtime" runat="server"></asp:Label></TD>
				</TR>
				<TR bgColor="#ffffff">
					<TD height="31">超时收费</TD>
					<TD height="31">&nbsp;
						<asp:Label id="lblchaoshishoufei" runat="server"></asp:Label></TD>
					<TD height="31">超驶收费</TD>
					<TD height="31">&nbsp;
						<asp:Label id="lblchaoshishoufei1" runat="server"></asp:Label></TD>
					<TD height="31">每日租金</TD>
					<TD height="31">&nbsp;
						<asp:Label id="lblunitpay" runat="server"></asp:Label></TD>
				</TR>
				<TR bgColor="#ffffff">
					<TD colSpan="4" height="31">
						<DIV align="center">使用时请加注 93 &nbsp;# 无铅汽油
						</DIV>
					</TD>
					<TD height="31">日限驶公里数</TD>
					<TD height="31">&nbsp;
						<asp:Label id="lblrixianshigonglishu" runat="server"></asp:Label></TD>
				</TR>
				<TR bgColor="#ffffff">
					<TD height="31">付款日期</TD>
					<TD height="31">&nbsp;
						<asp:Label id="lblpaytime" runat="server"></asp:Label></TD>
					<TD height="31">预付租金</TD>
					<TD height="31">&nbsp;
						<asp:Label id="lblprozujin" runat="server"></asp:Label></TD>
					<TD height="31">支票号</TD>
					<TD height="31">&nbsp;
						<asp:Label id="lblchecknum" runat="server"></asp:Label></TD>
				</TR>
				<TR bgColor="#ffffff">
					<TD height="97" style="HEIGHT: 50px">备注</TD>
					<TD colSpan="5" height="97" style="HEIGHT: 97px">
						<P>&nbsp;</P>
						<P><FONT face="宋体"></FONT>&nbsp;</P>
						<P>
							<asp:Label id="lblbeizhu" runat="server" Height="1px"></asp:Label></P>
						<P>&nbsp;</P>
					</TD>
				</TR>
				<TR bgColor="#ffffff">
					<TD colSpan="3" height="31">
						<P>出租方： 华磊邦得汽车租赁有限公司
						</P>
						<P align="left">经办人
						</P>
						<P align="right">签章：&nbsp;&nbsp;&nbsp;&nbsp;</P>
						<P align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;签订日期 
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;年 
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;月 
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;日
						</P>
					</TD>
					<TD colSpan="3" height="31">
						<P>承租方：</P>
						<P>经办人</P>
						<P>担保人</P>
						<P align="right">签章：&nbsp;</P>
						<P align="right">签订日期 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;年 
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;月&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
							日&nbsp;&nbsp;&nbsp;</P>
					</TD>
				</TR>
				<TR bgColor="#ffffff">
					<TD height="31">操作员</TD>
					<TD colSpan="2" height="31">&nbsp;
						<asp:Label id="lblopername" runat="server"></asp:Label></TD>
					<TD colSpan="2" height="31">业务部</TD>
					<TD height="31">&nbsp;
						<asp:Label id="lblyingyebu" runat="server"></asp:Label></TD>
				</TR>
				<TR bgColor="#ffffff">
					<TD height="31">租车地址</TD>
					<TD colSpan="2" height="31">华磊邦得汽车租赁部
					</TD>
					<TD colSpan="2" height="31">电话</TD>
					<TD height="31">64275689
					</TD>
				</TR>
			</table>
			<TABLE style="Z-INDEX: 102; LEFT: 40px; WIDTH: 880px; POSITION: absolute; TOP: 104px; HEIGHT: 114px"
				cellSpacing="1" cellPadding="0" width="880" bgColor="#000000" border="1">
				<tr bgcolor="#ffffff">
					<td width="27%" height="27">承租方</td>
					<td width="25%">&nbsp;
						<asp:Label id="lblusername" runat="server"></asp:Label></td>
					<td width="25%">电话</td>
					<td width="23%">&nbsp;
						<asp:Label id="lbluserphone" runat="server"></asp:Label></td>
				</tr>
				<tr bgcolor="#ffffff">
					<td height="27">住址/地址</td>
					<td>&nbsp;
						<asp:Label id="lbluseraddress" runat="server"></asp:Label></td>
					<td>证件号码</td>
					<td>&nbsp;
						<asp:Label id="lbluserzhengjian" runat="server"></asp:Label></td>
				</tr>
				<tr bgcolor="#ffffff">
					<td height="27">担保方</td>
					<td>&nbsp;
						<asp:Label id="lblinsurename" runat="server"></asp:Label></td>
					<td>电话</td>
					<td>&nbsp;
						<asp:Label id="lblinsurephone" runat="server"></asp:Label></td>
				</tr>
				<tr bgcolor="#ffffff">
					<td height="26" colspan="4">地址
						<asp:Label id="lblinsureaddress" runat="server"></asp:Label></td>
				</tr>
			</TABLE>
			<asp:Label id="Label2" style="Z-INDEX: 104; LEFT: 40px; POSITION: absolute; TOP: 80px" runat="server">租赁车号：</asp:Label>
			<asp:Label id="lblcarid" style="Z-INDEX: 105; LEFT: 120px; POSITION: absolute; TOP: 80px" runat="server"
				Width="88px"></asp:Label>
			<asp:Label id="Label4" style="Z-INDEX: 106; LEFT: 480px; POSITION: absolute; TOP: 80px" runat="server">合同编号：</asp:Label>
			<asp:Label id="lbltradeid" style="Z-INDEX: 107; LEFT: 560px; POSITION: absolute; TOP: 80px"
				runat="server" Width="88px"></asp:Label>
			<asp:Label id="Label6" style="Z-INDEX: 108; LEFT: 688px; POSITION: absolute; TOP: 80px" runat="server">出表日期：</asp:Label>
			<asp:Label id="lbltimenow" style="Z-INDEX: 109; LEFT: 776px; POSITION: absolute; TOP: 80px"
				runat="server" Width="138px"></asp:Label>
			<asp:Label id="Label8" style="Z-INDEX: 110; LEFT: 736px; POSITION: absolute; TOP: 864px" runat="server">服务投诉电话</asp:Label>
			<asp:Label id="Label9" style="Z-INDEX: 111; LEFT: 856px; POSITION: absolute; TOP: 864px" runat="server">64275689</asp:Label>
		</form>
	</body>
</HTML>
