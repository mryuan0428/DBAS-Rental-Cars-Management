<%@ Page language="c#" Inherits="client.client.search_all_company" CodeFile="search_all_company.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>search_all_company</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body background="file:///C:\Inetpub\wwwroot\HLBD\logo2.gif">
		<form id="Form1" method="post" runat="server">
			<asp:DataGrid id="DataGrid1" style="Z-INDEX: 101; LEFT: 8px; POSITION: absolute; TOP: 8px" runat="server"
				BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" BackColor="White" CellPadding="4"
				AutoGenerateColumns="False" PageSize="2" AllowPaging="True" Font-Size="X-Small" HorizontalAlign="Center"
				Font-Names="Arial">
				<SelectedItemStyle Font-Size="X-Small" Font-Names="Arial" Font-Bold="True" Wrap="False" HorizontalAlign="Center"
					ForeColor="#CCFF99" VerticalAlign="Middle" BackColor="#009999"></SelectedItemStyle>
				<EditItemStyle Wrap="False"></EditItemStyle>
				<AlternatingItemStyle Wrap="False"></AlternatingItemStyle>
				<ItemStyle Font-Size="X-Small" Font-Names="Arial" Wrap="False" HorizontalAlign="Center" ForeColor="#003399"
					VerticalAlign="Middle" BackColor="White"></ItemStyle>
				<HeaderStyle Font-Size="X-Small" Font-Names="Arial" Font-Bold="True" Wrap="False" HorizontalAlign="Center"
					ForeColor="#CCCCFF" VerticalAlign="Middle" BackColor="#003399"></HeaderStyle>
				<FooterStyle Font-Size="X-Small" Font-Names="Arial" Wrap="False" HorizontalAlign="Center" ForeColor="#003399"
					VerticalAlign="Middle" BackColor="#99CCCC"></FooterStyle>
				<Columns>
					<asp:HyperLinkColumn Text="修改" Target="_self" DataNavigateUrlField="userid_companyinfo" DataNavigateUrlFormatString="edit_company.aspx?userid_companyinfo={0}"
						HeaderText="修改客户信息"></asp:HyperLinkColumn>
					<asp:HyperLinkColumn Text="删除" Target="_self" DataNavigateUrlField="userid_companyinfo" DataNavigateUrlFormatString="del_company.aspx?userid_companyinfo={0}"
						HeaderText="删除客户信息"></asp:HyperLinkColumn>
					<asp:HyperLinkColumn Text="转换" DataNavigateUrlField="userid_companyinfo" DataNavigateUrlFormatString="change_company.aspx?userid_companyinfo={0}"
						HeaderText="客户会员间转换"></asp:HyperLinkColumn>
					<asp:BoundColumn DataField="userid_companyinfo" HeaderText="客户编号"></asp:BoundColumn>
					<asp:BoundColumn DataField="name_companyinfo" HeaderText="客户姓名"></asp:BoundColumn>
					<asp:BoundColumn DataField="mainname_companyinfo" HeaderText="主要负责人姓名"></asp:BoundColumn>
					<asp:BoundColumn DataField="bussinessid_companyinfo" HeaderText="营业执照号码"></asp:BoundColumn>
					<asp:BoundColumn DataField="address_companyinfo" HeaderText="公司地址"></asp:BoundColumn>
					<asp:BoundColumn DataField="phone_companyinfo" HeaderText="电话号码"></asp:BoundColumn>
					<asp:BoundColumn DataField="mobilephone_companyinfo" HeaderText="主要负责人手机号码"></asp:BoundColumn>
					<asp:BoundColumn DataField="fax_companyinfo" HeaderText="传真号码"></asp:BoundColumn>
					<asp:BoundColumn DataField="email_companyinfo" HeaderText="电子邮箱"></asp:BoundColumn>
					<asp:BoundColumn DataField="operid_companyinfo" HeaderText="操作员号码"></asp:BoundColumn>
					<asp:BoundColumn DataField="subpoint_companyinfo" HeaderText="业务部号码"></asp:BoundColumn>
					<asp:BoundColumn DataField="member_companyinfo" HeaderText="是否会员"></asp:BoundColumn>
					<asp:BoundColumn DataField="memberid_companyinfo" HeaderText="会员编号"></asp:BoundColumn>
					<asp:BoundColumn DataField="membertype_companyinfo" HeaderText="会员类型"></asp:BoundColumn>
					<asp:BoundColumn DataField="memberstart_companyinfo" HeaderText="会员开始时间"></asp:BoundColumn>
					<asp:BoundColumn DataField="memberend_companyinfo" HeaderText="会员结束时间"></asp:BoundColumn>
					<asp:BoundColumn DataField="note_companyinfo" HeaderText="备注"></asp:BoundColumn>
				</Columns>
				<PagerStyle VerticalAlign="Middle" NextPageText="下一页" Font-Size="X-Small" Font-Names="Arial"
					PrevPageText="上一页" HorizontalAlign="Left" ForeColor="#330099" BackColor="#FFFFCC" Wrap="False"></PagerStyle>
			</asp:DataGrid>
			<asp:Label id="Label1" style="Z-INDEX: 109; LEFT: 16px; POSITION: absolute; TOP: 472px" runat="server"
				Font-Names="Arial">查询指定编号客户</asp:Label>
			<asp:TextBox id="TextBox1" style="Z-INDEX: 107; LEFT: 160px; POSITION: absolute; TOP: 472px"
				runat="server" Width="120px"></asp:TextBox>
			<asp:Button id="search" style="Z-INDEX: 108; LEFT: 304px; POSITION: absolute; TOP: 472px" runat="server"
				Text="查询" onclick="search_Click"></asp:Button>
			<asp:Label id="Message" style="Z-INDEX: 102; LEFT: 264px; POSITION: absolute; TOP: 432px" runat="server"
				Font-Size="X-Small" Font-Names="Arial"></asp:Label>
			<asp:Button id="back" style="Z-INDEX: 103; LEFT: 184px; POSITION: absolute; TOP: 512px" runat="server"
				Text="返回" onclick="back_Click"></asp:Button>
			<asp:Button id="add" style="Z-INDEX: 104; LEFT: 16px; POSITION: absolute; TOP: 512px" runat="server"
				Text="添加新客户" onclick="add_Click"></asp:Button>
			<asp:RadioButtonList id="NavigateType" style="Z-INDEX: 105; LEFT: 16px; POSITION: absolute; TOP: 424px"
				runat="server" RepeatDirection="Horizontal" Width="232px" ForeColor="Red" AutoPostBack="True" Font-Size="X-Small"
				Font-Names="Arial" onselectedindexchanged="NavigateType_SelectedIndexChanged">
				<asp:ListItem Value="1" Selected="True">文字导航按钮</asp:ListItem>
				<asp:ListItem Value="2">数字导航按钮</asp:ListItem>
			</asp:RadioButtonList>
		</form>
	</body>
</HTML>
