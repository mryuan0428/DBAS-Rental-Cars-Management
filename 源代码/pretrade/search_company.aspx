<%@ Page language="c#" Inherits="WebApplication1.search_company1" CodeFile="search_company.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>search_all_person</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body background="..\logo2.gif">
		<form id="Form1" method="post" runat="server">
			<asp:DataGrid id="DataGrid1" style="Z-INDEX: 101; LEFT: 8px; POSITION: absolute; TOP: 136px" runat="server"
				BorderStyle="None" BorderWidth="1px" BackColor="White" CellPadding="4" AutoGenerateColumns="False"
				PageSize="4" AllowPaging="True" Font-Size="Medium" HorizontalAlign="Center" Width="962px">
				<SelectedItemStyle Font-Bold="True" ForeColor="#CCFF99" BackColor="#009999"></SelectedItemStyle>
				<AlternatingItemStyle Font-Size="X-Small" Font-Names="Arial" HorizontalAlign="Center" BackColor="#FFCC33"></AlternatingItemStyle>
				<ItemStyle Font-Size="X-Small" Font-Names="Arial" HorizontalAlign="Center" ForeColor="Black"
					BackColor="#FFFFCC"></ItemStyle>
				<HeaderStyle Font-Size="X-Small" Font-Names="Arial" Font-Bold="True" Wrap="False" HorizontalAlign="Center"
					ForeColor="Black" VerticalAlign="Middle" BackColor="#FFCC33"></HeaderStyle>
				<FooterStyle Wrap="False" ForeColor="#003399" BackColor="#99CCCC"></FooterStyle>
				<Columns>
					<asp:BoundColumn DataField="userid_companyinfo" HeaderText="客户编号"></asp:BoundColumn>
					<asp:BoundColumn DataField="name_companyinfo" HeaderText="公司名称"></asp:BoundColumn>
					<asp:BoundColumn DataField="bussinessid_companyinfo" HeaderText="营业执照"></asp:BoundColumn>
					<asp:BoundColumn DataField="capital_companyinfo" HeaderText="公司法人"></asp:BoundColumn>
					<asp:BoundColumn DataField="bank_companyinfo" HeaderText="开户银行"></asp:BoundColumn>
					<asp:BoundColumn DataField="address_companyinfo" HeaderText="公司地址"></asp:BoundColumn>
					<asp:BoundColumn DataField="fax_companyinfo" HeaderText="传真电话"></asp:BoundColumn>
					<asp:BoundColumn DataField="email_companyinfo" HeaderText="公司邮箱"></asp:BoundColumn>
					<asp:BoundColumn DataField="danbaoname_companyinfo" HeaderText="担保人姓名"></asp:BoundColumn>
					<asp:BoundColumn DataField="danbaocardid_companyinfo" HeaderText="担保人证件"></asp:BoundColumn>
					<asp:BoundColumn DataField="member_companyinfo" HeaderText="是否会员"></asp:BoundColumn>
					<asp:BoundColumn DataField="membertype_companyinfo" HeaderText="会员类型"></asp:BoundColumn>
					<asp:BoundColumn DataField="operid_companyinfo" HeaderText="操作员号"></asp:BoundColumn>
					<asp:BoundColumn DataField="memberstart_companyinfo" HeaderText="会员开始时间"></asp:BoundColumn>
					<asp:BoundColumn DataField="memberend_companyinfo" HeaderText="会员结束时间"></asp:BoundColumn>
					<asp:BoundColumn DataField="note_companyinfo" HeaderText="备注"></asp:BoundColumn>
					<asp:BoundColumn DataField="rcdtime_companyinfo" HeaderText="记录时间"></asp:BoundColumn>
					<asp:HyperLinkColumn Text="选择客户" DataNavigateUrlField="userid_companyinfo" DataNavigateUrlFormatString="pretrade.aspx?userid_companyinfo={0}&amp;name_personinfo={0}"
						HeaderText="选择客户"></asp:HyperLinkColumn>
				</Columns>
				<PagerStyle VerticalAlign="Middle" NextPageText="下一页" Font-Size="X-Small" Font-Names="Arial"
					PrevPageText="上一页" HorizontalAlign="Left" BackColor="White"></PagerStyle>
			</asp:DataGrid>
			<asp:Label id="Label1" style="Z-INDEX: 104; LEFT: 392px; POSITION: absolute; TOP: 40px" runat="server"
				Width="201px" Font-Size="Large" ForeColor="Black" Font-Bold="True">选择预订公司客户</asp:Label>
			<asp:Button id="back" style="Z-INDEX: 102; LEFT: 680px; POSITION: absolute; TOP: 496px" runat="server"
				Text="返回" Font-Size="X-Small" onclick="back_Click"></asp:Button>
			<asp:Label id="Message" style="Z-INDEX: 103; LEFT: 88px; POSITION: absolute; TOP: 104px" runat="server"
				Font-Size="X-Small" Font-Bold="True" Font-Names="Arial"></asp:Label>
			<asp:DropDownList id="DropDownList1" style="Z-INDEX: 105; LEFT: 680px; POSITION: absolute; TOP: 96px"
				runat="server">
				<asp:ListItem Value="客户编号">客户编号</asp:ListItem>
				<asp:ListItem Value="公司名称">公司名称</asp:ListItem>
				<asp:ListItem Value="营业执照编号">营业执照编号</asp:ListItem>
			</asp:DropDownList>
			<asp:TextBox id="find" style="Z-INDEX: 106; LEFT: 816px; POSITION: absolute; TOP: 96px" runat="server"
				Width="74px"></asp:TextBox>
			<asp:Button id="Button1" style="Z-INDEX: 107; LEFT: 912px; POSITION: absolute; TOP: 96px" runat="server"
				ForeColor="Black" Text="查 找" Width="52px" Font-Bold="True" onclick="Button1_Click"></asp:Button></form>
	</body>
</HTML>
