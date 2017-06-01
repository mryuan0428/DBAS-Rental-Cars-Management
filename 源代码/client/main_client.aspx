<%@ Page language="c#" Inherits="client.client.main_client" CodeFile="main_client.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>客户信息管理</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<script language="JavaScript">
function show_hide(img,line)
{
	if (line.style.display=="none")
	{
		line.style.display=""
		img.src="images/minus.gif"
	}
	else
	{
		line.style.display="none"
		img.src="images/plus.gif"
	}
		
}
		</script>
	</HEAD>
	<body background="..\logo2.gif">
		<FORM id="Form1" method="post" runat="server">
			<FONT face="黑体">
				<TABLE id="Table1" cellSpacing="1" cellPadding="1" width="416" border="0" style="WIDTH: 416px; HEIGHT: 389px">
					<TR>
						<TD style="WIDTH: 132px">
							<asp:HyperLink id="add_person" runat="server" NavigateUrl="client_add_person.aspx" Target="_self">添加个人客户</asp:HyperLink></TD>
						<TD style="WIDTH: 131px"></TD>
						<TD><FONT face="宋体"></FONT></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 132px">
							<asp:HyperLink id="add_company" runat="server" NavigateUrl="client_add_company.aspx" Target="_self">添加公司客户</asp:HyperLink></TD>
						<TD style="WIDTH: 131px"></TD>
						<TD></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 132px">
							<asp:LinkButton id="edit_person" runat="server" onclick="edit_person_Click">修改个人客户信息</asp:LinkButton></TD>
						<TD style="WIDTH: 131px">
							<asp:TextBox id="TextBox1" runat="server" Width="128px"></asp:TextBox></TD>
						<TD><FONT face="宋体">
								<asp:Label id="Label1" runat="server" Font-Names="Arial" Font-Size="Small" Font-Bold="True">输入个人客户编号</asp:Label></FONT></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 132px">
							<asp:LinkButton id="edit_company" runat="server" onclick="edit_company_Click">修改公司客户信息</asp:LinkButton></TD>
						<TD style="WIDTH: 131px">
							<asp:TextBox id="TextBox2" runat="server" Width="128px"></asp:TextBox></TD>
						<TD><FONT face="宋体">
								<asp:Label id="Label2" runat="server" Font-Names="Arial" Font-Size="Small" Font-Bold="True">输入公司客户编号</asp:Label></FONT></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 132px">
							<asp:LinkButton id="del_person" runat="server" onclick="del_person_Click">删除个人客户信息</asp:LinkButton></TD>
						<TD style="WIDTH: 131px">
							<asp:TextBox id="TextBox3" runat="server" Width="128px"></asp:TextBox></TD>
						<TD><FONT face="宋体">
								<asp:Label id="Label3" runat="server" Font-Names="Arial" Font-Size="Small" Font-Bold="True">输入个人客户编号</asp:Label></FONT></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 132px">
							<asp:LinkButton id="del_company" runat="server" onclick="del_company_Click">删除公司客户信息</asp:LinkButton></TD>
						<TD style="WIDTH: 131px">
							<asp:TextBox id="TextBox4" runat="server" Width="128px"></asp:TextBox></TD>
						<TD>
							<asp:Label id="Label4" runat="server" Font-Names="Arial" Font-Size="Small" Font-Bold="True">输入公司客户编号</asp:Label></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 132px">
							<asp:LinkButton id="search_person" runat="server" onclick="search_person_Click">查询指定个人信息</asp:LinkButton></TD>
						<TD style="WIDTH: 131px">
							<asp:TextBox id="TextBox5" runat="server" Width="128px"></asp:TextBox></TD>
						<TD>
							<asp:Label id="Label5" runat="server" Font-Names="Arial" Font-Size="Small" Font-Bold="True">输入个人客户编号</asp:Label></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 132px">
							<asp:LinkButton id="search_company" runat="server" onclick="search_company_Click">查询指定公司信息</asp:LinkButton></TD>
						<TD style="WIDTH: 131px">
							<asp:TextBox id="TextBox6" runat="server" Width="128px"></asp:TextBox></TD>
						<TD>
							<asp:Label id="Label6" runat="server" Font-Names="Arial" Font-Size="Small" Font-Bold="True">输入公司客户编号</asp:Label></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 132px">
							<asp:HyperLink id="person_all" runat="server" NavigateUrl="search_all_person.aspx" Target="_self">浏览全部个人信息</asp:HyperLink></TD>
						<TD style="WIDTH: 131px"></TD>
						<TD></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 132px">
							<asp:HyperLink id="company_all" runat="server" NavigateUrl="search_all_company.aspx" Target="_self">浏览全部公司信息</asp:HyperLink></TD>
						<TD style="WIDTH: 131px"></TD>
						<TD></TD>
					</TR>
				</TABLE>
			</FONT>
		</FORM>
	</body>
</HTML>
