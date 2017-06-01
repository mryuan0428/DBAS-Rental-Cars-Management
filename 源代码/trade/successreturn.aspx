<%@ Page language="c#" Inherits="cartrade.successreturn" CodeFile="successreturn.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>successreturn</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body background="..\logo2.gif">
		<form id="Form1" method="post" runat="server">
			<table class="alpha" cellSpacing="2" cellPadding="0" width="100%" border="0">
				<tr>
					<td colSpan="6" height="35">
						<div class="style1" align="center" style="FONT-WEIGHT: bold; FONT-SIZE: 20pt; COLOR: black">&nbsp;已经成功还车</div>
					</td>
				</tr>
				<tr>
					<td width="8%" height="29">&nbsp;</td>
					<td bgColor="#ffcc33" colSpan="2">
						<div align="center">合同号</div>
					</td>
					<td bgColor="#ffcc33" colSpan="2">&nbsp;
						<asp:label id="Label1" runat="server" Width="168px"></asp:label></td>
					<td width="8%">&nbsp;</td>
				</tr>
				<tr>
					<td height="28">&nbsp;</td>
					<td bgColor="#ffffcc" colSpan="2">
						<div align="center">承租方</div>
					</td>
					<td bgColor="#ffffcc" colSpan="2">&nbsp;
						<asp:label id="Label2" runat="server" Width="184px"></asp:label></td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td height="29">&nbsp;</td>
					<td bgColor="#ffcc33" colSpan="2">
						<div align="center">业务部</div>
					</td>
					<td bgColor="#ffcc33" colSpan="2">&nbsp;
						<asp:label id="Label3" runat="server"></asp:label></td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td style="HEIGHT: 28px" height="28">&nbsp;</td>
					<td style="HEIGHT: 28px" width="21%" bgColor="#ffffcc">
						<div align="center">车序号</div>
					</td>
					<td style="HEIGHT: 28px" width="21%" bgColor="#ffffcc">&nbsp;
						<asp:label id="Label4" runat="server" Width="120px"></asp:label></td>
					<td style="HEIGHT: 28px" width="21%" bgColor="#ffffcc">
						<div align="center">车辆类型</div>
					</td>
					<td style="HEIGHT: 28px" width="21%" bgColor="#ffffcc">&nbsp;
						<asp:label id="Label5" runat="server" Width="128px"></asp:label></td>
					<td style="HEIGHT: 28px">&nbsp;</td>
				</tr>
				<tr>
					<td height="29">&nbsp;</td>
					<td bgColor="#ffcc33">
						<div align="center">起租时间</div>
					</td>
					<td bgColor="#ffcc33">&nbsp;
						<asp:label id="Label6" runat="server" Width="128px"></asp:label></td>
					<td bgColor="#ffcc33">
						<div align="center">还车时间</div>
					</td>
					<td bgColor="#ffcc33">&nbsp;
						<asp:label id="Label7" runat="server" Width="120px"></asp:label></td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td height="34">&nbsp;</td>
					<td bgColor="#ffffcc">
						<div align="center">起始里程</div>
					</td>
					<td bgColor="#ffffcc">&nbsp;
						<asp:label id="Label8" runat="server" Width="112px"></asp:label></td>
					<td bgColor="#ffffcc">
						<div align="center">还车里程</div>
					</td>
					<td bgColor="#ffffcc">&nbsp;
						<asp:label id="Label9" runat="server" Width="120px"></asp:label></td>
					<td>&nbsp;</td>
				</tr>
			</table>
			<asp:button id="Button1" style="Z-INDEX: 101; LEFT: 344px; POSITION: absolute; TOP: 296px" runat="server"
				Text="打印此页" onclick="Button1_Click"></asp:button><asp:button id="Button2" style="Z-INDEX: 102; LEFT: 504px; POSITION: absolute; TOP: 296px" runat="server"
				Width="80px" Text="返回"></asp:button></form>
	</body>
</HTML>
