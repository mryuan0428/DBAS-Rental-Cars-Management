<%@ Register TagPrefix="cr" Namespace="CrystalDecisions.Web" Assembly="CrystalDecisions.Web, Version=9.1.5000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" %>
<%@ Page language="c#" Inherits="cartrade.jiesuanpaper" CodeFile="jiesuanpaper.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>jiesuanpaper</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<asp:label id="Label1" style="Z-INDEX: 101; LEFT: 376px; POSITION: absolute; TOP: 32px" runat="server"
				ForeColor="#0000C0" Font-Bold="True" Font-Size="Large" Width="184px">汽车租赁结算单</asp:label>
			<table style="Z-INDEX: 102; LEFT: 72px; WIDTH: 816px; POSITION: absolute; TOP: 104px; HEIGHT: 379px"
				borderColor="#000000" height="379" cellSpacing="1" cellPadding="1" width="816" bgColor="#000000"
				border="1">
				<TR bgColor="#ffffff">
					<TD colSpan="2" height="26">车号</TD>
					<TD style="WIDTH: 104px" width="104">&nbsp;
						<asp:label id="lblchepaihao" runat="server"></asp:label></TD>
					<TD width="15%">车型</TD>
					<TD width="17%">&nbsp;
						<asp:label id="lblchexing" runat="server"></asp:label></TD>
					<TD width="14%">颜色</TD>
					<TD width="18%">&nbsp;
						<asp:label id="lblcheyanse" runat="server"></asp:label></TD>
				</TR>
				<TR bgColor="#ffffff">
					<TD colSpan="2" height="28">租车人</TD>
					<TD colSpan="3">&nbsp;
						<asp:label id="lblperson" runat="server"></asp:label></TD>
					<TD>还车日期</TD>
					<TD>&nbsp;
						<asp:label id="lblreturntime" runat="server"></asp:label></TD>
				</TR>
				<TR bgColor="#ffffff">
					<TD width="5%" rowSpan="6">收费项目</TD>
					<TD width="13%" height="25">补交租金</TD>
					<TD style="WIDTH: 104px">&nbsp;
						<asp:label id="lblbujiaozujin" runat="server"></asp:label></TD>
					<TD>超驶收费
					</TD>
					<TD>&nbsp;
						<asp:label id="lblchaoshijiafei1" runat="server"></asp:label></TD>
					<TD>修理费
					</TD>
					<TD>&nbsp;
						<asp:label id="lblxiulifei" runat="server"></asp:label></TD>
				</TR>
				<TR>
					<TD bgColor="#ffffff" height="28">牌证遗失</TD>
					<TD style="WIDTH: 104px" bgColor="#ffffff">&nbsp;
						<asp:label id="lblpaizhengyishi" runat="server"></asp:label></TD>
					<TD bgColor="#ffffff">保险费
					</TD>
					<TD bgColor="#ffffff">&nbsp;
						<asp:label id="lblbaoxianfei" runat="server"></asp:label></TD>
					<TD bgColor="#ffffff">车损费
					</TD>
					<TD bgColor="#ffffff">&nbsp;
						<asp:label id="lblchesunfei" runat="server"></asp:label></TD>
				</TR>
				<TR>
					<TD bgColor="#ffffff" height="27">漏保费</TD>
					<TD style="WIDTH: 104px" bgColor="#ffffff">&nbsp;
						<asp:label id="lblloubaofei" runat="server"></asp:label></TD>
					<TD bgColor="#ffffff">漏检费
					</TD>
					<TD bgColor="#ffffff">&nbsp;
						<asp:label id="lblloujianfei" runat="server"></asp:label></TD>
					<TD bgColor="#ffffff">送车费
					</TD>
					<TD bgColor="#ffffff">&nbsp;
						<asp:label id="lblsongchefei" runat="server"></asp:label></TD>
				</TR>
				<TR>
					<TD bgColor="#ffffff" height="25">拆装赔偿
					</TD>
					<TD style="WIDTH: 104px" bgColor="#ffffff">&nbsp;
						<asp:label id="lblchaizhuangpeichang" runat="server"></asp:label></TD>
					<TD bgColor="#ffffff">司机费
					</TD>
					<TD bgColor="#ffffff">&nbsp;
						<asp:label id="lblsijifei" runat="server"></asp:label></TD>
					<TD bgColor="#ffffff">违章费
					</TD>
					<TD bgColor="#ffffff">&nbsp;
						<asp:label id="Label21" runat="server">.00</asp:label></TD>
				</TR>
				<TR>
					<TD bgColor="#ffffff" height="28">汽油费
					</TD>
					<TD style="WIDTH: 104px" bgColor="#ffffff">&nbsp;
						<asp:label id="Label22" runat="server">.00</asp:label></TD>
					<TD bgColor="#ffffff">违约金
					</TD>
					<TD bgColor="#ffffff">&nbsp;
						<asp:label id="Label23" runat="server">.00</asp:label></TD>
					<TD bgColor="#ffffff"><STRONG>收费小计 </STRONG>
					</TD>
					<TD bgColor="#ffffff">&nbsp;
						<asp:label id="lblshoufeixiaoji" runat="server"></asp:label></TD>
				</TR>
				<TR>
					<TD bgColor="#ffffff" height="26">违章押金
					</TD>
					<TD style="WIDTH: 104px" bgColor="#ffffff">&nbsp;
						<asp:label id="lblweizhangyajin" runat="server"></asp:label></TD>
					<TD bgColor="#ffffff">超时收费
					</TD>
					<TD bgColor="#ffffff">&nbsp;
						<asp:label id="lblchaoshijiafei" runat="server"></asp:label></TD>
					<TD bgColor="#ffffff">&nbsp;</TD>
					<TD bgColor="#ffffff">&nbsp;</TD>
				</TR>
				<TR bgColor="#ffffff">
					<TD height="27">退费
					</TD>
					<TD height="27">退押金
					</TD>
					<TD style="WIDTH: 104px">&nbsp;
						<asp:label id="lbltuiyajin" runat="server"></asp:label></TD>
					<TD>其它
					</TD>
					<TD>&nbsp;
						<asp:label id="Label28" runat="server">.00</asp:label></TD>
					<TD><STRONG>退费小计 </STRONG>
					</TD>
					<TD>&nbsp;
						<asp:label id="lbltuifeixiaoji" runat="server"></asp:label></TD>
				</TR>
				<TR bgColor="#ffffff">
					<TD colSpan="2" height="26">预收租金
					</TD>
					<TD style="WIDTH: 104px">&nbsp;
						<asp:label id="lblprozujin" runat="server"></asp:label></TD>
					<TD>预收押金
					</TD>
					<TD>&nbsp;
						<asp:label id="lblproyajin" runat="server"></asp:label></TD>
					<TD>应补交款
					</TD>
					<TD>&nbsp;
						<asp:label id="lblyingbujiaokuan" runat="server"></asp:label></TD>
				</TR>
				<TR bgColor="#ffffff">
					<TD colSpan="2" height="28">支票号
					</TD>
					<TD colSpan="3">&nbsp;
						<asp:label id="lblchecknum" runat="server"></asp:label></TD>
					<TD>应退款
					</TD>
					<TD>&nbsp;
						<asp:label id="lblyingtuikuan" runat="server"></asp:label></TD>
				</TR>
				<TR bgColor="#ffffff">
					<TD colSpan="2" height="25"><STRONG>费用总计 </STRONG>
					</TD>
					<TD colSpan="3">&nbsp;
						<asp:label id="lblfeiyongzongji" runat="server"></asp:label></TD>
					<TD>是否会员
					</TD>
					<TD>&nbsp;
						<asp:label id="lblhuiyuan" runat="server"></asp:label></TD>
				</TR>
				<TR bgColor="#ffffff">
					<TD colSpan="2" height="31">备 注
					</TD>
					<TD colSpan="5">&nbsp;
						<asp:label id="lblnote" runat="server"></asp:label></TD>
				</TR>
			</table>
			<asp:label id="lblcarid" style="Z-INDEX: 103; LEFT: 144px; POSITION: absolute; TOP: 80px" runat="server"></asp:label><asp:label id="Label4" style="Z-INDEX: 104; LEFT: 208px; POSITION: absolute; TOP: 80px" runat="server">合同号：</asp:label><asp:label id="lbltradeid" style="Z-INDEX: 105; LEFT: 272px; POSITION: absolute; TOP: 80px"
				runat="server"></asp:label><asp:label id="lbltimenow" style="Z-INDEX: 106; LEFT: 768px; POSITION: absolute; TOP: 80px"
				runat="server" Width="116px"></asp:label><asp:label id="Label3" style="Z-INDEX: 107; LEFT: 656px; POSITION: absolute; TOP: 80px" runat="server"
				Width="97px">出表时间：</asp:label>
			<asp:Label id="Label2" style="Z-INDEX: 108; LEFT: 80px; POSITION: absolute; TOP: 80px" runat="server"
				Width="64px">车辆号：</asp:Label>
			<asp:Label id="Label5" style="Z-INDEX: 109; LEFT: 80px; POSITION: absolute; TOP: 488px" runat="server">结算人：</asp:Label>
			<asp:Label id="lbljiesuanren" style="Z-INDEX: 110; LEFT: 152px; POSITION: absolute; TOP: 488px"
				runat="server" Width="72px"></asp:Label>
			<asp:Label id="Label7" style="Z-INDEX: 111; LEFT: 496px; POSITION: absolute; TOP: 488px" runat="server"
				Width="64px">业务部：</asp:Label>
			<asp:Label id="lblsubpoint" style="Z-INDEX: 112; LEFT: 592px; POSITION: absolute; TOP: 488px"
				runat="server" Width="216px"></asp:Label>
			<asp:Label id="Label9" style="Z-INDEX: 113; LEFT: 496px; POSITION: absolute; TOP: 520px" runat="server">结算日期：</asp:Label>
			<asp:Label id="lbljiesuantime" style="Z-INDEX: 114; LEFT: 592px; POSITION: absolute; TOP: 520px"
				runat="server" Width="216px"></asp:Label></form>
	</body>
</HTML>
