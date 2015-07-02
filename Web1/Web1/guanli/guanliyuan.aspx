<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="guanliyuan.aspx.cs" Inherits="Web1.guanli.yonghu" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 168px;
        }
        .style2
        {
            width: 168px;
            height: 77px;
        }
        .style3
        {
            height: 77px;
        }
        .style4
        {
            height: 77px;
            width: 852px;
        }
        .style5
        {
            width: 852px;
        }
        .style6
        {
            width: 168px;
            height: 178px;
        }
        .style7
        {
            width: 852px;
            height: 178px;
        }
        .style8
        {
            height: 178px;
        }
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
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style="width:100%; height: 350px;">
            <tr>
                <td class="style2">
                </td>
                <td class="style4" valign="bottom">
                    <asp:Button ID="Button1" runat="server" CssClass="btn" Text="新  增" 
                        onclick="Button1_Click" BackColor="#507CD1" 
                        ForeColor="White" Height="38px" Width="101px" />
                </td>
                <td class="style3">
                </td>
            </tr>
            <tr>
                <td class="style6">
                    </td>
                <td class="style7">
        <asp:GridView ID="GridView1" runat="server" Height="103px" Width="506px" 
                        onselectedindexchanged="GridView1_SelectedIndexChanged" CellPadding="4" 
                        ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
           <asp:TemplateField HeaderText=""> 
          <ItemStyle HorizontalAlign="Center" Height="30px" Width="80px"/> 
          </asp:TemplateField>  
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
                </td>
                <td class="style8">
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
    <div id="divInform" runat="server" style="border: solid 10px #898989; background: #fff; padding: 20px; width: 250px; z-index: 1000; position: absolute; display:none; top: 25%; left: 50%; margin: 100px 0 0 -200px;">
                <div style="padding: 3px 15px 3px 15px; text-align: left; vertical-align: middle;">
                    <asp:Panel ID="Panel2" runat="server">
                        <table style="width: 100%;">                            
                            <tr>
                                <td>姓名:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td>密码:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
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
    <div id="change" runat="server" style="border: solid 10px #898989; background: #fff; padding: 20px; width: 250px; z-index: 1000; position: absolute; display:none; top: 25%; left: 50%; margin: 100px 0 0 -200px;">
                <div style="padding: 3px 15px 3px 15px; text-align: left; vertical-align: middle;">
                    <asp:Panel ID="Panel1" runat="server">
                        <table style="width: 100%;"> 
                            <tr>
                                <td>当前选择:<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
                            </tr>                           
                            <tr>
                                <td>姓名:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td>密码:<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
                            </tr>
                             <tr>
                                <td >
                                    &nbsp;&nbsp;
                                    <asp:Button ID="Button6" runat="server" Text="确定" onclick="Button6_Click"  /> &nbsp; &nbsp;<asp:Button 
                                        ID="Button7" runat="server" Text="返回" onclick="Button7_Click" /></td>
                            </tr>
                        </table>
                    </asp:Panel>                  
                </div>
            </div>
             <div id="hid" runat="server" style="filter:alpha(opacity=30);-moz-opacity:0.3;opacity:0.3;background-color:#000;width:100%;height:100%;z-index:920;position: absolute;left:0;top:0;display:none;"></div>
    </form>
</body>
</html>
