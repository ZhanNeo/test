<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Web1.index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            color: #FFFFFF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="width: 100%; height: 985px;">   
    <table style="width:100%;">
            <tr>
                <td bgcolor="#F1F1F1" class="style8" align="right">
                    &nbsp;&nbsp;
                    &nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click1">登陆</asp:LinkButton>
                    <asp:Label ID="Label2" runat="server" Visible="false"></asp:Label>
                    <asp:Label ID="Label5" runat="server" Visible="false"></asp:Label>
&nbsp;<asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/yonghu/yonghuzhuce.aspx">注册</asp:HyperLink>
                     &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" 
                        onclick="LinkButton3_Click">购物车</asp:LinkButton>
&nbsp;<asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click">个人信息</asp:LinkButton>
                </td>
            </tr>
        </table>
        <table style="width: 100%; height: 94px;">
            <tr>
                <td bgcolor="#16220E" class="style6">
                   &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label1" runat="server" ForeColor="White" 
                            style="font-style: italic; font-size: xx-large; font-family: 'Sitka Display'" 
                            Text="淘菜网"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
        </table>
            <table style="width: 75%; height: 781px;">
                <tr>
                    <td  valign="top" bgcolor="#16220E">
                         <br />&nbsp;
                         <asp:TreeView ID="TreeView1" runat="server" Target="showmenu" Width="70px" ForeColor="White" 
                        onselectednodechanged="TreeView1_SelectedNodeChanged" 
                        DataSourceID="SiteMapDataSource1" Height="199px">
                    </asp:TreeView>
                    <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
                    </td>
                    <td>
                        <iframe id="target" name="showmenu" style="width:140%; height: 985px;" src="tuijian.aspx"></iframe>
                    </td>
                </tr>
            </table>
        <table style="width: 100%;">
            <tr>
                <td align="center" bgcolor="#009933">
                    &nbsp;<asp:Label ID="Label4" runat="server" ForeColor="White" 
                        Text="Copyright @ 2015 yuzhan All Rights Reserved "></asp:Label>
                    &nbsp;<br />
&nbsp;
                    <asp:Label ID="Label3" runat="server" ForeColor="White" Text="技术支持：宇展/洵健"></asp:Label>
                    <span class="style1">||</span><asp:HyperLink ID="HyperLink1" runat="server" 
                        ForeColor="White" NavigateUrl="~/guanliyuanlogin.aspx">管理登陆</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;
                </td>
            </tr>
            </table>
    </div>
       <div id="divInform" runat="server" style="border: solid 10px #898989; background: #fff; padding: 20px; width: 290px; z-index: 1000; position: absolute; display:none; top: 25%; left: 50%; margin: 100px 0 0 -200px;">
                <div style="padding: 3px 15px 3px 15px; text-align: left; vertical-align: middle;">
                    <asp:Panel ID="Panel2" runat="server">
                        <table style="width: 100%;">    
                            <tr>
                                <td>姓名:<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td>密码:<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></td>
                            </tr>                                                         
                             <tr>
                                <td >
                                    &nbsp;&nbsp;
                                    <asp:Button ID="Button5" runat="server" Text="确定" onclick="Button5_Click" /> &nbsp; &nbsp;<asp:Button 
                                        ID="Button4" runat="server" Text="返回" onclick="Button4_Click" /></td>
                            </tr>
                        </table>
                    </asp:Panel>                  
                </div>
            </div>
          <div id="hid" runat="server" style="filter:alpha(opacity=30);-moz-opacity:0.3;opacity:0.3;background-color:#000;width:100%;height:1095px;z-index:920;position: absolute;left:0;top:0;display:none;"></div>
    </form>
</body>
</html>
