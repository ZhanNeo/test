<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="shicaixingxi.aspx.cs" Inherits="Web1.yonghu.shicaixingxi" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 249px;
        }
        .style2
        {
            width: 249px;
            height: 80px;
        }
        .style3
        {
            height: 80px;
        }
        .style4
        {
            height: 80px;
            font-size: x-large;
            width: 592px;
        }
        .style5
        {
            width: 592px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width:100%;">
            <tr>
                <td class="style2">
                </td>
                <td class="style4">
                    <asp:Label ID="Label1" runat="server" Text="食材编号："></asp:Label>
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;
                    <asp:Label ID="Label3" runat="server" Text="食材名称："></asp:Label>
                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="style3">
                </td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td class="style5">
                    <asp:Image ID="Image1" runat="server" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td class="style5">
                    已售出：<asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td class="style5">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td class="style5">
                    评论：</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td class="style5">
                    <asp:Table ID="Table1" runat="server" GridLines="Horizontal" 
                         style="border-width:0;" Width="406px">
                    </asp:Table>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
