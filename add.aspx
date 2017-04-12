<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Взятки.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">


        .auto-style5 {
            width: 36px;
        }

        #Select1 {
            width: 200px;
        }

        #Select2 {
            width: 200px;
        }

        #SC {
            width: 250px;
        }
        #SS {
            width: 250px;
        }

        .auto-style8 {
            height: 26px;
        }
        #Text1 {
            width: 500px;
        }
        #Text2 {
            width: 500px;
            height: 252px;
        }

        #TT {
            width: 250px;
        }

        .auto-style9 {
            height: 35px;
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
        <input type="text" name="SearchString"/><input type="submit" value="Найти" name="Search"/></td>
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
        
    <table style="width:100%;">
        <tr>
            <td class="auto-style9"><asp:Label ID="CBL" runat="server" Font-Size="20pt" Text="Создать обращение" ForeColor="Black"></asp:Label></td>
        </tr>
        <tr>
            <td>
                <select id="SC" name="D1">
                    <option disabled="disabled">Выберете категорию</option>
                    <option value="C1">Категория 1</option>
                    <option value="C2">Категория 2</option>
                    <option value="C3">Категория 3</option>
                </select><select id="SS" name="D2">
                    <option disabled="disabled">Выберете сумму</option>
                    <option value="S1">Сумма 1</option>
                    <option value="S2">Сумма 2</option>
                    <option value="S3">Сумма 3</option>
                </select>

            </td>
        </tr>
        <tr>
            <td class="auto-style8"><asp:Label ID="TBL" runat="server" Font-Size="15pt" Text="Введите тему для обращения:" ForeColor="Black"></asp:Label></td>
        </tr>
        <tr>
            <td>
                <input id="TT" type="text" /></td>
        </tr>
        <tr>
            <td><asp:Label ID="BL" runat="server" Font-Size="15pt" Text="Описание:" ForeColor="Black"></asp:Label></td>
        </tr>
        <tr>
            <td>
                        <asp:TextBox ID="TB" runat="server" TextMode="MultiLine" Wrap="true" Font-Size="12pt" Text="" ForeColor="Black" Width="600px" Height="300px"></asp:TextBox>
                       
                    </td>
        </tr>
        <tr>
           <td><asp:Button ID="BNB" runat="server" Font-Size="X-Large" Text="Добавить взятку" ForeColor="Black" BackColor="#0099CC" Width="237px"></asp:Button></td>
        </tr>
    </table>
        
    </form>
    </body>
</html>
