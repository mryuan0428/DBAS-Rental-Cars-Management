<%@ Page language="c#" Inherits="WebApplication1.search_company" CodeFile="search_person.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>search_all_person</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body background="../logo2.gif">
		<form id="Form1" method="post" runat="server">
			<asp:DataGrid id="DataGrid1" style="Z-INDEX: 101; LEFT: 8px; POSITION: absolute; TOP: 136px" runat="server"
				BorderStyle="None" BorderWidth="1px" BackColor="White" CellPadding="4" AutoGenerateColumns="False"
				PageSize="4" AllowPaging="True" Font-Size="Medium" HorizontalAlign="Center" Width="962px">
				<SelectedItemStyle Font-Bold="True" ForeColor="#CCFF99" BackColor="#009999"></SelectedItemStyle>
				<AlternatingItemStyle Font-Size="X-Small" Font-Names="Arial" HorizontalAlign="Center" ForeColor="Black"
					BackColor="#FFCC33"></AlternatingItemStyle>
				<ItemStyle Font-Size="X-Small" Font-Names="Arial" HorizontalAlign="Center" ForeColor="Black"
					BackColor="#FFFFCC"></ItemStyle>
				<HeaderStyle Font-Size="X-Small" Font-Names="Arial" Font-Bold="True" Wrap="False" HorizontalAlign="Center"
					ForeColor="Black" VerticalAlign="Middle" BackColor="#FFCC33"></HeaderStyle>
				<FooterStyle Wrap="False" ForeColor="#003399" BackColor="#99CCCC"></FooterStyle>
				<Columns>
					<asp:BoundColumn DataField="userid_personinfo" HeaderText="客户编号"></asp:BoundColumn>
					<asp:BoundColumn DataField="name_personinfo" HeaderText="客户姓名"></asp:BoundColumn>
					<asp:BoundColumn DataField="cardtype_personinfo" HeaderText="证件类型"></asp:BoundColumn>
					<asp:BoundColumn DataField="idcard_personinfo" HeaderText="证件号码"></asp:BoundColumn>
					<asp:BoundColumn DataField="sex_personinfo" HeaderText="性别"></asp:BoundColumn>
					<asp:BoundColumn DataField="driveid_personinfo" HeaderText="驾驶证号码"></asp:BoundColumn>
					<asp:BoundColumn DataField="bank_personinfo" HeaderText="银行名称"></asp:BoundColumn>
					<asp:BoundColumn DataField="depositnum_personinfo" HeaderText="银行卡号码"></asp:BoundColumn>
					<asp:BoundColumn DataField="danwei_personinfo" HeaderText="工作单位"></asp:BoundColumn>
					<asp:BoundColumn DataField="address_personinfo" HeaderText="客户现住址"></asp:BoundColumn>
					<asp:BoundColumn DataField="phone_personinfo" HeaderText="电话号码"></asp:BoundColumn>
					<asp:BoundColumn DataField="danbaoname_personinfo" HeaderText="担保人姓名"></asp:BoundColumn>
					<asp:BoundColumn DataField="member_personinfo" HeaderText="是否会员"></asp:BoundColumn>
					<asp:BoundColumn DataField="memberid_personinfo" HeaderText="会员编号"></asp:BoundColumn>
					<asp:BoundColumn DataField="memberstart_personinfo" HeaderText="会员开始时间"></asp:BoundColumn>
					<asp:BoundColumn DataField="memberend_personinfo" HeaderText="会员结束时间"></asp:BoundColumn>
					<asp:BoundColumn DataField="note_personinfo" HeaderText="备注"></asp:BoundColumn>
					<asp:BoundColumn DataField="rcdtime_personinfo" HeaderText="记录时间"></asp:BoundColumn>
					<asp:HyperLinkColumn Text="选择客户" DataNavigateUrlField="userid_personinfo" DataNavigateUrlFormatString="pretrade.aspx?userid_personinfo={0}&amp;name_personinfo={0}"
						HeaderText="选择客户"></asp:HyperLinkColumn>
				</Columns>
				<PagerStyle VerticalAlign="Middle" NextPageText="下一页" Font-Size="X-Small" PrevPageText="上一页"
					HorizontalAlign="Left" BackColor="White"></PagerStyle>
			</asp:DataGrid>
			<asp:Label id="Label1" style="Z-INDEX: 104; LEFT: 384px; POSITION: absolute; TOP: 40px" runat="server"
				Width="209px" Font-Size="Large" ForeColor="Black" Font-Bold="True">选择预订个人用户</asp:Label>
			<asp:Button id="back" style="Z-INDEX: 102; LEFT: 640px; POSITION: absolute; TOP: 632px" runat="server"
				Text="返回" Font-Size="X-Small" onclick="back_Click"></asp:Button>
			<asp:Label id="Message" style="Z-INDEX: 103; LEFT: 104px; POSITION: absolute; TOP: 96px" runat="server"
				Font-Size="X-Small" Font-Bold="True"></asp:Label>
			<asp:DropDownList id="DropDownList1" style="Z-INDEX: 105; LEFT: 680px; POSITION: absolute; TOP: 88px"
				runat="server">
				<asp:ListItem Value="客户编号">客户编号</asp:ListItem>
				<asp:ListItem Value="客户姓名">客户姓名</asp:ListItem>
				<asp:ListItem Value="证件号码">证件号码</asp:ListItem>
			</asp:DropDownList>
			<asp:TextBox id="find" style="Z-INDEX: 106; LEFT: 792px; POSITION: absolute; TOP: 88px" runat="server"
				Width="74px"></asp:TextBox>
			<asp:Button id="Button1" style="Z-INDEX: 107; LEFT: 896px; POSITION: absolute; TOP: 88px" runat="server"
				ForeColor="Black" Text="查 找" Font-Bold="True" onclick="Button1_Click"></asp:Button></form>
	</body>
</HTML>
