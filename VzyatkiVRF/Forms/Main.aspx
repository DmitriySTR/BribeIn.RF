<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="VzyatkiVRF.Forms.Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .vr
        {
            display:inline;
            height:100%;
            width:1px;
            border:1px inset;
            margin:5px
        }
        .auto-style4 {
            width: 600px;
            
        }
        .auto-style3 {
            background-color: #F5F5F5;
        }

        .tb {
            background-color: #F5F5F5;
        }
        .tb1 {
            width:100%;
            background-color: #FFFFFF;
        }

        .auto-style5 {
            width: 36px;
        }

        .auto-style6 {
            background-color: #FFFFFF;
            width: 600px;
            height: 100px;
        }

    </style>
</head>
<body>

    <form id="form1" runat="server" class="tb">
        <div style="text-align: center; vertical-align: middle;">
            <table class="tb1" >
                <tr>
                    <td class="auto-style1"><img src="http://s013.radikal.ru/i322/1705/8c/38a191c61276.png"/>
        </td>
                    <td>
        <asp:Label ID="SearchLabel" runat="server" Font-Size="Large" Text="Поиск по взяткам:"></asp:Label>
        <asp:TextBox runat="server" id="SearchString" type="text" name="SearchString"/><asp:Button runat="server" type="submit" text="Найти" id="ButtonFind" OnClick="ButtonFind_Click"/></td>
                    <td class="auto-style5">
        <asp:Button ID="Add" runat="server" Font-Size="Large" Text="Добавить взятку" ForeColor="White" BackColor="#3CB371" Width="237px" OnClick="Add_Click"></asp:Button></td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
            </table>
        </div>

        <table align="center" class="auto-style4">
            <tr>
                <td>
        <center><asp:Button ID="BP" runat="server" Font-Size="Large" Text="Предыдущая" ForeColor="White" BackColor="#3CB371" Width="150px" OnClick="BP_Click"></asp:Button></center></td>
                <td><center><asp:Label ID="LN" runat="server" Font-Size="20pt" Text="1" ForeColor="Black"></asp:Label></center></td>                   
                <td>
        <center><asp:Button ID="BN" runat="server" Font-Size="Large" Text="Следующая" ForeColor="White" BackColor="#3CB371" Width="150px" OnClick="BN_Click"></asp:Button></center></td>
            </tr>
            
        </table>
            
            <table border='0' align="center" BGCOLOR="white" cellpadding="8"  cellspacing="12" class="auto-style3">
                <tr runat="server" id="TR1">
                    <td class="auto-style6"><asp:HyperLink ID="BL1" runat="server" Font-Size="20pt" Text="Взятка 1" ForeColor="Black"></asp:HyperLink>
                        <br />
                        <asp:Label ID="TBI1" runat="server" readOnly="true" TextMode="MultiLine" Wrap="true" Font-Size="12pt" Text="Тут находится полная информация по взятке №1" ForeColor="Black" Width="600px" Height="60px"></asp:Label>
                    </td>
                </tr>                    
                <tr runat="server" id="TR2">
                    <td class="auto-style6"><asp:HyperLink ID="BL2" runat="server" Font-Size="20pt" Text="Взятка 2" ForeColor="Black"></asp:HyperLink>
                        <br />
                        <asp:Label ID="TBI2" runat="server" readOnly="true" TextMode="MultiLine" Wrap="true" Font-Size="12pt" Text="Тут находится полная информация по взятке №2" ForeColor="Black" Width="600px" Height="60px"></asp:Label>
                       
                    </td>
                </tr>
                <tr runat="server" id="TR3">
                    <td class="auto-style6"><asp:HyperLink ID="BL3" runat="server" Font-Size="20pt" Text="Взятка 3" ForeColor="Black"></asp:HyperLink>
                        <br />
                        <asp:Label ID="TBI3" runat="server" readOnly="true" TextMode="MultiLine" Wrap="true" Font-Size="12pt" Text="Тут находится полная информация по взятке №3" ForeColor="Black" Width="600px" Height="60px"></asp:Label>
                    </td>
                </tr>
                <tr runat="server" id="TR4">
                    <td class="auto-style6"><asp:HyperLink ID="BL4" runat="server" Font-Size="20pt" Text="Взятка 4" ForeColor="Black"></asp:HyperLink>
                        <br />
                        <asp:Label ID="TBI4" runat="server" readOnly="true" TextMode="MultiLine" Wrap="true" Font-Size="12pt" Text="Тут находится полная информация по взятке №4" ForeColor="Black" Width="600px" Height="60px"></asp:Label>
                  
                    </td>
                </tr>
                <tr runat="server" id="TR5">
                    <td class="auto-style6"><asp:HyperLink ID="BL5" runat="server" Font-Size="20pt" Text="Взятка 5" ForeColor="Black"></asp:HyperLink>
                        <br />
                        <asp:Label ID="TBI5" runat="server" readOnly="true" TextMode="MultiLine" Wrap="true" Font-Size="12pt" Text="Тут находится полная информация по взятке №5" ForeColor="Black" Width="600px" Height="60px"></asp:Label>
                    </td>
                </tr>
                <tr runat="server" id="TR6">
                    <td class="auto-style6"><asp:HyperLink ID="BL6" runat="server" Font-Size="20pt" Text="Взятка 6" ForeColor="Black"></asp:HyperLink>
                        <br />
                        <asp:Label ID="TBI6" runat="server" readOnly="true" TextMode="MultiLine" Wrap="true" Font-Size="12pt" Text="Тут находится полная информация по взятке №6" ForeColor="Black" Width="600px" Height="60px"></asp:Label>
                        
                    </td>
                </tr>
                            
            </table> 
    </form>
     
        </body>
</html>
