<%@ Page language="c#" Codebehind="driver3.aspx.cs" AutoEventWireup="false" Inherits="WebApplication1.driver" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>driver</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<FONT face="宋体">
				<asp:datagrid id="DataGrid1" style="Z-INDEX: 100; LEFT: 104px; POSITION: absolute; TOP: 176px"
					runat="server" AutoGenerateColumns="False" Width="758px" CellSpacing="2" CellPadding="1" BorderStyle="Ridge"
					BorderColor="#C0C0FF" BackColor="Transparent" DataMember="driver">
					<EditItemStyle Font-Names="Arial" ForeColor="Transparent"></EditItemStyle>
					<ItemStyle Font-Size="Medium" Font-Names="楷体_GB2312" HorizontalAlign="Center" ForeColor="White"
						VerticalAlign="Bottom" BackColor="#8080FF"></ItemStyle>
					<HeaderStyle Font-Names="Arial Narrow" Font-Bold="True" HorizontalAlign="Center" ForeColor="#8080FF"></HeaderStyle>
					<FooterStyle HorizontalAlign="Center"></FooterStyle>
					<Columns>
						<asp:BoundColumn DataField="driverid" HeaderText="司机编号"></asp:BoundColumn>
						<asp:BoundColumn DataField="name_driver" HeaderText="司机姓名"></asp:BoundColumn>
						<asp:BoundColumn DataField="employtime_driver" HeaderText="从业时间"></asp:BoundColumn>
						<asp:BoundColumn DataField="drivetimes_driver" HeaderText="出车次数"></asp:BoundColumn>
						<asp:BoundColumn DataField="accidenttimes_driver" HeaderText="事故次数"></asp:BoundColumn>
						<asp:BoundColumn DataField="mobilephone_driver" HeaderText="电话号码"></asp:BoundColumn>
						<asp:HyperLinkColumn Text="就要他/她" DataNavigateUrlField="driverid" DataNavigateUrlFormatString="pretrade.aspx?driverid={0}"
							HeaderText="返回值"></asp:HyperLinkColumn>
					</Columns>
				</asp:datagrid><asp:label id="Message" style="Z-INDEX: 123; LEFT: 104px; POSITION: absolute; TOP: 376px" runat="server"
					Width="744px" ForeColor="blue"></asp:label><asp:label id="Label8" style="Z-INDEX: 122; LEFT: 112px; POSITION: absolute; TOP: 560px" runat="server"
					Width="114px" Font-Bold="True" ForeColor="#00C000" Font-Size="X-Small">输入要修改的内容</asp:label><asp:label id="Label2" style="Z-INDEX: 121; LEFT: 112px; POSITION: absolute; TOP: 504px" runat="server"
					Width="114px" Font-Bold="True" ForeColor="#00C000" Font-Size="X-Small">输入要修改的人员</asp:label><asp:label id="Label5" style="Z-INDEX: 120; LEFT: 248px; POSITION: absolute; TOP: 640px" runat="server"
					ForeColor="#00C000" Font-Size="Small" Font-Names="华文行楷">事故次数</asp:label><asp:label id="Label9" style="Z-INDEX: 119; LEFT: 248px; POSITION: absolute; TOP: 600px" runat="server"
					ForeColor="#00C000" Font-Size="Small" Font-Names="华文行楷">出车次数</asp:label><asp:textbox id="txt4" style="Z-INDEX: 117; LEFT: 328px; POSITION: absolute; TOP: 592px" runat="server"
					BorderStyle="Dashed" BorderColor="#00C000"></asp:textbox><asp:textbox id="txt3" style="Z-INDEX: 108; LEFT: 328px; POSITION: absolute; TOP: 552px" runat="server"
					BorderStyle="Dashed" BorderColor="#00C000"></asp:textbox><asp:textbox id="txt5" style="Z-INDEX: 111; LEFT: 328px; POSITION: absolute; TOP: 632px" runat="server"
					BorderStyle="Dashed" BorderColor="#00C000"></asp:textbox><asp:button id="Button7" style="Z-INDEX: 113; LEFT: 528px; POSITION: absolute; TOP: 552px" runat="server"
					Width="56px" BorderColor="Green" BackColor="#00C000" Font-Bold="True" ForeColor="White" Text="修 改"></asp:button><asp:textbox id="txt2" style="Z-INDEX: 106; LEFT: 328px; POSITION: absolute; TOP: 504px" runat="server"
					BorderStyle="Dashed" BorderColor="#00C000"></asp:textbox><asp:button id="Button6" style="Z-INDEX: 107; LEFT: 528px; POSITION: absolute; TOP: 504px" runat="server"
					Width="56px" BorderColor="Green" BackColor="#00C000" Font-Bold="True" ForeColor="White" Text="查 找"></asp:button><asp:label id="Label1" style="Z-INDEX: 116; LEFT: 112px; POSITION: absolute; TOP: 456px" runat="server"
					Width="112px" Font-Bold="True" ForeColor="#00C000" Font-Size="X-Small">输入要删除的姓名</asp:label><asp:textbox id="txt1" style="Z-INDEX: 101; LEFT: 328px; POSITION: absolute; TOP: 456px" runat="server"
					BorderStyle="Dashed" BorderColor="#00C000"></asp:textbox><asp:button id="Button5" style="Z-INDEX: 104; LEFT: 528px; POSITION: absolute; TOP: 456px" runat="server"
					Width="56px" BorderColor="Green" BackColor="#00C000" Font-Bold="True" ForeColor="White" Font-Size="Smaller" Text="删 除"></asp:button><asp:radiobutton id="RadioButton1" style="Z-INDEX: 103; LEFT: 96px; POSITION: absolute; TOP: 48px"
					runat="server" ForeColor="#8080FF" Font-Size="Medium" Font-Names="华文行楷" Text="司机编号" GroupName="selectbutton"></asp:radiobutton><asp:radiobutton id="RadioButton2" style="Z-INDEX: 105; LEFT: 96px; POSITION: absolute; TOP: 80px"
					runat="server" ForeColor="#8080FF" Font-Size="Medium" Font-Names="华文行楷" Text="司机姓名" GroupName="selectbutton"></asp:radiobutton><asp:textbox id="TextBox1" style="Z-INDEX: 109; LEFT: 104px; POSITION: absolute; TOP: 128px"
					runat="server" BorderStyle="Dotted" BorderColor="#8080FF"></asp:textbox><asp:button id="chaxun" style="Z-INDEX: 110; LEFT: 336px; POSITION: absolute; TOP: 128px" runat="server"
					BackColor="#C0C0FF" Font-Bold="True" ForeColor="White" Text="查 询"></asp:button><asp:button id="browse" style="Z-INDEX: 112; LEFT: 416px; POSITION: absolute; TOP: 128px" runat="server"
					BorderColor="White" BackColor="#C0C0FF" Font-Bold="True" ForeColor="White" Font-Names="Arial" Text="浏 览"></asp:button><asp:button id="Button3" style="Z-INDEX: 114; LEFT: 336px; POSITION: absolute; TOP: 88px" runat="server"
					BackColor="#C0C0FF" ForeColor="White" Text="按事故次数排序"></asp:button><asp:button id="Button4" style="Z-INDEX: 115; LEFT: 336px; POSITION: absolute; TOP: 48px" runat="server"
					BackColor="#C0C0FF" ForeColor="White" Text="按出车次数排序"></asp:button>
				<asp:Label id="Label4" style="Z-INDEX: 118; LEFT: 248px; POSITION: absolute; TOP: 560px" runat="server"
					Font-Size="Small" ForeColor="#00C000" Font-Names="华文行楷">司机编号</asp:Label></FONT></form>
	</body>
</HTML>
