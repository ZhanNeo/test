<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="shangpin.aspx.cs" Inherits="Web1.guanli.shangpin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 222px;
        }
        .style2
        {
            width: 222px;
            height: 20px;
        }
        .style3
        {
            height: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width:100%;">
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="新   增" onclick="Button1_Click" 
                        BackColor="Black" ForeColor="White" Height="38px" Width="101px" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td>
                    蔬菜类：</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td>
                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                        GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <EditRowStyle BackColor="#7C6F57" />
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F8FAFA" />
                        <SortedAscendingHeaderStyle BackColor="#246B61" />
                        <SortedDescendingCellStyle BackColor="#D4DFE1" />
                        <SortedDescendingHeaderStyle BackColor="#15524A" />
                    </asp:GridView>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td>
                    肉类：</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td>
                    <asp:GridView ID="GridView2" runat="server" CellPadding="4" ForeColor="#333333" 
                        GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                        <SortedAscendingCellStyle BackColor="#FDF5AC" />
                        <SortedAscendingHeaderStyle BackColor="#4D0000" />
                        <SortedDescendingCellStyle BackColor="#FCF6C0" />
                        <SortedDescendingHeaderStyle BackColor="#820000" />
                    </asp:GridView>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                </td>
                <td class="style3">
                    水产类：</td>
                <td class="style3">
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
                    <asp:GridView ID="GridView3" runat="server" CellPadding="4" ForeColor="#333333" 
                        GridLines="None">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                </td>
                <td class="style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
                    调味料：</td>
                <td class="style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
                    <asp:GridView ID="GridView4" runat="server" BackColor="White" 
                        BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                        <RowStyle BackColor="White" ForeColor="#330099" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                        <SortedAscendingCellStyle BackColor="#FEFCEB" />
                        <SortedAscendingHeaderStyle BackColor="#AF0101" />
                        <SortedDescendingCellStyle BackColor="#F6F0C0" />
                        <SortedDescendingHeaderStyle BackColor="#7E0000" />
                    </asp:GridView>
                </td>
                <td class="style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
                    水果类：</td>
                <td class="style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
                    <asp:GridView ID="GridView5" runat="server" BackColor="#DEBA84" 
                        BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                        CellSpacing="2">
                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FFF1D4" />
                        <SortedAscendingHeaderStyle BackColor="#B95C30" />
                        <SortedDescendingCellStyle BackColor="#F1E5CE" />
                        <SortedDescendingHeaderStyle BackColor="#93451F" />
                    </asp:GridView>
                </td>
                <td class="style3">
                    &nbsp;</td>
            </tr>
        </table>  
    </div>
    <div id="divInform" runat="server" style="border: solid 10px #898989; background: #fff; padding: 20px; width: 290px; z-index: 1000; position: absolute; display:none; top: 25%; left: 50%; margin: 100px 0 0 -200px;">
                <div style="padding: 3px 15px 3px 15px; text-align: left; vertical-align: middle;">
                    <asp:Panel ID="Panel2" runat="server">
                        <table style="width: 100%;">    
                            <tr>
                                <td>类别:<asp:DropDownList ID="DropDownList1" runat="server">
                                    <asp:ListItem Value="1">有机蔬菜</asp:ListItem>
                                    <asp:ListItem Value="10">海鲜</asp:ListItem>
                                    <asp:ListItem Value="11">野生菌</asp:ListItem>
                                    <asp:ListItem Value="12">海带丝</asp:ListItem>
                                    <asp:ListItem Value="13">红枣木耳</asp:ListItem>
                                    <asp:ListItem Value="14">调味料</asp:ListItem>
                                    <asp:ListItem Value="15">水果</asp:ListItem>
                                    <asp:ListItem Value="2">直供蔬菜</asp:ListItem>
                                    <asp:ListItem Value="3">鲜肉</asp:ListItem>
                                    <asp:ListItem Value="4">排骨</asp:ListItem>
                                    <asp:ListItem Value="5">养殖鸡肉</asp:ListItem>
                                    <asp:ListItem Value="6">农家土鸡</asp:ListItem>
                                    <asp:ListItem Value="7">活鸭肉</asp:ListItem>
                                    <asp:ListItem Value="8">鸡蛋</asp:ListItem>
                                    <asp:ListItem Value="9">鲜鱼</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td>名称:<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></td>
                            </tr>
                             <tr>
                                <td>图片:<asp:TextBox ID="TextBox7" runat="server"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td>数量:<asp:TextBox ID="TextBox8" runat="server"></asp:TextBox></td>
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
    <div id="change" runat="server" style="border: solid 10px #898989; background: #fff; padding: 20px; width: 290px; z-index: 1000; position: absolute; display:none; top: 25%; left: 50%; margin: 100px 0 0 -200px;">
                <div style="padding: 3px 15px 3px 15px; text-align: left; vertical-align: middle;">
                    <asp:Panel ID="Panel1" runat="server">
                        <table style="width: 100%;"> 
                            <tr>
                                <td>当前选择:<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
                            </tr>  
                            <tr>
                                <td>名称:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                            </tr>
                             <tr>
                                <td>图片:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td>数量:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
                            </tr>                                                         
                             <tr>
                                <td >
                                    &nbsp;&nbsp;
                                    <asp:Button ID="Button6" runat="server" Text="确定" onclick="Button6_Click"  /> &nbsp; &nbsp;<asp:Button 
                                        ID="Button7" runat="server" Text="返回" onclick="Button7_Click"/></td>
                            </tr>
                        </table> 
                    </asp:Panel>                  
                </div>
            </div>
          <div id="hid" runat="server" style="filter:alpha(opacity=30);-moz-opacity:0.3;opacity:0.3;background-color:#000;width:100%;height:100%;z-index:920;position: absolute;left:0;top:0;display:none;"></div>
    </form>
</body>
</html>
