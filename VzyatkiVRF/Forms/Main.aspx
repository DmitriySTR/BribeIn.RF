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

        .auto-style5 {
            width: 36px;
        }

        .auto-style6 {
            width: 600px;
            height: 100px;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center; vertical-align: middle;">
            <table style="width:100%;">
                <tr>
                    <td class="auto-style1">
        <asp:Label ID="NameLabel" runat="server" Font-Size="32pt" Text="Взяткив.рф" ForeColor="Blue" Font-Bold="True" Font-Italic="True"></asp:Label></td>
                    <td>
        <asp:Label ID="SearchLabel" runat="server" Font-Size="20pt" Text="Поиск по взяткам:"></asp:Label>
        <input type="text" runat="server" ID="SearchBox" name="SearchString"/><input type="submit" value="Найти" name="Search"/></td>
                    <td class="auto-style5">
        <asp:Button ID="Add" runat="server" Font-Size="X-Large" Text="Добавить взятку" ForeColor="Black" BackColor="#0099CC" Width="237px"></asp:Button></td>
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

        <table class="auto-style4">
            <tr>
                <td>
        <center><asp:Button ID="BP" runat="server" Font-Size="Large" Text="Предыдущая" ForeColor="Black" BackColor="#00FFCC" Width="150px"></asp:Button></center></td>
                <td><center><asp:Label ID="LN" runat="server" Font-Size="20pt" Text="1" ForeColor="Black"></asp:Label></center></td>                   
                <td>
        <center><asp:Button ID="BN" runat="server" Font-Size="Large" Text="Следующая" ForeColor="Black" BackColor="#00FFCC" Width="150px" OnClick="BN_Click"></asp:Button></center></td>
            </tr>
            
        </table>
  
            <table border='3' class="auto-style3">
                <tr>
                    <td class="auto-style6"><asp:Label ID="BL1" runat="server" Font-Size="20pt" Text="Взятка 1" ForeColor="Red"></asp:Label>
                        <br />
                        <asp:TextBox ID="TBI1" runat="server" readOnly="true" TextMode="MultiLine" Wrap="true" Font-Size="12pt" Text="Тут находится полная информация по взятке №1" ForeColor="Black" Width="600px" Height="60px"></asp:TextBox>
                       
                    </td>
                </tr>                    
                <tr>
                    <td class="auto-style6"><asp:Label ID="BL2" runat="server" Font-Size="20pt" Text="Взятка 2" ForeColor="Red"></asp:Label>
                        <br />
                        <asp:TextBox ID="TBI2" runat="server" readOnly="true" TextMode="MultiLine" Wrap="true" Font-Size="12pt" Text="Тут находится полная информация по взятке №2" ForeColor="Black" Width="600px" Height="60px"></asp:TextBox>
                       
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6"><asp:Label ID="BL3" runat="server" Font-Size="20pt" Text="Взятка 3" ForeColor="Red"></asp:Label>
                        <br />
                        <asp:TextBox ID="TBI3" runat="server" readOnly="true" TextMode="MultiLine" Wrap="true" Font-Size="12pt" Text="Тут находится полная информация по взятке №3" ForeColor="Black" Width="600px" Height="60px"></asp:TextBox>
                       
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6"><asp:Label ID="BL4" runat="server" Font-Size="20pt" Text="Взятка 4" ForeColor="Red"></asp:Label>
                        <br />
                        <asp:TextBox ID="TBI4" runat="server" readOnly="true" TextMode="MultiLine" Wrap="true" Font-Size="12pt" Text="Тут находится полная информация по взятке №4" ForeColor="Black" Width="600px" Height="60px"></asp:TextBox>
                       
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6"><asp:Label ID="BL5" runat="server" Font-Size="20pt" Text="Взятка 5" ForeColor="Red"></asp:Label>
                        <br />
                        <asp:TextBox ID="TBI5" runat="server" readOnly="true" TextMode="MultiLine" Wrap="true" Font-Size="12pt" Text="Тут находится полная информация по взятке №5" ForeColor="Black" Width="600px" Height="60px"></asp:TextBox>
                       
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6"><asp:Label ID="BL6" runat="server" Font-Size="20pt" Text="Взятка 6" ForeColor="Red"></asp:Label>
                        <br />
                        <asp:TextBox ID="TBI6" runat="server" readOnly="true" TextMode="MultiLine" Wrap="true" Font-Size="12pt" Text="Тут находится полная информация по взятке №6" ForeColor="Black" Width="600px" Height="60px"></asp:TextBox>
                       
                    </td>
                </tr>
                            
            </table> 
    </form>
</body>
</html>

