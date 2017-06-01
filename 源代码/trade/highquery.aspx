<%@ Reference Page="~/trade/jiesuan.aspx" %>
<%@ Page language="c#" Inherits="cartrade.highquery" CodeFile="highquery.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>highquery</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body background="file:///C:\Inetpub\wwwroot\HLBD\logo2.gif">
		<form id="Form1" method="post" runat="server">
			<TABLE id="Table1" style="Z-INDEX: 101; LEFT: 208px; WIDTH: 536px; POSITION: absolute; TOP: 72px"
				cellSpacing="1" cellPadding="1" width="536" border="0" height="15">
				<TR>
					<TD style="WIDTH: 125px; HEIGHT: 36px"><FONT face="黑体">请选择检索字段</FONT></TD>
					<TD style="WIDTH: 123px; HEIGHT: 36px">
						<asp:DropDownList id="DropDownList1" runat="server" Width="136px">
							<asp:ListItem Value="0">合同号</asp:ListItem>
							<asp:ListItem Value="1">车辆号</asp:ListItem>
							<asp:ListItem Value="2">客户号</asp:ListItem>
							<asp:ListItem Value="3">操作员号</asp:ListItem>
							<asp:ListItem Value="4">业务部号</asp:ListItem>
							<asp:ListItem Value="5">起租时间</asp:ListItem>
							<asp:ListItem Value="6">应还时间</asp:ListItem>
						</asp:DropDownList></TD>
					<TD style="WIDTH: 137px; HEIGHT: 36px">
						<asp:TextBox id="TextBox1" runat="server" Width="136px"></asp:TextBox></TD>
					<TD style="HEIGHT: 36px">
						<asp:DropDownList id="DropDownList2" runat="server" Width="40px">
							<asp:ListItem Value="0">与</asp:ListItem>
							<asp:ListItem Value="1">或</asp:ListItem>
							<asp:ListItem Value="2">非</asp:ListItem>
						</asp:DropDownList></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 125px; HEIGHT: 36px"><FONT face="黑体">&nbsp;</FONT></TD>
					<TD style="WIDTH: 123px; HEIGHT: 36px">
						<asp:DropDownList id="DropDownList3" runat="server" Width="136px">
							<asp:ListItem Value="0">合同号</asp:ListItem>
							<asp:ListItem Value="1">车辆号</asp:ListItem>
							<asp:ListItem Value="2">客户号</asp:ListItem>
							<asp:ListItem Value="3">操作员号</asp:ListItem>
							<asp:ListItem Value="4">业务部号</asp:ListItem>
							<asp:ListItem Value="5">起租时间</asp:ListItem>
							<asp:ListItem Value="6">应还时间</asp:ListItem>
						</asp:DropDownList></TD>
					<TD style="WIDTH: 137px; HEIGHT: 36px"><FONT face="黑体">
							<asp:TextBox id="TextBox2" runat="server" Width="136px"></asp:TextBox></FONT></TD>
					<TD style="HEIGHT: 36px"><FONT face="黑体">
							<asp:Button id="Button1" runat="server" Width="88px" Text="查询" onclick="Button1_Click"></asp:Button></FONT></TD>
				</TR>
			</TABLE>
			<asp:Label id="Label1" style="Z-INDEX: 102; LEFT: 432px; POSITION: absolute; TOP: 24px" runat="server"
				ForeColor="Black" Font-Bold="True" Font-Size="Large">高级检索</asp:Label>
			<asp:Label id="Message" style="Z-INDEX: 103; LEFT: 248px; POSITION: absolute; TOP: 168px" runat="server"
				Width="520px" Font-Size="X-Small" Font-Bold="True"></asp:Label>
			<asp:DataGrid id="DataGrid1" style="Z-INDEX: 104; LEFT: 8px; POSITION: absolute; TOP: 200px" runat="server"
				OnPageIndexChanged="PageChanger" Width="952px" AutoGenerateColumns="False" AllowPaging="True"
				Height="226px" PageSize="5" Font-Size="X-Small">
				<AlternatingItemStyle Font-Size="X-Small" Font-Names="Arial" HorizontalAlign="Center" BackColor="#FFCC33"></AlternatingItemStyle>
				<ItemStyle Font-Size="X-Small" Font-Names="Arial" HorizontalAlign="Center" BackColor="#FFFFCC"></ItemStyle>
				<HeaderStyle Font-Size="X-Small" Font-Names="黑体" Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle"
					BackColor="#FFCC33"></HeaderStyle>
				<FooterStyle Font-Names="楷体_GB2312" HorizontalAlign="Center" VerticalAlign="Middle" BackColor="FloralWhite"></FooterStyle>
				<Columns>
					<asp:BoundColumn DataField="tradeid" HeaderText="合同号"></asp:BoundColumn>
					<asp:BoundColumn DataField="userid" HeaderText="客户号"></asp:BoundColumn>
					<asp:BoundColumn DataField="carid" HeaderText="车辆号"></asp:BoundColumn>
					<asp:BoundColumn DataField="begintime" HeaderText="启租时间"></asp:BoundColumn>
					<asp:BoundColumn DataField="endtime" HeaderText="应还时间"></asp:BoundColumn>
					<asp:BoundColumn DataField="nextpaytime" HeaderText="下次付款时间"></asp:BoundColumn>
					<asp:BoundColumn DataField="usertype" HeaderText="用户类型"></asp:BoundColumn>
					<asp:BoundColumn DataField="insurename" HeaderText="担保人姓名"></asp:BoundColumn>
					<asp:BoundColumn DataField="insureaddress" HeaderText="担保人地址"></asp:BoundColumn>
					<asp:BoundColumn DataField="insurephone" HeaderText="担保人电话"></asp:BoundColumn>
					<asp:BoundColumn DataField="paytype" HeaderText="付款类型"></asp:BoundColumn>
					<asp:BoundColumn DataField="rcdtime" HeaderText="合同记录时间"></asp:BoundColumn>
					<asp:BoundColumn DataField="operid" HeaderText="操作员序号"></asp:BoundColumn>
					<asp:BoundColumn DataField="jiesuan" HeaderText="是否结算"></asp:BoundColumn>
					<asp:BoundColumn DataField="netpay" HeaderText="纯收入"></asp:BoundColumn>
					<asp:BoundColumn DataField="unitpay" HeaderText="每日租金"></asp:BoundColumn>
					<asp:BoundColumn DataField="subpoint" HeaderText="业务部号"></asp:BoundColumn>
					<asp:BoundColumn DataField="ownpay" HeaderText="欠款数目"></asp:BoundColumn>
					<asp:BoundColumn DataField="jiesuantime" HeaderText="结算时间"></asp:BoundColumn>
					<asp:BoundColumn DataField="paytime" HeaderText="付款日期"></asp:BoundColumn>
					<asp:BoundColumn DataField="proyajin" HeaderText="预付押金"></asp:BoundColumn>
					<asp:BoundColumn DataField="prozujin" HeaderText="预付租金"></asp:BoundColumn>
					<asp:BoundColumn DataField="moneychangereason" HeaderText="租金变动原因"></asp:BoundColumn>
					<asp:BoundColumn DataField="checknum" HeaderText="支票号"></asp:BoundColumn>
					<asp:BoundColumn DataField="note" HeaderText="备注"></asp:BoundColumn>
				</Columns>
				<PagerStyle VerticalAlign="Middle" NextPageText="下一页" Font-Names="楷体_GB2312" PrevPageText="上一页"
					HorizontalAlign="Center" BackColor="FloralWhite"></PagerStyle>
			</asp:DataGrid>
		</form>
	</body>
</HTML>
