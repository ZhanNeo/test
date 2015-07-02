<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tuijianyupinglun.aspx.cs" Inherits="Web1.guanli.tuijianyupinglun" %>

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
            width: 112px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style="width: 100%;">
            <tr>
                <td class="style1">
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;
                </td>
                <td>
                    <strong>今日推荐管理</strong>&nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" CssClass="btn" Text="新  增" 
                        onclick="Button1_Click" BackColor="#333333" 
                        ForeColor="White" Height="38px" Width="101px" />
                    &nbsp;
                    <asp:GridView ID="GridView1" runat="server" BackColor="White" 
                        BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                        ForeColor="Black" GridLines="Horizontal">
                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#242121" />
                    </asp:GridView>
                </td>
                <td>
                    &nbsp;
                </td>
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
                    &nbsp;</td>
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
        </table>
    </div>
     <div id="divInform" runat="server" style="border: solid 10px #898989; background: #fff; padding: 20px; width: 290px; z-index: 1000; position: absolute; display:none; top: 25%; left: 50%; margin: 100px 0 0 -200px;">
                <div style="padding: 3px 15px 3px 15px; text-align: left; vertical-align: middle;">
                    <asp:Panel ID="Panel2" runat="server">
                        <table style="width: 100%;">    
                            <tr>
                                <td>商品名称:<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></td>
                            </tr>
                             <tr>
                                <td>图片位置:<asp:TextBox ID="TextBox7" runat="server"></asp:TextBox></td>
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
                                <td>商品名称:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                            </tr>
                             <tr>
                                <td>图片位置:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
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
