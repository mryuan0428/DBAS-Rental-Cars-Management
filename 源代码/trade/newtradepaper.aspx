<%@ Page language="c#" Inherits="cartrade.newtradepaper" CodeFile="newtradepaper.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>newtradepaper</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<asp:label id="Label1" style="Z-INDEX: 101; LEFT: 376px; POSITION: absolute; TOP: 16px" runat="server"
				Width="176px" Height="16px" ForeColor="Blue" Font-Size="Large" Font-Bold="True">汽车租赁登记表</asp:label>
			<table style="Z-INDEX: 102; LEFT: 64px; WIDTH: 824px; POSITION: absolute; TOP: 88px; HEIGHT: 642px"
				cellSpacing="1" cellPadding="0" width="824" bgColor="#000000" border="1">
				<TR bgColor="#ffffff">
					<TD style="WIDTH: 120px" width="120" height="27">承租方</TD>
					<TD colSpan="2">&nbsp;
						<asp:label id="lblusername" runat="server"></asp:label></TD>
					<TD width="18%">电话</TD>
					<TD colSpan="2">&nbsp;
						<asp:label id="lbluserphone" runat="server"></asp:label></TD>
				</TR>
				<TR bgColor="#ffffff">
					<TD style="WIDTH: 120px" height="27">住址/地址</TD>
					<TD colSpan="2">&nbsp;
						<asp:label id="lbluseraddress" runat="server"></asp:label></TD>
					<TD>证件号码</TD>
					<TD colSpan="2">&nbsp;
						<asp:label id="lbluserzhengjian" runat="server"></asp:label></TD>
				</TR>
				<TR bgColor="#ffffff">
					<TD style="WIDTH: 120px" height="26">担保方</TD>
					<TD colSpan="2">&nbsp;
						<asp:label id="lblinsurename" runat="server"></asp:label></TD>
					<TD>电话</TD>
					<TD colSpan="2">&nbsp;
						<asp:label id="lblinsurephone" runat="server"></asp:label></TD>
				</TR>
				<TR bgColor="#ffffff">
					<TD style="WIDTH: 120px" height="26">地址</TD>
					<TD colSpan="5">&nbsp;
						<asp:label id="lblinsureaddress" runat="server"></asp:label></TD>
				</TR>
				<TR bgColor="#ffffff">
					<TD colSpan="6" height="26">
						<DIV align="center">北京市汽车租赁合同（附加条款）</DIV>
					</TD>
				</TR>
				<TR bgColor="#ffffff">
					<TD colSpan="6" height="26">&nbsp; 1. 因承租方的原因造成车辆不能正常行驶，出租方救援时将收取相应的抢修费用
					</TD>
				</TR>
				<TR bgColor="#ffffff">
					<TD colSpan="6" height="26">&nbsp; 2. 遇节假日承租方还车后办理其他手续时间顺延
					</TD>
				</TR>
				<TR bgColor="#ffffff">
					<TD colSpan="6" height="25">&nbsp; 3. 租赁合同生效后，日租按每天 24 小时计算，月租按 30 天计算。承租方可获得每日 200 
						公里的行驶里程。</TD>
				</TR>
				<TR bgColor="#ffffff">
					<TD colSpan="6">&nbsp; 4. 承租人还车时，需交纳违章押金壹仟元整，自还车之日 20 天后，如所租车辆无违章行为，违章押金如数退还。如有违章且拒 
						不处理的，将扣除本车辆所造成的违章罚款，并承担因本车辆处理违章期间所产生的租金及相关损失费用。
					</TD>
				</TR>
				<TR bgColor="#ffffff">
					<TD style="WIDTH: 120px" height="27">车辆车号</TD>
					<TD width="17%">&nbsp;
						<asp:label id="lblcarid1" runat="server"></asp:label></TD>
					<TD width="17%">颜色</TD>
					<TD>&nbsp;
						<asp:label id="lblcarcolor" runat="server"></asp:label></TD>
					<TD width="16%">车型</TD>
					<TD width="19%">&nbsp;
						<asp:label id="lblcarmodel" runat="server"></asp:label></TD>
				</TR>
				<TR bgColor="#ffffff">
					<TD style="WIDTH: 120px" height="26">下次付款日期</TD>
					<TD>&nbsp;
						<asp:label id="lblnextpaytime" runat="server"></asp:label></TD>
					<TD>起租时间</TD>
					<TD>&nbsp;
						<asp:label id="lblbegintime" runat="server"></asp:label></TD>
					<TD>应还时间</TD>
					<TD>&nbsp;
						<asp:label id="lblendtime" runat="server"></asp:label></TD>
				</TR>
				<TR bgColor="#ffffff">
					<TD style="WIDTH: 120px" height="25">超时收费(元)
					</TD>
					<TD>&nbsp;
						<asp:label id="lblchaoshishoufei" runat="server"></asp:label></TD>
					<TD>超驶收费(元)</TD>
					<TD>&nbsp;
						<asp:label id="lblchaoshishoufei1" runat="server"></asp:label></TD>
					<TD>租赁期限</TD>
					<TD>&nbsp;
						<asp:label id="lblzulinqixian" runat="server"></asp:label></TD>
				</TR>
				<TR bgColor="#ffffff">
					<TD style="WIDTH: 120px" height="26">每日租金(元)</TD>
					<TD>&nbsp;
						<asp:label id="lblunitpay" runat="server"></asp:label></TD>
					<TD>日限驶公里数</TD>
					<TD>&nbsp;
						<asp:label id="lblrixianshigonglishu" runat="server"></asp:label></TD>
					<TD colSpan="2">使用时请加注 93 &nbsp;# 无铅汽油
					</TD>
				</TR>
				<TR bgColor="#ffffff">
					<TD style="WIDTH: 120px" height="27">付款日期</TD>
					<TD>&nbsp;
						<asp:label id="lblpaytime" runat="server"></asp:label></TD>
					<TD>预付押金(元)</TD>
					<TD>&nbsp;
						<asp:label id="lblproyajin" runat="server"></asp:label></TD>
					<TD>预付租金(元)</TD>
					<TD>&nbsp;
						<asp:label id="lblprozujin" runat="server"></asp:label></TD>
				</TR>
				<TR bgColor="#ffffff">
					<TD style="WIDTH: 120px" height="27">支票号</TD>
					<TD>&nbsp;
						<asp:label id="lblchecknum" runat="server"></asp:label></TD>
					<TD colSpan="4">备注
						<asp:label id="lblbeizhu" runat="server"></asp:label></TD>
				</TR>
				<TR bgColor="#ffffff">
					<TD colSpan="3" height="26">出租方 : 华磊邦得汽车租赁有限公司
						<P>
						经办人：
						<P>
						<P>
						签章：
						<P>签订日期：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;年&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;月&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;日</P>
					</TD>
					<TD colSpan="3">承租方:
						<P>
						经办人:
						<P>
						担保人：
						<P>
						联系电话： 
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;签章：
						<P>签订日期：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;年&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;月&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;日</P>
					</TD>
				</TR>
				<TR bgColor="#ffffff">
					<TD style="WIDTH: 120px" height="25">操作员：</TD>
					<TD colSpan="2">&nbsp;</TD>
					<TD>业务部：</TD>
					<TD colSpan="2">&nbsp;</TD>
				</TR>
			</table>
			<asp:label id="Label2" style="Z-INDEX: 103; LEFT: 64px; POSITION: absolute; TOP: 64px" runat="server">租赁车号：</asp:label><asp:label id="lblcarid" style="Z-INDEX: 104; LEFT: 152px; POSITION: absolute; TOP: 64px" runat="server"></asp:label><asp:label id="Label4" style="Z-INDEX: 105; LEFT: 368px; POSITION: absolute; TOP: 64px" runat="server">合同编号：</asp:label><asp:label id="lbltradeid" style="Z-INDEX: 106; LEFT: 456px; POSITION: absolute; TOP: 64px"
				runat="server"></asp:label><asp:label id="Label6" style="Z-INDEX: 107; LEFT: 656px; POSITION: absolute; TOP: 64px" runat="server"
				Width="80px">出表日期：</asp:label><asp:label id="lbltimenow" style="Z-INDEX: 108; LEFT: 736px; POSITION: absolute; TOP: 64px"
				runat="server" Width="136px"></asp:label><asp:label id="Label8" style="Z-INDEX: 109; LEFT: 64px; POSITION: absolute; TOP: 736px" runat="server"
				Width="824px">担保人声明：本人自愿为承租方承担连带责任担保，当承租方不能偿还因租用华磊邦得汽车租赁有限公司车辆 所发生的直接及间接经济损失时，本人自愿放弃抗辩权并承担承租方所未偿还的全部债务。</asp:label><asp:label id="Label9" style="Z-INDEX: 110; LEFT: 712px; POSITION: absolute; TOP: 784px" runat="server"
				Width="168px">服务投诉电话      64275689</asp:label></form>
	</body>
</HTML>
