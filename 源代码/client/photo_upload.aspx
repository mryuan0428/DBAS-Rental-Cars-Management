<%@ Page language="c#" Inherits="client.client.photo_upload" CodeFile="photo_upload.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>photo_upload</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body background="file:///C:\Inetpub\wwwroot\HLBD\pretrade\images\logo2.gif">
		<form id="Form1" method="post" runat="server">
			<FONT face="黑体">
				<asp:label id="Label1" style="Z-INDEX: 101; LEFT: 24px; POSITION: absolute; TOP: 48px" runat="server"
					Font-Size="Large" Font-Bold="True" Width="456px">上传照片（照片的后缀名必须为jpg、bmp</asp:label>
				<asp:Label id="Label2" style="Z-INDEX: 102; LEFT: 24px; POSITION: absolute; TOP: 80px" runat="server"
					Font-Size="Large" Font-Bold="True">文件大小不能大于5M</asp:Label>
				<asp:Label id="Label3" style="Z-INDEX: 103; LEFT: 24px; POSITION: absolute; TOP: 160px" runat="server">客户编号</asp:Label>
				<asp:Label id="Label4" style="Z-INDEX: 104; LEFT: 24px; POSITION: absolute; TOP: 232px" runat="server">图片位置</asp:Label>
				<asp:Button id="upload" style="Z-INDEX: 105; LEFT: 272px; POSITION: absolute; TOP: 160px" runat="server"
					Font-Bold="True" Width="64px" Text="上传" onclick="upload_Click"></asp:Button>
				<asp:TextBox id="userid" style="Z-INDEX: 106; LEFT: 112px; POSITION: absolute; TOP: 160px" runat="server"
					Width="152px" Enabled="False"></asp:TextBox><INPUT id="txtFileContents" style="Z-INDEX: 108; LEFT: 112px; POSITION: absolute; TOP: 232px"
					type="file" name="File1" runat="server"></FONT>
		</form>
	</body>
</HTML>
