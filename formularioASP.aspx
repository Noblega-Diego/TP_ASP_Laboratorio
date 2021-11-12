<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="formularioASP.aspx.cs" Inherits="WebNET.formularioASP" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Table runat="server">
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">Caja de Texto</asp:TableCell>
                <asp:TableCell runat="server"><asp:TextBox runat="server"></asp:TextBox></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">Combo</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:DropDownList runat="server" >
                        <asp:ListItem runat="server">hola</asp:ListItem>
                        <asp:ListItem runat="server">mundo</asp:ListItem>
                    </asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">CheckBox</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:CheckBox runat="server" ID="ch1" Text="SI"/>
                    <asp:CheckBox runat="server" ID="ch2" Text="NO"/>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">Radio Button</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:RadioButton runat="server" GroupName="radio" Text="Alta"/>
                    <asp:RadioButton runat="server" GroupName="radio" Text="Media"/>
                    <asp:RadioButton runat="server" GroupName="radio" Text="Baja"/>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">Boton</asp:TableCell>
                <asp:TableCell runat="server"><asp:Button  runat="server" Text="Button"/></asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>
</html>
