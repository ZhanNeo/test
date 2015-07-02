<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tuijian.aspx.cs" Inherits="veg1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="../js/SlideTrans.js"></script>
    <style type="text/css">
        .style1
        {
            height: 46px;
        }
        .style2
        {
            height: 142px;
        }
        .style3
        {
            height: 46px;
            width: 143px;
        }
        .style4
        {
            height: 142px;
            width: 143px;
        }
        .style5
        {
            width: 143px;
        }
        .style6
        {
            height: 46px;
            width: 578px;
        }
        .style7
        {
            height: 142px;
            width: 578px;
        }
        .style8
        {
            width: 578px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style="width: 100%;">
            <tr>
                <td class="style3">
                    &nbsp;
                </td>
                <td align="center" class="style6">
                    <strong style="font-size: x-large">今日推荐</strong>&nbsp;
                </td>
                <td class="style1">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;
                </td>
                <td align="center" class="style7">
                    <div align="center">
                        <script type="text/javascript">
                        var focus_width=800
                        var focus_height=500
                        var text_height=20
                        var swf_height = focus_height+text_height
                        var pics=<%=pics%>;
                        var links=<%=links%>;
                        document.write('<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" width="'+ focus_width +'" height="'+ swf_height +'">');
                        document.write('<param name="allowScriptaccess" value="sameDomain"><param name="wmode" value="transparent"><param name="movie" value="1/pixviewer.swf"><param name="quality" value="high"><param name="bgcolor" value=#ffffff>');
                        document.write('<param name="menu" value="false"><param name=wmode value="opaque">');
                        document.write('<param name="FlashVars" value="pics='+pics+'&links='+links+'&borderwidth='+focus_width+'&borderheight='+focus_height+'&textheight='+text_height+'">');
                        document.write('<embed src="image/pixviewer.swf" wmode="opaque" FlashVars="pics='+pics+'&links='+links+'&borderwidth='+focus_width+'&borderheight='+focus_height+'&textheight='+text_height+'" menu="false" bgcolor=#ffffff quality="high" width="'+ focus_width +'" height="'+ swf_height +'" allowScriptaccess="sameDomain" type="application/x-shockwave-flash" />');
                        document.write('</object>');
                        </script>
                    </div>
                </td>
                <td class="style2">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;
                </td>
                <td align="center" class="style8">
                    &nbsp;</td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td align="center" class="style8">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
