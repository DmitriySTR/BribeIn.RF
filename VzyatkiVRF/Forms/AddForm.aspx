<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddForm.aspx.cs" Inherits="VzyatkiVRF.Forms.AddForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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
        .btn{
            border-radius: 8px;
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
                    
                </tr>
                <tr>
                    <td class="auto-style1"></td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
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
            <td class="auto-style9"><asp:Label ID="CBL" runat="server" Font-Size="15pt" Text="Создать обращение" ForeColor="Black"></asp:Label></td>
        </tr>
        <tr>
        <td class="auto-style8"><asp:Label ID="Label1" runat="server" Font-Size="15pt" Text="Категория:" ForeColor="Black"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:DropDownList id="SelectList" runat="server" OnSelectedIndexChanged="SelectList_SelectedIndexChanged1" >
                </asp:DropDownList>
                
            </td>
            
        </tr>
        <tr>
            <td class="auto-style8"><asp:Label ID="Label2" runat="server" Font-Size="15pt" Text="Сумма:" ForeColor="Black"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
            <asp:TextBox id="ComplSum" runat="server" type="number"  />
            <asp:RequiredFieldValidator runat="server" ID="SumEmptyVal" ControlToValidate="ComplSum" ErrorMessage="Введите сумму." Display="Dynamic">*
             </asp:RequiredFieldValidator>
            <asp:CompareValidator runat="server" ID="ValComplSum" ControlToValidate="ComplSum"  ValueToCompare="1" Type="Integer"
                operator="GreaterThanEqual" ErrorMessage="Сумма не может быть 0." Display="Dynamic">*
            </asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8"><asp:Label ID="TBL" runat="server" Font-Size="15pt" Text="Введите тему для обращения:" ForeColor="Black"></asp:Label></td>
        </tr>
        <tr>
            <td class="tb">
                <asp:TextBox ID="ComplTheme" runat="server" TextMode="MultiLine" Wrap="true" Font-Size="12pt" Text="" ForeColor="Black" Width="600px"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ID="ValComplTheme" ControlToValidate="ComplTheme" ErrorMessage="Тема не может быть пустой." Display="Dynamic">*
                </asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td><asp:Label ID="BL" runat="server" Font-Size="15pt" Text="Описание:" ForeColor="Black"></asp:Label></td>
        </tr>
        <tr>
            <td class="tb">
                        <asp:TextBox ID="TB_Description" runat="server" TextMode="MultiLine" Wrap="true" Font-Size="12pt" Text="" ForeColor="Black" Width="600px" Height="300px"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ID="DescrEmptyVal" ControlToValidate="TB_Description" ErrorMessage="Описание не может быть пустым." Display="Dynamic">*
                </asp:RequiredFieldValidator> 
                       
                    </td>
        </tr>
        <tr>
            <asp:ValidationSummary runat="server" ID="Summary"  HeaderText="Пожалуйста, исправьте следующие ошибки:" ShowMessageBox="true" />
           <td>

          <asp:Button ID="BTNAddBribe" runat="server" class="btn" Font-Size="Large" Text="Добавить взятку" ForeColor="White" BackColor="#3CB371" Width="237px" OnClick="BNB_Click" BorderStyle="Double" CssClass="btn"></asp:Button></td>
        </tr>
    </table>
        
    </form>
    </body>
</html>