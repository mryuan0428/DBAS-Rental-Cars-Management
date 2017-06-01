<%@ Page language="c#" Inherits="cartrade.jiesuan" CodeFile="jiesuan.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>jiesuan</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body background="..\logo2.gif">
		<form id="Form1" method="post" runat="server">
			<TABLE id="Table1" style="Z-INDEX: 101; LEFT: 64px; WIDTH: 824px; POSITION: absolute; TOP: 64px; HEIGHT: 74px"
				cellSpacing="1" cellPadding="1" width="824" border="1">
				<TR>
					<TD style="WIDTH: 108px" colSpan="6"><FONT face="黑体">合同信息列表</FONT></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 99px"><FONT face="黑体">合同号</FONT></TD>
					<TD style="WIDTH: 159px"><FONT face="黑体"><asp:label id="lbltradeid" runat="server"></asp:label></FONT></TD>
					<TD style="WIDTH: 84px"><FONT face="黑体">合同状态</FONT></TD>
					<TD style="WIDTH: 178px"><asp:label id="lbljiesuan" runat="server"></asp:label></TD>
					<TD style="WIDTH: 76px"><FONT face="黑体">承租人</FONT></TD>
					<TD><asp:label id="lblperson" runat="server"></asp:label></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 99px"><FONT face="黑体">预定还车时间</FONT></TD>
					<TD style="WIDTH: 159px"><asp:label id="lblendtime" runat="server"></asp:label></TD>
					<TD style="WIDTH: 84px"><FONT face="黑体">起租时间</FONT></TD>
					<TD style="WIDTH: 178px"><asp:label id="lblbegintime" runat="server"></asp:label></TD>
					<TD style="WIDTH: 76px"><FONT face="黑体">还车时间</FONT></TD>
					<TD><asp:label id="lblreturntime" runat="server"></asp:label></TD>
				</TR>
			</TABLE>
			<TABLE id="Table4" style="Z-INDEX: 105; LEFT: 64px; WIDTH: 824px; POSITION: absolute; TOP: 336px; HEIGHT: 304px"
				cellSpacing="1" cellPadding="1" width="824" border="1">
				<TR>
					<TD style="WIDTH: 137px"><FONT face="黑体">支票号</FONT></TD>
					<TD style="WIDTH: 263px"><asp:textbox id="txtchecknum" runat="server"></asp:textbox></TD>
					<TD style="WIDTH: 191px"><FONT face="黑体">预付押金</FONT></TD>
					<TD><asp:label id="lblproyajin1" runat="server">.00</asp:label></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 137px"><FONT face="黑体">预付租金</FONT></TD>
					<TD style="WIDTH: 263px"><asp:label id="lblprozujin1" runat="server">.00</asp:label></TD>
					<TD style="WIDTH: 191px"><FONT face="黑体">其他已交费用</FONT></TD>
					<TD><asp:label id="lblqitayijiaofei" runat="server">.00</asp:label></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 137px"><FONT face="黑体">其它退费</FONT></TD>
					<TD style="WIDTH: 263px"><asp:textbox id="txtqitatuifei" runat="server">.00</asp:textbox></TD>
					<TD style="WIDTH: 191px"><FONT face="黑体">基本租金</FONT></TD>
					<TD><asp:textbox id="txtjibenzujin" runat="server">.00</asp:textbox></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 137px"><FONT face="黑体">超时加费</FONT></TD>
					<TD style="WIDTH: 263px"><asp:textbox id="txtchaoshijiafei" runat="server">.00</asp:textbox></TD>
					<TD style="WIDTH: 191px"><FONT face="黑体">超驶加费</FONT></TD>
					<TD><asp:textbox id="txtchaoshijiafei1" runat="server">.00</asp:textbox></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 137px"><SPAN><FONT face="黑体">牌证遗失</FONT></SPAN></TD>
					<TD style="WIDTH: 263px"><asp:textbox id="txtpaizhengyishi" runat="server">.00</asp:textbox></TD>
					<TD style="WIDTH: 191px"><FONT face="黑体">漏保费</FONT></TD>
					<TD><asp:textbox id="txtloubaofei" runat="server">.00</asp:textbox></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 137px"><FONT face="黑体">拆装赔偿</FONT></TD>
					<TD style="WIDTH: 263px"><asp:textbox id="txtchaizhuangpeichang" runat="server">.00</asp:textbox></TD>
					<TD style="WIDTH: 191px"><FONT face="黑体">保险费</FONT></TD>
					<TD><asp:textbox id="txtbaoxianfei" runat="server">.00</asp:textbox></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 137px"><FONT face="黑体">漏检费</FONT></TD>
					<TD style="WIDTH: 263px"><asp:textbox id="txtloujianfei" runat="server">.00</asp:textbox></TD>
					<TD style="WIDTH: 191px"><FONT face="黑体">司机费</FONT></TD>
					<TD><asp:textbox id="txtsijifei" runat="server">.00</asp:textbox></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 137px"><FONT face="黑体">修理费</FONT></TD>
					<TD style="WIDTH: 263px"><asp:textbox id="txtxiulifei" runat="server">.00</asp:textbox></TD>
					<TD style="WIDTH: 191px"><FONT face="黑体">车损费</FONT></TD>
					<TD><asp:textbox id="txtchesunfei" runat="server">.00</asp:textbox></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 137px; HEIGHT: 28px"><FONT face="黑体">送车费</FONT></TD>
					<TD style="WIDTH: 263px; HEIGHT: 28px"><asp:textbox id="txtsongchefei" runat="server">.00</asp:textbox></TD>
					<TD style="WIDTH: 191px; HEIGHT: 28px"><FONT face="黑体">陪练费</FONT></TD>
					<TD style="HEIGHT: 28px"><asp:textbox id="txtpeilianfei" runat="server">.00</asp:textbox></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 137px"><FONT face="黑体">违章押金</FONT></TD>
					<TD style="WIDTH: 263px"><asp:textbox id="txtweizhangyajin" runat="server">.00</asp:textbox></TD>
					<TD style="WIDTH: 191px"><FONT face="黑体">备注</FONT></TD>
					<TD><asp:textbox id="txtnote" runat="server" TextMode="MultiLine"></asp:textbox></TD>
				</TR>
			</TABLE>
			<TABLE id="Table3" style="Z-INDEX: 104; LEFT: 64px; WIDTH: 824px; POSITION: absolute; TOP: 248px; HEIGHT: 80px"
				cellSpacing="1" cellPadding="1" width="824" border="1">
				<TR>
					<TD colSpan="3" style="HEIGHT: 22px"><FONT face="黑体">车辆使用列表</FONT></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 263px; HEIGHT: 26px"><FONT face="黑体">起租时间</FONT></TD>
					<TD style="WIDTH: 268px; HEIGHT: 26px"><FONT face="黑体">车辆号</FONT></TD>
					<TD style="HEIGHT: 26px"><FONT face="黑体">起驶里程</FONT></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 263px"><asp:label id="lbltime3" runat="server"></asp:label></TD>
					<TD style="WIDTH: 268px"><asp:label id="lblcarid" runat="server"></asp:label></TD>
					<TD><asp:label id="lblmeter" runat="server"></asp:label></TD>
				</TR>
			</TABLE>
			<TABLE id="Table2" style="Z-INDEX: 102; LEFT: 64px; WIDTH: 824px; POSITION: absolute; TOP: 144px; HEIGHT: 97px"
				cellSpacing="1" cellPadding="1" width="824" border="1">
				<TR>
					<TD colSpan="3"><FONT face="黑体">资金使用列表</FONT></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 263px"><FONT face="黑体">日期</FONT></TD>
					<TD style="WIDTH: 267px"><FONT face="黑体">项目</FONT></TD>
					<TD><FONT face="黑体">金额</FONT></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 263px"><asp:label id="lbltime1" runat="server"></asp:label></TD>
					<TD style="WIDTH: 267px"><FONT face="黑体">预付押金</FONT></TD>
					<TD><asp:label id="lblproyajin" runat="server"></asp:label></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 263px"><asp:label id="lbltime2" runat="server"></asp:label></TD>
					<TD style="WIDTH: 267px"><FONT face="黑体">预付租金</FONT></TD>
					<TD><asp:label id="lblprozujin" runat="server"></asp:label></TD>
				</TR>
			</TABLE>
			<asp:label id="Label7" style="Z-INDEX: 103; LEFT: 392px; POSITION: absolute; TOP: 24px" runat="server"
				Font-Size="Large" Font-Bold="True" ForeColor="Black" Width="152px">填写费用项目</asp:label><asp:button id="Button1" style="Z-INDEX: 106; LEFT: 304px; POSITION: absolute; TOP: 664px" runat="server"
				Text="恢复数据" Width="96px" onclick="Button1_Click"></asp:button><asp:button id="Button2" style="Z-INDEX: 107; LEFT: 544px; POSITION: absolute; TOP: 664px" runat="server"
				Text="输出结算单" onclick="Button2_Click"></asp:button></form>
	</body>
</HTML>
