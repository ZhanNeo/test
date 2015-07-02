<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="yonghudingdan.aspx.cs"
    Inherits="Web1.yonghu.yonghudingdan" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style4
        {
            width: 174px;
            height: 145px;
        }
        .style5
        {
            height: 145px;
        }
        .style6
        {
            width: 174px;
            height: 20px;
        }
        .style7
        {
            height: 20px;
        }
        .style8
        {
            height: 15px;
            width: 634px;
            font-size: xx-large;
        }
        .style10
        {
            height: 145px;
            width: 634px;
        }
        .style11
        {
            height: 20px;
            width: 634px;
        }
        .style12
        {
            width: 174px;
            height: 16px;
        }
        .style13
        {
            height: 16px;
            width: 634px;
        }
        .style14
        {
            height: 16px;
        }
        .style15
        {
            width: 174px;
            height: 15px;
        }
        .style16
        {
            height: 15px;
        }
        .style17
        {
            width: 189px;
        }
        .style18
        {
            width: 206px;
        }
        .style19
        {
            width: 174px;
            height: 51px;
        }
        .style20
        {
            height: 51px;
            width: 634px;
        }
        .style21
        {
            height: 51px;
        }
    </style>
</head>
<body bgcolor="#bcc6d7">
    <form id="form1" runat="server">
    <div style="width:100%; height:975px;">
        <table style="width: 100%; height: 100%;">
            <tr>
                <td align="right" class="style15">
                </td>
                <td class="style8" bgcolor="White" align="center">
                    <strong style="font-family: 'Microsoft YaHei UI'">用户个人信息</strong></td>
                <td class="style16">
                </td>
            </tr>
            <tr>
                <td align="right" class="style12">
                    &nbsp;
                </td>
                <td class="style13" bgcolor="White">
                    <asp:Label ID="Label2" runat="server" Text="当前用户编号为："></asp:Label>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="style14">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="style19">
                    </td>
                <td class="style20" bgcolor="White" valign="top">
                    <table style="width: 100%; height: 106px;">
                        <tr>
                            <td align="right" class="style17">
                                <asp:Label ID="Label12" runat="server" Text="姓名："></asp:Label>
                            </td>
                            <td class="style18">
                                <asp:Label ID="Label16" runat="server" Text="Label"></asp:Label>
                                <asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox>
                            </td>
                            <td>
                                <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">编辑</asp:LinkButton>
                                <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click" 
                                    Visible="False">确定</asp:LinkButton>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" class="style17">
                                &nbsp;</td>
                            <td class="style18">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="right" class="style17">
                                <asp:Label ID="Label13" runat="server" Text="密码："></asp:Label>
                            </td>
                            <td class="style18">
                                <asp:Label ID="Label17" runat="server" Text="Label"></asp:Label>
                                <asp:TextBox ID="TextBox2" runat="server" Visible="False"></asp:TextBox>
                            </td>
                            <td>
                                <asp:LinkButton ID="LinkButton3" runat="server" onclick="LinkButton3_Click">编辑</asp:LinkButton>
                                <asp:LinkButton ID="LinkButton4" runat="server" onclick="LinkButton4_Click" 
                                    Visible="False">确定</asp:LinkButton>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" class="style17">
                                &nbsp;</td>
                            <td class="style18">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="right" class="style17">
                                <asp:Label ID="Label14" runat="server" Text="地址："></asp:Label>
                            </td>
                            <td class="style18">
                                <asp:Label ID="Label18" runat="server" Text="Label"></asp:Label>
                                <asp:TextBox ID="TextBox3" runat="server" Visible="False"></asp:TextBox>
                            </td>
                            <td>
                                <asp:LinkButton ID="LinkButton5" runat="server" onclick="LinkButton5_Click">编辑</asp:LinkButton>
                                <asp:LinkButton ID="LinkButton6" runat="server" onclick="LinkButton6_Click" 
                                    Visible="False">确定</asp:LinkButton>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" class="style17">
                                &nbsp;</td>
                            <td class="style18">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="right" class="style17">
                                <asp:Label ID="Label15" runat="server" Text="Email："></asp:Label>
                            </td>
                            <td class="style18">
                                <asp:Label ID="Label19" runat="server" Text="Label"></asp:Label>
                                <asp:TextBox ID="TextBox4" runat="server" Visible="False"></asp:TextBox>
                            </td>
                            <td>
                                <asp:LinkButton ID="LinkButton7" runat="server" onclick="LinkButton7_Click">编辑</asp:LinkButton>
                                <asp:LinkButton ID="LinkButton8" runat="server" onclick="LinkButton8_Click" 
                                    Visible="False">确定</asp:LinkButton>
                            </td>
                        </tr>
                    </table>
                </td>
                <td class="style21">
                    </td>
            </tr>
            <tr>
                <td class="style4">
                </td>
                <td class="style10" bgcolor="White" valign="top">
                    <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC"
                        BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="808px">
                        <FooterStyle BackColor="White" ForeColor="#000066" />
                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                        <RowStyle ForeColor="#000066" />
                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#007DBB" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#00547E" />
                    </asp:GridView>
                    <br />
                </td>
                <td class="style5">
                </td>
            </tr>
            <tr>
                <td class="style6">
                </td>
                <td class="style11" bgcolor="White" align="right" valign="top">
                    <asp:Button ID="Button4" runat="server" Height="36px" Text="返回" Width="75px" 
                        onclick="Button4_Click" />
                </td>
                <td class="style7">
                </td>
            </tr>
        </table>
    </div>
    <div id="check" runat="server" style="border: solid 10px #898989; background: #C0C0C0;
        padding: 20px; width: 290px; z-index: 1000; position: absolute; display: none;
        top: 20%; left: 50%; margin: 100px 0 0 -200px;">
        <asp:Label ID="Label4" runat="server" Text="订单信息" Style="font-weight: 700"></asp:Label>
        <br />
        <br />
        <div style="padding: 3px 15px 3px 15px; text-align: left; vertical-align: middle;
            height: 310px; background-color: #FFFFFF;">
            <asp:Panel ID="Panel1" runat="server">
                <table style="width: 100%;">
                    <tr>
                        <td>
                            <strong>收货人信息</strong><asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            收货人编号:<asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            地&nbsp;址:<asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            E_mail:<asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                            <br />
                            <br />
                        </td>
                    </tr>
                </table>
                <table style="width: 100%;">
                    <tr>
                        <td>
                            <strong>商品清单</strong>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            商品编号:<asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            商品名称:<asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            商品数量:<asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button1" runat="server" Text="返回" OnClick="Button7_Click" Height="21px"
                                Width="91px" BackColor="#FF0066" ForeColor="White" />
                        </td>
                    </tr>
                </table>
            </asp:Panel>
            &nbsp;</div>
    </div>
    <div id="pinglun" runat="server" style="border: solid 10px #898989; background: #C0C0C0;
        padding: 20px; width: 290px; z-index: 1000; position: absolute; display: none;
        top: 20%; left: 50%; margin: 100px 0 0 -200px;">
        <div style="padding: 3px 15px 3px 15px; text-align: left; vertical-align: middle;
            height: 336px; background-color: #FFFFFF;">
            <asp:Panel ID="Panel2" runat="server">                 
                <table style="width: 100%;">
                    <tr>
                        <td>
                            订单编号:<asp:Label ID="Label25" runat="server" Text="Label"></asp:Label>
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="TextBox5" runat="server" Height="221px" TextMode="MultiLine" 
                                Width="240px"></asp:TextBox></asp:Label>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;&nbsp; &nbsp; <asp:Button ID="Button5" 
                                runat="server" BackColor="#FF0066" 
                                ForeColor="White" Height="21px" Text="确认" 
                                Width="49px" onclick="Button5_Click" />
&nbsp;
                            <asp:Button ID="Button2" runat="server" Text="返回" OnClick="Button7_Click" Height="21px"
                                Width="49px" BackColor="#FF0066" ForeColor="White" />
                        </td>
                    </tr>
                </table>
            </asp:Panel>
            &nbsp;</div>
        <br />
        <br />
    </div>
    <div id="hid" runat="server" style="filter: alpha(opacity=30); -moz-opacity: 0.3;
        opacity: 0.3; background-color: #000; width: 100%; height: 975px; z-index: 920;
        position: absolute; left: 0; top: 0; display: none;">
    </div>
    </form>
</body>
</html>
