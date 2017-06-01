<%@ Reference Page="~/trade/jiesuan.aspx" %>
<%@ Page language="c#" Inherits="cartrade.modify" CodeFile="modify.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>modify</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body background="..\logo2.gif">
		<form id="Form1" method="post" runat="server">
			<FONT face="黑体">
				<asp:datagrid id="DataGrid1" style="Z-INDEX: 101; LEFT: 8px; POSITION: absolute; TOP: 256px" runat="server"
					OnPageIndexChanged="PageChanger" HorizontalAlign="Justify" PageSize="5" AllowPaging="True"
					AutoGenerateColumns="False" Height="466px" Width="945px" Font-Names="Arial" Font-Size="X-Small">
					<SelectedItemStyle Font-Size="X-Small" Font-Names="楷体_GB2312"></SelectedItemStyle>
					<EditItemStyle Font-Size="X-Small" Font-Names="楷体_GB2312"></EditItemStyle>
					<AlternatingItemStyle Font-Size="X-Small" Font-Names="Arial" HorizontalAlign="Center" BackColor="#FFCC33"></AlternatingItemStyle>
					<ItemStyle Font-Size="X-Small" Font-Names="Arial" HorizontalAlign="Center" BackColor="#FFFFCC"></ItemStyle>
					<HeaderStyle Font-Size="X-Small" Font-Names="Arial" Font-Bold="True" HorizontalAlign="Center"
						VerticalAlign="Middle" BackColor="#FFCC33"></HeaderStyle>
					<FooterStyle Font-Size="X-Small" Font-Names="楷体_GB2312" HorizontalAlign="Center" VerticalAlign="Middle"
						BackColor="FloralWhite"></FooterStyle>
					<Columns>
						<asp:HyperLinkColumn Text="修改" DataNavigateUrlField="tradeid" DataNavigateUrlFormatString="edit.aspx?tradeid={0}"
							HeaderText="更改信息"></asp:HyperLinkColumn>
						<asp:HyperLinkColumn Text="删除" DataNavigateUrlField="tradeid" DataNavigateUrlFormatString="delete.aspx?tradeid={0}"
							HeaderText="删除信息"></asp:HyperLinkColumn>
						<asp:HyperLinkColumn Text="结算" Target="_parent" DataNavigateUrlField="tradeid" DataNavigateUrlFormatString="jiesuan.aspx?tradeid={0}"
							HeaderText="结算"></asp:HyperLinkColumn>
						<asp:BoundColumn DataField="tradeid" SortExpression="tradeid" HeaderText="合同号"></asp:BoundColumn>
						<asp:BoundColumn DataField="carid" SortExpression="carid" HeaderText="车辆号"></asp:BoundColumn>
						<asp:BoundColumn DataField="userid" SortExpression="userid" HeaderText="客户号"></asp:BoundColumn>
						<asp:BoundColumn DataField="begintime" HeaderText="起租时间"></asp:BoundColumn>
						<asp:BoundColumn DataField="endtime" HeaderText="应还时间"></asp:BoundColumn>
						<asp:BoundColumn DataField="nextpaytime" HeaderText="下次付款时间"></asp:BoundColumn>
						<asp:BoundColumn DataField="usertype" HeaderText="用户类型"></asp:BoundColumn>
						<asp:BoundColumn DataField="insurename" HeaderText="担保人姓名"></asp:BoundColumn>
						<asp:BoundColumn DataField="insureaddress" HeaderText="担保人地址"></asp:BoundColumn>
						<asp:BoundColumn DataField="insurephone" HeaderText="担保人电话"></asp:BoundColumn>
						<asp:BoundColumn DataField="paytype" HeaderText="付款类型"></asp:BoundColumn>
						<asp:BoundColumn DataField="rcdtime" HeaderText="合同纪录时间"></asp:BoundColumn>
						<asp:BoundColumn DataField="operid" HeaderText="操作员号"></asp:BoundColumn>
						<asp:BoundColumn DataField="jiesuan" HeaderText="结算"></asp:BoundColumn>
						<asp:BoundColumn DataField="netpay" HeaderText="纯收入"></asp:BoundColumn>
						<asp:BoundColumn DataField="unitpay" HeaderText="每日租金"></asp:BoundColumn>
						<asp:BoundColumn DataField="subpoint" HeaderText="业务部号"></asp:BoundColumn>
						<asp:BoundColumn DataField="ownpay" HeaderText="欠款数"></asp:BoundColumn>
						<asp:BoundColumn DataField="jiesuantime" HeaderText="结算时间"></asp:BoundColumn>
						<asp:BoundColumn DataField="paytime" HeaderText="付款日期"></asp:BoundColumn>
						<asp:BoundColumn DataField="proyajin" HeaderText="预付押金"></asp:BoundColumn>
						<asp:BoundColumn DataField="prozujin" HeaderText="预付租金"></asp:BoundColumn>
						<asp:BoundColumn DataField="moneychangereason" HeaderText="租金变动原因"></asp:BoundColumn>
						<asp:BoundColumn DataField="checknum" HeaderText="支票号"></asp:BoundColumn>
						<asp:BoundColumn DataField="note" HeaderText="备注"></asp:BoundColumn>
					</Columns>
					<PagerStyle VerticalAlign="Middle" NextPageText="下一页" Font-Size="X-Small" Font-Names="Arial"
						PrevPageText="上一页" HorizontalAlign="Center" BackColor="FloralWhite"></PagerStyle>
				</asp:datagrid></FONT><asp:label id="Message" style="Z-INDEX: 102; LEFT: 256px; POSITION: absolute; TOP: 208px" runat="server"
				Width="464px" Font-Size="X-Small" Font-Bold="True"></asp:label>
			<asp:RadioButton id="RadioButton1" style="Z-INDEX: 103; LEFT: 232px; POSITION: absolute; TOP: 72px"
				runat="server" Text="按车辆号查询" GroupName="query" Font-Size="X-Small"></asp:RadioButton>
			<asp:TextBox id="TextBox1" style="Z-INDEX: 104; LEFT: 416px; POSITION: absolute; TOP: 128px"
				runat="server"></asp:TextBox>
			<asp:Button id="Button1" style="Z-INDEX: 105; LEFT: 640px; POSITION: absolute; TOP: 72px" runat="server"
				Width="88px" Text="查询" onclick="Button1_Click"></asp:Button>
			<asp:RadioButton id="RadioButton2" style="Z-INDEX: 106; LEFT: 232px; POSITION: absolute; TOP: 112px"
				runat="server" Text="按合同号查询" GroupName="query" Font-Size="X-Small"></asp:RadioButton>
			<asp:RadioButton id="RadioButton3" style="Z-INDEX: 107; LEFT: 232px; POSITION: absolute; TOP: 152px"
				runat="server" Text="按客户号查询" GroupName="query" Font-Size="X-Small"></asp:RadioButton>
			<asp:Button id="Button2" style="Z-INDEX: 108; LEFT: 640px; POSITION: absolute; TOP: 112px" runat="server"
				Width="88px" Text="浏览全部" onclick="Button2_Click"></asp:Button>
			<asp:Button id="Button3" style="Z-INDEX: 109; LEFT: 640px; POSITION: absolute; TOP: 152px" runat="server"
				Width="88px" Text="高级检索" onclick="Button3_Click"></asp:Button>
			<asp:Label id="Label1" style="Z-INDEX: 110; LEFT: 416px; POSITION: absolute; TOP: 8px" runat="server"
				Font-Size="Large" ForeColor="Black" Font-Bold="True">查询租赁合同</asp:Label>
			<asp:Label id="Label2" style="Z-INDEX: 111; LEFT: 416px; POSITION: absolute; TOP: 96px" runat="server"
				Font-Size="Small">输入查询内容</asp:Label>
			<asp:Label id="a" style="Z-INDEX: 112; LEFT: 424px; POSITION: absolute; TOP: 816px" runat="server"></asp:Label></form>
	</body>
</HTML>
