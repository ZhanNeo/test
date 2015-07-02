<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dingdan.aspx.cs" Inherits="Web1.guanli.dingdan" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .btn 
        { 
            border-right: #7b9ebd 1px solid; 
            padding-right: 2px; 
            border-top: #7b9ebd 1px solid; 
            padding-left: 2px; 
            font-size: 12px; 
            FILTER: progid:DXImageTransform.Microsoft.Gradient(GradientType=0,  StartColorStr=#ffffff,  EndColorStr=#cecfde); 
            border-left: #7b9ebd 1px solid; 
            cursor: hand; 
            color: black; 
            padding-top: 2px; 
            border-bottom: #7b9ebd 1px solid; 
        } 
        .style1
        {
            height: 268px;
            width: 111px;
        }
        .style5
        {
            height: 262px;
        }
        .style6
        {
            height: 208px;
        }
        .style7
        {
            height: 106px;
        }
        .style8
        {
            height: 106px;
            width: 111px;
        }
        .style9
        {
            height: 208px;
            width: 111px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <div>
    <table style="width:100%; height: 350px;">
            <tr>
                <td class="style8">
                </td>
                <td class="style7" valign="bottom">
                    <asp:Button ID="Button1" runat="server" CssClass="btn" Text="新  增" 
                        onclick="Button1_Click" BackColor="#990000" 
                        ForeColor="White" Height="38px" Width="101px" />
                </td>
                <td class="style7">
                </td>
            </tr>
            <tr>
                <td class="style9">
                    </td>
                <td class="style6">
        <asp:GridView ID="GridView1" runat="server" Height="203px" Width="852px" 
                        onselectedindexchanged="GridView1_SelectedIndexChanged" CellPadding="4" 
                        ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText=""> 
          <ItemStyle HorizontalAlign="Center" Height="30px" Width="80px"/>     
          </asp:TemplateField> 
            </Columns>
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
                <td class="style6">
                    </td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td class="style5">
&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;
                    </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <br />
    </div>
     <div id="divInform" runat="server" style="border: solid 10px #898989; background: #fff; padding: 20px; width: 290px; z-index: 1000; position: absolute; display:none; top: 25%; left: 50%; margin: 100px 0 0 -200px;">
                <div style="padding: 3px 15px 3px 15px; text-align: left; vertical-align: middle;">
                    <asp:Panel ID="Panel2" runat="server">
                        <table style="width: 100%;">    
                            <tr>
                                <td>用户编号:<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td>商品名称:<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></td>
                            </tr>
                             <tr>
                                <td>地址:<asp:TextBox ID="TextBox7" runat="server"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td>E_mail:<asp:TextBox ID="TextBox8" runat="server"></asp:TextBox></td>
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
                                <td>用户编号:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td>商品名:<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
                            </tr>
                             <tr>
                                <td>地址:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td>E_mail:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
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
