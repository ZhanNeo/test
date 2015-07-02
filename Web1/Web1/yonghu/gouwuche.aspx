<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gouwuche.aspx.cs" Inherits="Web1.yonghu.gouwuche" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 280px;
        }
        .style2
        {
            width: 644px;
        }
        .style3
        {
            width: 644px;
            font-size: xx-large;
            font-family: "Malgun Gothic Semilight";
            height: 84px;
        }
        .style4
        {
            width: 280px;
            height: 84px;
        }
        .style5
        {
            height: 84px;
        }
        .style6
        {
            width: 280px;
            height: 190px;
        }
        .style7
        {
            width: 644px;
            height: 190px;
        }
        .style8
        {
            height: 190px;
        }
        .style10
        {
            width: 644px;
            height: 47px;
        }
        .style11
        {
            width: 280px;
            height: 47px;
        }
        .style12
        {
            height: 47px;
        }
    </style>
</head>
<body bgcolor="#999999" style="height: 235px">
    <form id="form1" runat="server">
    <div>
    
        <table style="width: 100%; height: 975px;">
            <tr>
                <td class="style4">
                    </td>
                <td align="center" class="style3" bgcolor="White">
                    <strong>购物车管理</strong></td>
                <td class="style5">
                    </td>
            </tr>
            <tr>
                <td class="style11">
                    </td>
                <td class="style10" bgcolor="White" align="center">
                    <asp:Label ID="Label2" runat="server" Text="当前用户编号为："></asp:Label>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="style12">
                    </td>
            </tr>
            <tr>
                <td class="style6">
                    </td>
                <td class="style7" bgcolor="White" align="center">
                    <asp:Table ID="Table1" runat="server" Width="209px">
                    </asp:Table>
                </td>
                <td class="style8">
                    </td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td align="right" class="style2" bgcolor="White" valign="top">
                    <asp:Button ID="Button1" runat="server" BackColor="Red" ForeColor="White" 
                        Height="39px" Text=" 立即购买" Width="80px" onclick="Button1_Click" />
                &nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" BackColor="Red" ForeColor="White" 
                        Height="39px" Text="取消购买" Width="80px" onclick="Button2_Click" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
