<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="guanliyuanlogin.aspx.cs" Inherits="Web1.guanliyuanlogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 341px;
        }
        .style3
        {
            height: 341px;
            width: 699px;
        }
        .style5
        {
            height: 341px;
            width: 241px;
        }
        .style9
        {
            height: 221px;
            width: 699px;
        }
        .style10
        {
            height: 221px;
            width: 241px;
        }
        .style11
        {
            height: 221px;
        }
        .style12
        {
            height: 300px;
            width: 699px;
        }
        .style13
        {
            height: 300px;
            width: 241px;
        }
        .style14
        {
            height: 300px;
        }
    </style>
</head>
<body background="image/richu2.jpg">
    <form id="form1" runat="server">
    <div>
    
        <table style="width: 100%;">
            <tr>
                <td class="style12">
                </td>
                <td class="style13">
                </td>
                <td class="style14">
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style5">
                        <asp:Label ID="Label1" runat="server" Text="帐号：" ForeColor="White"></asp:Label>
                        <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="157px"></asp:TextBox>
                        <br />
                    <br />
                        <asp:Label ID="Label2" runat="server" ForeColor="White" Text="密码："></asp:Label>
                        <asp:TextBox ID="TextBox2" runat="server" Height="28px" Width="157px"></asp:TextBox>
                        <br />
                    <br />
&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="立即登录" 
                        BackColor="#FF3300" ForeColor="White" Height="36px" Width="164px" />
                        &nbsp;&nbsp;
                </td>
                <td class="style1">
                </td>
            </tr>
            <tr>
                <td class="style9">
                    </td>
                <td class="style10">
                    </td>
                <td class="style11">
                    </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
