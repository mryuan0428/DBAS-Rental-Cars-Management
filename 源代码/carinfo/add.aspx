<%@ Page language="c#" Inherits="WebApplication4.add1" CodeFile="add.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>add</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body background="file:///C:\Inetpub\wwwroot\images\logo2.gif">
		<form id="Form1" method="post" runat="server">
			<FONT face="黑体">
				<asp:button id="Button4" style="Z-INDEX: 101; LEFT: 280px; POSITION: absolute; TOP: 560px" runat="server"
					Text="返回" Width="80px" onclick="Button4_Click"></asp:button>
				<TABLE id="Table1" style="WIDTH: 680px; HEIGHT: 530px" cellSpacing="1" cellPadding="1"
					width="680" align="center" border="3">
					<TR>
						<TD style="FONT-WEIGHT: bolder; FONT-SIZE: xx-large; COLOR: black; FONT-FAMILY: 隶书; HEIGHT: 50px"
							align="center" background="file:///C:\Inetpub\wwwroot\images\logo2.gif" bgColor="#ffffff"
							colSpan="2">增加车辆信息</TD>
					</TR>
					<TR>
						<TD style="WIDTH: 316px; HEIGHT: 35px" bgColor="#ffcc33">&nbsp;注：*项为必填
							<asp:label id="ErrorMsg" runat="server" Width="192px" ForeColor="Blue" Font-Size="Medium"></asp:label></TD>
						<TD style="HEIGHT: 35px" bgColor="#ffcc33"><FONT face="黑体">开始记录时间</FONT>
							<asp:textbox id="TextBox7" runat="server"></asp:textbox></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 316px" bgColor="#ffffcc">车牌号&nbsp;&nbsp;
							<asp:textbox id="TextBox1" runat="server"></asp:textbox>&nbsp;*</TD>
						<TD bgColor="#ffffcc">发动机号
							<asp:textbox id="TextBox8" runat="server"></asp:textbox></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 316px" bgColor="#ffcc33">
							<P>车辆类型&nbsp;&nbsp;
								<asp:dropdownlist id="DropDownList1" runat="server"></asp:dropdownlist></P>
						</TD>
						<TD bgColor="#ffcc33">车架号
							<asp:textbox id="TextBox9" runat="server"></asp:textbox></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 316px; HEIGHT: 37px" bgColor="#ffffcc">车辆名称
							<asp:dropdownlist id="DropDownList8" runat="server"></asp:dropdownlist></TD>
						<TD style="HEIGHT: 37px" bgColor="#ffffcc">防盗器号
							<asp:textbox id="TextBox10" runat="server"></asp:textbox></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 316px" bgColor="#ffcc33">车辆颜色
							<asp:dropdownlist id="DropDownList2" runat="server"></asp:dropdownlist></TD>
						<TD bgColor="#ffcc33">保险开始时间
							<asp:textbox id="TextBox11" runat="server"></asp:textbox></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 316px; HEIGHT: 52px" bgColor="#ffffcc">车辆状态
							<asp:dropdownlist id="DropDownList3" runat="server"></asp:dropdownlist></TD>
						<TD style="HEIGHT: 11px" vAlign="middle" bgColor="#ffffcc">保险结束时间
							<asp:textbox id="TextBox12" runat="server"></asp:textbox></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 316px" bgColor="#ffcc33">业务部编号
							<asp:dropdownlist id="DropDownList4" runat="server"></asp:dropdownlist></TD>
						<TD bgColor="#ffcc33">保险号
							<asp:textbox id="TextBox13" runat="server"></asp:textbox></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 316px" bgColor="#ffffcc">公里数&nbsp;&nbsp;
							<asp:textbox id="TextBox3" runat="server"></asp:textbox>*</TD>
						<TD bgColor="#ffffcc">保险类型
							<asp:dropdownlist id="DropDownList5" runat="server"></asp:dropdownlist></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 316px" bgColor="#ffcc33">是否有效
							<asp:dropdownlist id="DropDownList9" runat="server">
								<asp:ListItem Value="0" Selected="True">是</asp:ListItem>
								<asp:ListItem Value="1">否</asp:ListItem>
							</asp:dropdownlist></TD>
						<TD bgColor="#ffcc33">保险公司
							<asp:dropdownlist id="DropDownList6" runat="server"></asp:dropdownlist></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 316px; HEIGHT: 22px" bgColor="#ffffcc">记录时间
							<asp:textbox id="TextBox5" runat="server"></asp:textbox></TD>
						<TD style="HEIGHT: 22px" bgColor="#ffffcc">油类型
							<asp:dropdownlist id="DropDownList7" runat="server"></asp:dropdownlist></TD>
					</TR>
					<TR>
						<TD bgColor="#ffcc33" colSpan="2">
							<P>&nbsp; 备注&nbsp;&nbsp;&nbsp;&nbsp;
								<asp:textbox id="TextBox6" runat="server"></asp:textbox></P>
						</TD>
					</TR>
				</TABLE>
			</FONT>
			<asp:button id="Button3" style="Z-INDEX: 102; LEFT: 144px; POSITION: absolute; TOP: 560px" runat="server"
				Text="添加" Width="72px" onclick="Button3_Click"></asp:button></form>
	</body>
</HTML>
