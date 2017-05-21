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
                    <td class="auto-style5"></td>
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
            <td class="auto-style8"><asp:Label ID="Label1" runat="server" Font-Size="15pt" Text="Категория:" ForeColor="Black"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:DropDownList id="SelectList" runat="server" >
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
            <td>
                <asp:TextBox runat="server" id="ComplTheme" type="text" />
                <asp:RequiredFieldValidator runat="server" ID="ValComplTheme" ControlToValidate="ComplTheme" ErrorMessage="Тема не может быть пустой." Display="Dynamic">*
                </asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator runat="server" ID="ComplEmptyVal" ControlToValidate="ComplTheme" ValidationExpression="\S{5,100}" ErrorMessage="Длина темы должна бть от 5 до 100 символов." Display="Dynamic">*
                </asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td><asp:Label ID="BL" runat="server" Font-Size="15pt" Text="Описание:" ForeColor="Black"></asp:Label></td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="TB_Description" runat="server" TextMode="MultiLine" Wrap="true" Font-Size="12pt" Text="" ForeColor="Black" Width="600px" Height="300px"></asp:TextBox>
                <asp:RegularExpressionValidator runat="server" ID="DescrLengthVal" ControlToValidate="TB_Description" ValidationExpression="\S{5,5000}" ErrorMessage="Длина описания должна бsть от 50 до 2000 символов." Display="Dynamic">*
                </asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator runat="server" ID="DescrEmptyVal" ControlToValidate="TB_Description" ErrorMessage="Описание не может быть пустым." Display="Dynamic">*
                </asp:RequiredFieldValidator> 
            </td>
        </tr>
        <tr>
           <asp:ValidationSummary runat="server" ID="Summary" DisplayMode="BulletList"  HeaderText="Пожалуйста, исправьте следующие ошибки:" ShowMessageBox="true" />
           <td><asp:Button ID="BTNAddBribe" runat="server" Font-Size="X-Large" Text="Добавить взятку" ForeColor="Black" BackColor="#0099CC" Width="237px" OnClick="BTNAddBribe_Click"></asp:Button></td>
        </tr>
    </table> 
    </form>
    </body>
</html>

