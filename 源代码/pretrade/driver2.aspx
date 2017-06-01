<%@ Page language="c#" Inherits="WebApplication1.Migrated_driver" CodeFile="driver2.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>driver</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body background="..\logo2.gif">
		<form id="Form1" method="post" runat="server">
			<FONT face="黑体">
				<asp:datagrid id=DataGrid1 style="Z-INDEX: 101; LEFT: 120px; POSITION: absolute; TOP: 240px" runat="server" AutoGenerateColumns="False" Width="758px" CellSpacing="2" CellPadding="1" BackColor="Transparent" DataMember="driver" DataSource="<%# dataSet11 %>" Font-Names="Arial" onselectedindexchanged="DataGrid1_SelectedIndexChanged">
					<EditItemStyle Font-Names="Arial" ForeColor="Transparent"></EditItemStyle>
					<AlternatingItemStyle Font-Size="X-Small" Font-Names="Arial" HorizontalAlign="Center" BackColor="#FFCC33"></AlternatingItemStyle>
					<ItemStyle Font-Size="X-Small" Font-Names="Arial" HorizontalAlign="Center" ForeColor="Black"
						VerticalAlign="Bottom" BackColor="#FFFFCC"></ItemStyle>
					<HeaderStyle Font-Size="X-Small" Font-Names="Arial Narrow" Font-Bold="True" HorizontalAlign="Center"
						BackColor="#FFCC33"></HeaderStyle>
					<FooterStyle HorizontalAlign="Center"></FooterStyle>
					<Columns>
						<asp:BoundColumn DataField="driverid" HeaderText="司机编号"></asp:BoundColumn>
						<asp:BoundColumn DataField="name_driver" HeaderText="司机姓名"></asp:BoundColumn>
						<asp:BoundColumn DataField="employtime_driver" HeaderText="从业时间"></asp:BoundColumn>
						<asp:BoundColumn DataField="drivetimes_driver" HeaderText="出车次数"></asp:BoundColumn>
						<asp:BoundColumn DataField="accidenttimes_driver" HeaderText="事故次数"></asp:BoundColumn>
						<asp:BoundColumn DataField="mobilephone_driver" HeaderText="电话号码"></asp:BoundColumn>
					</Columns>
				</asp:datagrid><asp:textbox id="keyword" style="Z-INDEX: 123; LEFT: 128px; POSITION: absolute; TOP: 408px" runat="server"
					BorderStyle="Dotted" BorderColor="Black"></asp:textbox><asp:label id="Label3" style="Z-INDEX: 122; LEFT: 416px; POSITION: absolute; TOP: 32px" runat="server"
					Width="104px" Font-Bold="True" ForeColor="Black" Font-Size="Large">司机信息</asp:label><asp:label id="Label8" style="Z-INDEX: 121; LEFT: 128px; POSITION: absolute; TOP: 568px" runat="server"
					Width="114px" Font-Bold="True" ForeColor="Black" Font-Size="X-Small" Font-Names="Arial">输入要修改的内容</asp:label><asp:label id="Label2" style="Z-INDEX: 120; LEFT: 128px; POSITION: absolute; TOP: 512px" runat="server"
					Width="114px" Font-Bold="True" ForeColor="Black" Font-Size="X-Small" Font-Names="Arial">输入要修改的人员</asp:label><asp:label id="Label5" style="Z-INDEX: 119; LEFT: 264px; POSITION: absolute; TOP: 648px" runat="server"
					ForeColor="Black" Font-Size="X-Small" Font-Names="Arial">事故次数</asp:label><asp:label id="Label9" style="Z-INDEX: 118; LEFT: 264px; POSITION: absolute; TOP: 608px" runat="server"
					ForeColor="Black" Font-Size="X-Small" Font-Names="Arial">出车次数</asp:label><asp:textbox id="txt4" style="Z-INDEX: 116; LEFT: 344px; POSITION: absolute; TOP: 600px" runat="server"
					BorderStyle="Dotted" BorderColor="Black"></asp:textbox><asp:textbox id="txt3" style="Z-INDEX: 108; LEFT: 344px; POSITION: absolute; TOP: 560px" runat="server"
					BorderStyle="Dotted" BorderColor="Black"></asp:textbox><asp:textbox id="txt5" style="Z-INDEX: 110; LEFT: 344px; POSITION: absolute; TOP: 640px" runat="server"
					BorderStyle="Dotted" BorderColor="Black"></asp:textbox><asp:button id="Button7" style="Z-INDEX: 112; LEFT: 544px; POSITION: absolute; TOP: 560px" runat="server"
					Width="56px" Font-Bold="True" ForeColor="Black" Text="修 改" onclick="Button7_Click"></asp:button><asp:textbox id="txt2" style="Z-INDEX: 106; LEFT: 344px; POSITION: absolute; TOP: 512px" runat="server"
					BorderStyle="Dotted" BorderColor="Black"></asp:textbox><asp:button id="Button6" style="Z-INDEX: 107; LEFT: 544px; POSITION: absolute; TOP: 512px" runat="server"
					Width="56px" Font-Bold="True" ForeColor="Black" Text="查 找" onclick="Button6_Click"></asp:button><asp:label id="Label1" style="Z-INDEX: 115; LEFT: 128px; POSITION: absolute; TOP: 464px" runat="server"
					Width="112px" Font-Bold="True" ForeColor="Black" Font-Size="X-Small" Font-Names="Arial">输入要删除的姓名</asp:label><asp:textbox id="txt1" style="Z-INDEX: 102; LEFT: 344px; POSITION: absolute; TOP: 464px" runat="server"
					BorderStyle="Dotted" BorderColor="Black"></asp:textbox><asp:button id="Button5" style="Z-INDEX: 104; LEFT: 544px; POSITION: absolute; TOP: 464px" runat="server"
					Width="56px" Font-Bold="True" ForeColor="Black" Font-Size="Smaller" Text="删 除" onclick="Button5_Click"></asp:button><asp:radiobutton id="RadioButton1" style="Z-INDEX: 103; LEFT: 120px; POSITION: absolute; TOP: 112px"
					runat="server" ForeColor="Black" Font-Size="Small" Font-Names="黑体" Text="司机编号" GroupName="selectbutton"></asp:radiobutton><asp:radiobutton id="RadioButton2" style="Z-INDEX: 105; LEFT: 120px; POSITION: absolute; TOP: 144px"
					runat="server" ForeColor="Black" Font-Size="Small" Font-Names="黑体" Text="司机姓名" GroupName="selectbutton"></asp:radiobutton><asp:textbox id="TextBox1" style="Z-INDEX: 109; LEFT: 120px; POSITION: absolute; TOP: 192px"
					runat="server" BorderStyle="Dotted" BorderColor="Black"></asp:textbox><asp:button id="browse" style="Z-INDEX: 111; LEFT: 432px; POSITION: absolute; TOP: 192px" runat="server"
					BorderColor="White" Font-Bold="True" ForeColor="Black" Font-Names="Arial" Text="浏 览" onclick="Button2_Click"></asp:button>
				<asp:Button id="Button3" style="Z-INDEX: 113; LEFT: 352px; POSITION: absolute; TOP: 152px" runat="server"
					ForeColor="Black" Text="按事故次数排序" onclick="Button3_Click"></asp:Button>
				<asp:Button id="Button4" style="Z-INDEX: 114; LEFT: 352px; POSITION: absolute; TOP: 112px" runat="server"
					ForeColor="Black" Text="按出车次数排序" onclick="Button4_Click"></asp:Button>
				<asp:Label id="Label4" style="Z-INDEX: 117; LEFT: 264px; POSITION: absolute; TOP: 568px" runat="server"
					Font-Size="X-Small" ForeColor="Black" Font-Names="Arial">司机编号</asp:Label>
				<asp:Button id="Button1" style="Z-INDEX: 124; LEFT: 344px; POSITION: absolute; TOP: 408px" runat="server"
					Width="88px" Text="操作验证" Font-Bold="True" onclick="Button1_Click"></asp:Button>
				<asp:Button id="btnquery" style="Z-INDEX: 125; LEFT: 352px; POSITION: absolute; TOP: 192px"
					runat="server" Text="查 询" Font-Bold="True" onclick="btnquery_Click"></asp:Button></FONT></form>
	</body>
</HTML>
