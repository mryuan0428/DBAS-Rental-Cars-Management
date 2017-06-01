<%@ Page language="c#" Inherits="client.client.search_all_person" CodeFile="search_all_person.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>search_all_person</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body background="file:///C:\Inetpub\wwwroot\HLBD\logo2.gif">
		<form id="Form1" method="post" runat="server">
			<asp:DataGrid id="DataGrid1" style="Z-INDEX: 101; LEFT: 8px; POSITION: absolute; TOP: 0px" runat="server"
				BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" BackColor="White" CellPadding="4"
				AutoGenerateColumns="False" PageSize="2" AllowPaging="True" Font-Size="X-Small" HorizontalAlign="Center">
				<SelectedItemStyle Font-Size="X-Small" Font-Names="Arial" Font-Bold="True" Wrap="False" HorizontalAlign="Center"
					ForeColor="#CCFF99" VerticalAlign="Middle" BackColor="#009999"></SelectedItemStyle>
				<EditItemStyle Wrap="False"></EditItemStyle>
				<AlternatingItemStyle Wrap="False"></AlternatingItemStyle>
				<ItemStyle Font-Size="X-Small" Font-Names="Arial" Wrap="False" HorizontalAlign="Center" ForeColor="#003399"
					VerticalAlign="Middle" BackColor="White"></ItemStyle>
				<HeaderStyle Font-Size="X-Small" Font-Names="Arial" Font-Bold="True" Wrap="False" HorizontalAlign="Center"
					ForeColor="#CCCCFF" VerticalAlign="Middle" BackColor="#003399"></HeaderStyle>
				<FooterStyle Wrap="False" ForeColor="#003399" BackColor="#99CCCC"></FooterStyle>
				<Columns>
					<asp:HyperLinkColumn Text="修改" Target="_self" DataNavigateUrlField="userid_personinfo" DataNavigateUrlFormatString="edit_person.aspx?userid_personinfo={0}"
						HeaderText="修改客户信息"></asp:HyperLinkColumn>
					<asp:HyperLinkColumn Text="删除" Target="_self" DataNavigateUrlField="userid_personinfo" DataNavigateUrlFormatString="del_person.aspx?userid_personinfo={0}"
						HeaderText="删除客户信息"></asp:HyperLinkColumn>
					<asp:HyperLinkColumn Text="转换" DataNavigateUrlField="userid_personinfo" DataNavigateUrlFormatString="change_person.aspx?userid_personinfo={0}"
						HeaderText="客户会员间转换"></asp:HyperLinkColumn>
					<asp:BoundColumn DataField="userid_personinfo" HeaderText="客户编号"></asp:BoundColumn>
					<asp:BoundColumn DataField="name_personinfo" HeaderText="客户姓名"></asp:BoundColumn>
					<asp:BoundColumn DataField="sex_personinfo" HeaderText="性别"></asp:BoundColumn>
					<asp:BoundColumn DataField="education_personinfo" HeaderText="教育程度"></asp:BoundColumn>
					<asp:BoundColumn DataField="bank_personinfo" HeaderText="银行名称"></asp:BoundColumn>
					<asp:BoundColumn DataField="depositnum_personinfo" HeaderText="银行卡号码"></asp:BoundColumn>
					<asp:BoundColumn DataField="phone_personinfo" HeaderText="电话号码"></asp:BoundColumn>
					<asp:BoundColumn DataField="mobilephone_personinfo" HeaderText="手机号码"></asp:BoundColumn>
					<asp:BoundColumn DataField="email_personinfo" HeaderText="电子邮箱"></asp:BoundColumn>
					<asp:BoundColumn DataField="operid_personinfo" HeaderText="操作员号码"></asp:BoundColumn>
					<asp:BoundColumn DataField="subpoint_personinfo" HeaderText="业务部号码"></asp:BoundColumn>
					<asp:BoundColumn DataField="member_personinfo" HeaderText="是否会员"></asp:BoundColumn>
					<asp:BoundColumn DataField="memberid_personinfo" HeaderText="会员编号"></asp:BoundColumn>
					<asp:BoundColumn DataField="membertype_personinfo" HeaderText="会员类型"></asp:BoundColumn>
					<asp:BoundColumn DataField="memberstart_personinfo" HeaderText="会员开始时间"></asp:BoundColumn>
					<asp:BoundColumn DataField="memberend_personinfo" HeaderText="会员结束时间"></asp:BoundColumn>
					<asp:BoundColumn DataField="favorite_personinfo" HeaderText="客户爱好"></asp:BoundColumn>
					<asp:BoundColumn DataField="note_personinfo" HeaderText="备注"></asp:BoundColumn>
					<asp:HyperLinkColumn Text="查看照片" Target="_blank" DataNavigateUrlField="userid_personinfo" DataNavigateUrlFormatString="photo_browser.aspx?userid_personinfo={0}"
						HeaderText="查看照片"></asp:HyperLinkColumn>
					<asp:HyperLinkColumn Text="修改照片" DataNavigateUrlField="userid_personinfo" DataNavigateUrlFormatString="photo_edit.aspx?userid_personinfo={0}"
						HeaderText="修改照片"></asp:HyperLinkColumn>
				</Columns>
				<PagerStyle VerticalAlign="Middle" NextPageText="下一页" Font-Size="X-Small" Font-Names="Arial"
					PrevPageText="上一页" HorizontalAlign="Left" ForeColor="#330099" BackColor="#FFFFCC" Wrap="False"></PagerStyle>
			</asp:DataGrid>
			<asp:RadioButtonList id="NavigateType" style="Z-INDEX: 102; LEFT: 16px; POSITION: absolute; TOP: 392px"
				runat="server" RepeatDirection="Horizontal" Width="232px" ForeColor="Red" AutoPostBack="True" Font-Size="X-Small"
				Font-Names="Arial" onselectedindexchanged="NavigateType_SelectedIndexChanged">
				<asp:ListItem Value="1" Selected="True">文字导航按钮</asp:ListItem>
				<asp:ListItem Value="2">数字导航按钮</asp:ListItem>
			</asp:RadioButtonList>
			<asp:Button id="back" style="Z-INDEX: 103; LEFT: 184px; POSITION: absolute; TOP: 480px" runat="server"
				Text="返回" Font-Size="X-Small" Font-Names="Arial" onclick="back_Click"></asp:Button>
			<asp:Button id="add" style="Z-INDEX: 104; LEFT: 16px; POSITION: absolute; TOP: 480px" runat="server"
				Text="添加新客户" Font-Names="Arial" onclick="add_Click"></asp:Button>
			<asp:Label id="Message" style="Z-INDEX: 105; LEFT: 264px; POSITION: absolute; TOP: 400px" runat="server"
				Font-Size="X-Small" Font-Names="Arial"></asp:Label>
			<asp:Label id="Label1" style="Z-INDEX: 106; LEFT: 16px; POSITION: absolute; TOP: 440px" runat="server"
				Font-Names="Arial">查询指定编号客户</asp:Label>
			<asp:TextBox id="TextBox1" style="Z-INDEX: 107; LEFT: 160px; POSITION: absolute; TOP: 440px"
				runat="server" Width="120px"></asp:TextBox>
			<asp:Button id="search" style="Z-INDEX: 108; LEFT: 304px; POSITION: absolute; TOP: 440px" runat="server"
				Text="查询" onclick="search_Click"></asp:Button></form>
	</body>
</HTML>
