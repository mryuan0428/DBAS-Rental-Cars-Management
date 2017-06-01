<%@ Page language="c#" Inherits="cartrade.exchangecar1" CodeFile="exchangecar.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>exchangecar</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body background="file:///F:\logo2.gif">
		<form id="Form1" method="post" runat="server">
			<FONT face="黑体"></FONT>
			<table width="700" height="376" border="0" align="center" cellPadding="1" cellSpacing="1"
				background="../logo2.gif" style="WIDTH: 700px; HEIGHT: 376px">
				<tr>
					<td height="33" colSpan="6">
						<div class="style1" style="FONT-SIZE: 0.8cm; COLOR: #000000" align="center">更换车辆</div>
					</td>
				</tr>
				<tr>
					<td height="33" colSpan="2" style="WIDTH: 140px">&nbsp;</td>
					<td width="24%" bgcolor="#ffcc33">
						<div align="center">合同号</div>
					</td>
					<td width="31%" bgcolor="#ffcc33">
						<div align="center"><input id="Text1" type="text" name="textfield" runat="server">
						</div>
					</td>
					<td width="21%" colSpan="2">&nbsp;</td>
				</tr>
				<tr>
					<td height="33" colSpan="2" style="WIDTH: 140px">&nbsp;</td>
					<td bgcolor="#ffffcc">
						<div align="center">新车辆号</div>
					</td>
					<td bgcolor="#ffffcc">
						<div align="center"><input id="Text2" type="text" name="textfield2" runat="server">
						</div>
					</td>
					<td colSpan="2">&nbsp;</td>
				</tr>
				<tr>
					<td height="33" colSpan="2" style="WIDTH: 140px">&nbsp;</td>
					<td bgcolor="#ffcc33">
						<div align="center">预付押金</div>
					</td>
					<td bgcolor="#ffcc33">
						<div align="center"><input id="Text3" type="text" name="textfield3" runat="server">
						</div>
					</td>
					<td colSpan="2">&nbsp;</td>
				</tr>
				<tr>
					<td height="33" colSpan="2" style="WIDTH: 140px">&nbsp;</td>
					<td bgcolor="#ffffcc">
						<div align="center">预付租金</div>
					</td>
					<td bgcolor="#ffffcc">
						<div align="center"><input id="Text4" type="text" name="textfield4" runat="server">
						</div>
					</td>
					<td colSpan="2">&nbsp;</td>
				</tr>
				<tr>
					<td height="33" colSpan="2" style="WIDTH: 140px">&nbsp;</td>
					<td bgcolor="#ffcc33">
						<div align="center">每日租金</div>
					</td>
					<td bgcolor="#ffcc33">
						<div align="center"><input id="Text5" type="text" name="textfield5" runat="server">
						</div>
					</td>
					<td colSpan="2">&nbsp;</td>
				</tr>
				<tr>
					<td height="33" colSpan="2" style="WIDTH: 140px">&nbsp;</td>
					<td bgcolor="#ffffcc">
						<div align="center">备&nbsp; 注</div>
					</td>
					<td bgcolor="#ffffcc">
						<div align="center"><input id="Text6" type="text" name="textfield6" runat="server">
						</div>
					</td>
					<td colSpan="2">&nbsp;</td>
				</tr>
				<tr>
					<td height="33" colSpan="2" style="WIDTH: 140px">&nbsp;</td>
					<td bgcolor="#ffcc33">
						<div align="center">
							<input id="Submit1" type="submit" value="确  定" name="Submit" runat="server" style="WIDTH: 73px; HEIGHT: 24px" onserverclick="Submit1_ServerClick1">
						</div>
					</td>
					<td bgcolor="#ffcc33">
						<div align="center"><input id="Submit2" type="submit" value="取  消" name="Submit2" runat="server" style="WIDTH: 80px; HEIGHT: 24px">
						</div>
					</td>
					<td colSpan="2">&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
				</tr>
			</table>
		</form>
		<P><FONT face="宋体"></FONT></P>
	</body>
</HTML>
