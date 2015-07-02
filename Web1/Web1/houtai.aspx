<%@ Page Language="C#" AutoEventWireup="true" CodeFile="houtai.aspx.cs" Inherits="houtai" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style2
        {
            height: 100%;
            width: 80px;
        }
        .style3
        {
           
        }
        .style4
        {
            width: 80px;
            height: 52px;
        }
        .style5
        {
            height: 41px;
            font-size: xx-large;
            color: #FFFFFF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="height:100%">
    <div style="height:100%">
        <table style="width: 100%; height: 100%;">
            <tr>
                <td bgcolor="#40A2DC" class="style2">
                    <img alt="" class="style4" src="image/pai.png" /></td>
                <td bgcolor="#40A2DC" class="style5" colspan="2">
                    <em>&nbsp;淘菜网后台管理</em></td>
            </tr>
            <tr>
                <td bgcolor="#353F4B" class="style2" valign="top">
                    
                    <asp:HyperLink ID="HyperLink1" runat="server" Target="showmenu" 
                        ForeColor="White" Width="80px" 
                        ImageUrl="~/image/jiben.png" NavigateUrl="~/guanli/guanliindex.aspx">基本信息</asp:HyperLink>                   
                    <br />
                    <asp:HyperLink ID="HyperLink2" runat="server" Target="showmenu" 
                        ForeColor="White" Width="80px" NavigateUrl="~/guanli/yonghu.aspx" ImageUrl="~/image/kehu.png">用户</asp:HyperLink>
                    <br />
                    <asp:HyperLink ID="HyperLink3" runat="server" Target="showmenu" 
                        ForeColor="White" Width="80px" NavigateUrl="~/guanli/dingdan.aspx" 
                        ImageUrl="~/image/dingdan.png">订单</asp:HyperLink>
                    
                    <br />
                    <asp:HyperLink ID="HyperLink7" runat="server" Target="showmenu" 
                        ForeColor="White" Width="80px" NavigateUrl="~/guanli/tuijianyupinglun.aspx" ImageUrl="~/image/tuijianyupinglun.png">HyperLink</asp:HyperLink>
                    
                    <br />
                    <asp:HyperLink ID="HyperLink6" runat="server" Target="showmenu" 
                        ForeColor="White" Width="80px" NavigateUrl="~/guanli/shangpin.aspx" ImageUrl="~/image/shangpin.png">HyperLink</asp:HyperLink>
                    
                    <br />
                    <asp:HyperLink ID="HyperLink5" runat="server" Target="showmenu" 
                        ForeColor="White" Width="80px" ImageUrl="~/image/guanliyuan.png" 
                        NavigateUrl="~/guanli/guanliyuan.aspx">HyperLink</asp:HyperLink>
                    
                    <br />
                    <asp:HyperLink ID="HyperLink4" runat="server" ForeColor="White" Width="80px" NavigateUrl="~/guanliyuanlogin.aspx"  ImageUrl="~/image/tuichu.png">HyperLink</asp:HyperLink>
                    
                </td>
                <td class="style3">
                   <iframe id="target"  name="showmenu" style="width:100%; height: 985px;" 
                        src="/guanli/guanliindex.aspx"></iframe></td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
