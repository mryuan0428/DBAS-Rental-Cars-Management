<%@ Page language="c#" Inherits="WebApplication1.browsepretrade" CodeFile="browsepretrade.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>browsepretrade</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<FONT face="黑体">
				<asp:DataGrid id="DataGrid1" style="Z-INDEX: 100; LEFT: 16px; POSITION: absolute; TOP: 72px" runat="server"
					AutoGenerateColumns="False" AllowPaging="True" Width="952px" Height="384px" PageSize="7" onselectedindexchanged="DataGrid1_SelectedIndexChanged">
					<AlternatingItemStyle Font-Size="X-Small" Font-Names="Arial" HorizontalAlign="Center" BackColor="#FFCC33"></AlternatingItemStyle>
					<ItemStyle Font-Size="X-Small" Font-Names="Arial" HorizontalAlign="Center" BackColor="#FFFFCC"></ItemStyle>
					<HeaderStyle Font-Size="X-Small" Font-Names="黑体" Font-Bold="True" HorizontalAlign="Center" BackColor="#FFCC33"></HeaderStyle>
					<Columns>
						<asp:BoundColumn DataField="id_pretrade" SortExpression="id_pretrade" HeaderText="合同号"></asp:BoundColumn>
						<asp:BoundColumn DataField="userid" SortExpression="userid" HeaderText="客户编号"></asp:BoundColumn>
						<asp:BoundColumn DataField="username_pretrade" SortExpression="username_pretrade" HeaderText="客户名称"></asp:BoundColumn>
						<asp:BoundColumn DataField="persontype_pretrade" SortExpression="persontype_pretrade" HeaderText="客户类型"></asp:BoundColumn>
						<asp:BoundColumn DataField="carid" SortExpression="carid" HeaderText="车牌号"></asp:BoundColumn>
						<asp:BoundColumn DataField="carname_pretrade" SortExpression="carname_pretrade" HeaderText="车辆名称"></asp:BoundColumn>
						<asp:BoundColumn DataField="driverid" SortExpression="driverid" HeaderText="司机编号"></asp:BoundColumn>
						<asp:BoundColumn DataField="driver_pretrade" HeaderText="司机姓名"></asp:BoundColumn>
						<asp:BoundColumn DataField="carmodel_pretrade" SortExpression="carmodel_pretrade" HeaderText="租车模式"></asp:BoundColumn>
						<asp:BoundColumn DataField="begintime_pretrade" SortExpression="begintime_pretrade" HeaderText="租车时间"></asp:BoundColumn>
						<asp:BoundColumn DataField="endtime_pretrade" SortExpression="endtime_pretrade" HeaderText="还车时间"></asp:BoundColumn>
						<asp:BoundColumn DataField="deposit_pretrade" SortExpression="deposit_pretrade" HeaderText="押金"></asp:BoundColumn>
						<asp:BoundColumn DataField="opername_pretrade" SortExpression="opername_pretrade" HeaderText="操作员"></asp:BoundColumn>
						<asp:BoundColumn DataField="rcdtime_pretrade" SortExpression="rcdtime_pretrade" HeaderText="登记时间"></asp:BoundColumn>
						<asp:BoundColumn DataField="note_pretrade" SortExpression="note_pretrade" HeaderText="备注"></asp:BoundColumn>
						<asp:HyperLinkColumn Text="转正" DataNavigateUrlField="id_pretrade" DataNavigateUrlFormatString="../trade/protrade-newtrade.aspx?id_pretrade={0}"
							HeaderText="转为正式合同"></asp:HyperLinkColumn>
						<asp:HyperLinkColumn Text="修改" DataNavigateUrlField="id_pretrade" DataNavigateUrlFormatString="edit_pretrade.aspx?id_pretrade={0}"
							HeaderText="编辑"></asp:HyperLinkColumn>
						<asp:HyperLinkColumn Text="删除" DataNavigateUrlField="id_pretrade" DataNavigateUrlFormatString="delete_pretrade.aspx?id_pretrade={0}"
							HeaderText="删除"></asp:HyperLinkColumn>
					</Columns>
					<PagerStyle NextPageText="下一页" Font-Size="X-Small" Font-Names="Arial" PrevPageText="上一页"></PagerStyle>
				</asp:DataGrid>
				<asp:TextBox id="find" style="Z-INDEX: 112; LEFT: 776px; POSITION: absolute; TOP: 32px" runat="server"
					Width="74px"></asp:TextBox>
				<asp:Button id="FindPretrade" style="Z-INDEX: 107; LEFT: 904px; POSITION: absolute; TOP: 32px"
					runat="server" Width="52px" Text="查 找" ForeColor="Black" Font-Bold="True" onclick="FindPretrade_Click"></asp:Button>
				<asp:DropDownList id="DropDownList1" style="Z-INDEX: 105; LEFT: 648px; POSITION: absolute; TOP: 32px"
					runat="server">
					<asp:ListItem Value="合同编号">合同编号</asp:ListItem>
					<asp:ListItem Value="客户编号">客户编号</asp:ListItem>
					<asp:ListItem Value="车辆编号">车辆编号</asp:ListItem>
				</asp:DropDownList>
				<asp:Button id="browse" style="Z-INDEX: 111; LEFT: 192px; POSITION: absolute; TOP: 32px" runat="server"
					ForeColor="Black" Font-Names="Arial" Text="浏 览" onclick="browse_Click"></asp:Button>
				<asp:RadioButtonList id="NavigateType" style="Z-INDEX: 104; LEFT: 360px; POSITION: absolute; TOP: 488px"
					runat="server" ForeColor="Black" RepeatDirection="Horizontal" AutoPostBack="True" Font-Names="Arial"
					Font-Size="X-Small" onselectedindexchanged="NavigateType_SelectedIndexChanged">
					<asp:ListItem Value="1" Selected="True">文字导航按钮</asp:ListItem>
					<asp:ListItem Value="2">数字导航按钮</asp:ListItem>
				</asp:RadioButtonList>
				<asp:Label id="Message" style="Z-INDEX: 102; LEFT: 72px; POSITION: absolute; TOP: 552px" runat="server"
					Width="788px" ForeColor="Black" Font-Bold="True" Font-Names="Arial" Font-Size="X-Small"></asp:Label>
				<asp:DropDownList id="kind" style="Z-INDEX: 103; LEFT: 56px; POSITION: absolute; TOP: 32px" runat="server"
					AutoPostBack="True" onselectedindexchanged="kind_SelectedIndexChanged"></asp:DropDownList></FONT>
		</form>
	</body>
</HTML>
