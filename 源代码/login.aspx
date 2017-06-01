<%@ Page Language="c#" Inherits="HLBD.login" CodeFile="login.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>login</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
	</HEAD>
	<body>
		<table width="200" border="0" align="center" cellpadding="0" cellspacing="0">
			<form method="post" action="index.htm">
				<TBODY>
					<tr>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td><img src="cr.gif" width="255" height="25"></td>
					</tr>
					<tr>
						<td height="105" background="cr_bg.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td width="47%" height="40" align="center"><strong>
											<asp:Label id="Label1" runat="server" Font-Size="X-Small">用户名</asp:Label></strong></td>
									<td width="53%"><input name="textfield" type="text" size="15" maxlength="16"></td>
								</tr>
								<tr>
									<td height="40" align="center"><strong>
											<asp:Label id="Label2" runat="server" Font-Size="X-Small">密　码</asp:Label></strong></td>
									<td><input name="textfield2" type="password" size="15" maxlength="20"></td>
								</tr>
								<tr align="center">
									<td height="40" align="center" colspan="2"><a href="index.htm"><img src="shidi_r10_c2.gif" width="101" height="18" border="0"></a></td>
								</tr>
							</table>
						</td>
					</tr>
			    </TBODY>
			</form>	
		</table>
	</body>
</HTML>
