<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="yonghuzhuce.aspx.cs" Inherits="Web1.yonghu.yonghuzhuce" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style2
        {
            width: 331px;
        }
        .style4
        {
            width: 331px;
            height: 182px;
        }
        .style5
        {
            height: 182px;
        }
        .style7
        {
            width: 331px;
            height: 167px;
        }
        .style8
        {
            height: 167px;
        }
        .style9
        {
            width: 397px;
            height: 182px;
        }
        .style10
        {
            width: 397px;
        }
        .style11
        {
            width: 397px;
            height: 167px;
        }
    </style>
</head>
<body background="../image/richu.jpg">
    <form id="form1" runat="server">
    <div>
        <table style="width:100%;">
            <tr>
                <td class="style9">
                </td>
                <td class="style4">
                </td>
                <td class="style5">
                </td>
            </tr>
            <tr>
                <td class="style10">
                    &nbsp;</td>
                <td class="style2">
                    <table style="width: 99%; margin-right: 54px;">
                        <tr>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="center">
                                <br />
&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server" Text="用户名" OnClick="this,value= ''"></asp:TextBox>
                                <br />
                                <br />
&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox2" runat="server" Text="密码" OnClick="this,value= ''"></asp:TextBox>
                                <br />
                                <br />
&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox3" runat="server" Text="地址" OnClick="this,value= ''"></asp:TextBox>
                                <br />
                                <br />
&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox4" runat="server" Text="Email" OnClick="this,value= ''"></asp:TextBox>
                                <br />
                                <br />
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button1" runat="server" BackColor="#3871A7" ForeColor="White" 
                                    Text="注册" Width="117px" Height="39px" onclick="Button1_Click" />
                                &nbsp;</td>
                        </tr>
                    </table>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style11">
                </td>
                <td class="style7">
                </td>
                <td class="style8">
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
