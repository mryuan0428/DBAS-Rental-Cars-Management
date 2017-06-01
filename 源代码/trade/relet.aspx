<%@ Page language="c#" Inherits="cartrade.relet" CodeFile="relet.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>relet</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../style.css" type="text/css" rel="stylesheet">
		<style>.alpha1 { FILTER: Alpha(Opacity=60) }
		</style>
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<FONT face="黑体"></FONT>
			<table cellSpacing="2" cellPadding="0" width="936" background="../logo2.gif" border="0"
				style="WIDTH: 936px; HEIGHT: 384px">
				<tr align="center" valign="middle">
					<td height="39" colSpan="4" style="HEIGHT: 39px">
						<div class="style1" style="FONT-SIZE: 15pt; FONT-FAMILY: 黑体">
							<div align="center">租赁合同续租</div>
						</div>
					</td>
				</tr>
				<tr>
					<td width="25%" height="33">&nbsp;</td>
					<td style="WIDTH: 194px" width="194" bgColor="#ffcc33" height="33">
						<div align="center">合同号</div>
					</td>
					<td style="WIDTH: 220px" width="220" bgColor="#ffcc33" height="33"><input id="Text1" type="text" name="textfield" runat="server"></td>
					<td width="25%" height="33">&nbsp;</td>
				</tr>
				<tr>
					<td style="WIDTH: 332px" height="33">&nbsp;</td>
					<td style="WIDTH: 194px" bgColor="#ffffcc" height="33">
						<div align="center">车牌号</div>
					</td>
					<td style="WIDTH: 220px" bgColor="#ffffcc" height="33"><input id="Text2" type="text" name="textfield2" runat="server"></td>
					<td height="33">&nbsp;</td>
				</tr>
				<tr>
					<td style="WIDTH: 332px" height="33">&nbsp;</td>
					<td style="WIDTH: 194px" bgColor="#ffcc33" height="33">
						<div align="center">还车时间改为</div>
					</td>
					<td style="WIDTH: 220px" bgColor="#ffcc33"><input id="Text3" type="text" name="textfield3" runat="server"></td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td style="WIDTH: 332px" height="33">&nbsp;</td>
					<td style="WIDTH: 194px" bgColor="#ffffcc" height="33">
						<div align="center">增加预付租金</div>
					</td>
					<td style="WIDTH: 220px" bgColor="#ffffcc" height="33"><input id="Text4" type="text" name="textfield4" runat="server"></td>
					<td height="33">&nbsp;</td>
				</tr>
				<tr>
					<td style="WIDTH: 332px" height="33">&nbsp;</td>
					<td style="WIDTH: 194px" bgColor="#ffcc33" height="33">
						<div align="center">支票号</div>
					</td>
					<td style="WIDTH: 220px" bgColor="#ffcc33" height="33"><input id="Text5" type="text" name="textfield5" runat="server"></td>
					<td height="33">&nbsp;</td>
				</tr>
				<tr>
					<td style="WIDTH: 332px" height="33">&nbsp;</td>
					<td style="WIDTH: 194px" bgColor="#ffffcc" height="33"><div align="center">下次付款日期</div>
					</td>
					<td style="WIDTH: 220px" bgColor="#ffffcc" height="33"><p><input id="Text6" type="text" name="textfield7" runat="server">
						</p>
					</td>
					<td height="33">&nbsp;</td>
				</tr>
				<tr>
					<td style="WIDTH: 332px" height="33">&nbsp;</td>
					<td style="WIDTH: 194px" bgColor="#ffcc33" height="33">
						<div align="center">每日租金</div>
					</td>
					<td style="WIDTH: 220px" bgColor="#ffcc33" height="33"><input id="Text7" type="text" name="textfield6" runat="server"></td>
					<td height="33">&nbsp;</td>
				</tr>
				<tr>
					<td style="WIDTH: 331px" height="33">&nbsp;</td>
					<td style="WIDTH: 194px" bgColor="#ffffcc" height="33" align="center">&nbsp;&nbsp; <input id="Submit1" style="WIDTH: 80px; HEIGHT: 24px" type="submit" value="确定" name="Submit"
							runat="server" onserverclick="Submit1_ServerClick">
					<td style="WIDTH: 194px" bgColor="#ffffcc" height="33" align="left"><FONT face="宋体">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						</FONT><input id="Submit2" style="WIDTH: 80px; HEIGHT: 24px" type="submit" value="取消" name="Submit2"
							runat="server"></td>
					<td height="33">&nbsp;</td>
				</tr>
				<tr>
					<td height="40">&nbsp;
					</td>
					<td height="40">&nbsp;
					</td>
					<td height="40">&nbsp;
					</td>
					<td height="40">&nbsp;
					</td>
				</tr>
			</table>
			<asp:TextBox id="TextBox1" style="Z-INDEX: 101; LEFT: 128px; POSITION: absolute; TOP: 432px"
				runat="server" Visible="False"></asp:TextBox></form>
	</body>
</HTML>
