<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowComplaint.aspx.cs" Inherits="VzyatkiVRF.Forms.ShowComplaint" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <style type="text/css">

        

        .auto-style5 {
            width: 36px;
        }
        .tb1 {
            width:100%;
            background-color: #FFFFFF;
            margin-bottom: 0px;
        }
        .tb {
            background-color: #F5F5F5;
        }
        .tb2 {
            width: 100%;
            background-color: #F5F5F5;
            margin-bottom: 0px;
        }
        .tb3 {
            background-color: #FFFFFF;
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

        .auto-style1 {
            width: 50%;
        }

        </style>
</head>
<body>
    <form id="form1" runat="server" class="tb">
        <div style="text-align: center; vertical-align: middle;">
            <table class="tb1" >
                
                <tr>
                    <td class="auto-style1"><img src="http://s013.radikal.ru/i322/1705/8c/38a191c61276.png">
        </td>
                    <td class="auto-style1">
        <asp:Button ID="Add" runat="server" Font-Size="Large" Text="Добавить взятку" ForeColor="White" BackColor="#3CB371" Width="237px" OnClick="Add_Click"></asp:Button></td>
                    
                </tr>
                
              
            </table>
        </div>
        <table class="tb2">
        <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
            </table>

        <table align="center" style="width:600px;" BGCOLOR="white" cellpadding="8"  cellspacing="12" class="tb1">
        <tr>
            <td class="tb3">
                <asp:Label ID="ComplTheme" runat="server" TextMode="MultiLine" Wrap="true" Font-Size="30pt" Text="Тема" ForeColor="Black" Width="600px"></asp:Label>
               
            </td>
        </tr>
        <tr>
            <td class="tb3">
                        <asp:Label ID="TB_Description" runat="server" TextMode="MultiLine" Wrap="true" Font-Size="15pt" Text="Описание" ForeColor="Black" Width="600px" Height="300px"></asp:Label>
                       
                    </td>
        </tr>
            <tr>
            <td class="tb3">
                <asp:Label ID="DATA" runat="server" TextMode="MultiLine" Wrap="true" Font-Size="15pt" Text="Дата" ForeColor="Black" Width="600px"></asp:Label>
               
            </td>
        </tr>
            <tr>
            <td class="tb3">
                <asp:Label ID="CTG" runat="server" TextMode="MultiLine" Wrap="true" Font-Size="15pt" Text="Категория" ForeColor="Black" Width="600px"></asp:Label>
               
            </td>
        </tr>
        <tr>
           <td>

          <asp:Button ID="BTP" runat="server" Font-Size="Large" Text="Назад" ForeColor="White" BackColor="#3CB371" Width="237px" OnClick="BTP_Click"></asp:Button></td>
        </tr>
    </table>



    </form>
</body>
</html>
