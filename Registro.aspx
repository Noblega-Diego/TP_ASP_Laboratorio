<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="WebNET.Registro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Registro</title>
    <webopt:bundlereference runat="server" path="~/Content/css" />
</head>
<body>
   
    <form id="form1" runat="server" class="form">
    <asp:ScriptManager runat="server">
        <Scripts runat="server">
            <asp:ScriptReference Name="jquery" />
            <asp:ScriptReference runat="server" Name="bootstrap" />
        </Scripts>
    </asp:ScriptManager>
        <div class="container">
            <asp:Label runat="server" class="form-label">nombre</asp:Label>
            <div class="input-group">
                <asp:TextBox runat="server" ID="inNombre" placeholder="nombre" class="form-control form-control-sm in-text-sm"></asp:TextBox>
                <asp:TextBox runat="server" ID="inApellido" placeholder="apellido" class="form-control form-control-sm in-text-m"></asp:TextBox>
            </div>
            <asp:RequiredFieldValidator 
                ControlToValidate="inNombre"   
                ErrorMessage="El nombre no puede estar vacio"   
                Display="Static"
                Width="100%"   
                runat="server"/>
            <asp:RequiredFieldValidator 
                ControlToValidate="inApellido"   
                ErrorMessage="El apellido no puede estar vacio"   
                Display="Static"
                Width="100%"   
                runat="server"/>
        </div>
        <div class="container input-group-sm">
            <asp:Label class="form-label" Text="Nombre de usuario" runat="server" />
            <div class="input-group input-group-sm mb-3">
                <asp:TextBox runat="server" class="form-control in-text-l" ID="inNameUser"></asp:TextBox>
                <span class="input-group-text">@example.com</span>
            </div>
        </div>
        <asp:RequiredFieldValidator 
                ControlToValidate="inNameUser"   
                ErrorMessage="El nombre de usuario no puede estar en blanco"   
                Display="Static"
                Width="100%"   
                runat="server"/>
        <!-- password-->
        <div class="container input-group-sm">
            <asp:Label Text="Contraseña" runat="server" class="form-label"/>
            <asp:TextBox runat="server" ID="inPassword" TextMode="Password" class="form-control form-control-sm"></asp:TextBox>
        </div>
        <asp:RequiredFieldValidator ControlToValidate="inPassword"   
                ErrorMessage="El password no puede estar vacio"   
                Display="Static" runat="server"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="PasswordValidator" runat="server" ErrorMessage="la contraseña no es segura"
            ControlToValidate="inPassword"
            ValidationExpression="[\S]{7,}">
        </asp:RegularExpressionValidator>
        <!-- password confirm-->
        <div class="container">
            <asp:Label Text="Confirma contraseña" runat="server" class="form-label"/>
            <asp:TextBox runat="server" ID="inConfirmPassword" TextMode="Password" class="form-control form-control-sm"></asp:TextBox>
        </div>
        <asp:CompareValidator ID="ComparePasswordValidator" ControlToValidate="inConfirmPassword" ControlToCompare="inPassword" runat="server"
            ErrorMessage="Las contraseña no es igual">
        </asp:CompareValidator>
        <div class="container">
            <asp:Label Text="Fecha de nacimiento" runat="server" class="form-label"/>
            <div class="input-group">
                <asp:TextBox runat="server" ID="dateDay" class="col form-control form-control-sm in-day"></asp:TextBox>
                <asp:DropDownList runat="server" ID="dateMonth" class="col form-select form-select-sm in-month"></asp:DropDownList>
                <asp:TextBox runat="server" ID="dateYear" class="col form-control form-control-sm in-year"></asp:TextBox>
            </div>
        </div>
        <div class="container">
            <asp:Label Text="Sexo" runat="server" class="form-label"/>
            <asp:DropDownList runat ="server" class="col form-select form-select-sm">
                <asp:ListItem runar ="server" Text="Seleccione su sexo" selected="true" disabled="disabled"></asp:ListItem>
                <asp:ListItem runar ="server" Text="Hombre" Value="H"></asp:ListItem>
                <asp:ListItem runar ="server" Text="Mujer" Value="M"></asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="container">
            <asp:Label runat ="server" Text="Telefono movil" class="form-label"></asp:Label>
            <asp:TextBox runat ="server" ID="inTelefono" class="col form-control form-control-sm" placeholder="(xxx) xxx-xxxx"></asp:TextBox>
        </div>
        <asp:RegularExpressionValidator ID="ValidatorRegexTelefono" runat="server" ErrorMessage="ingrese un numero de telefono valido"
            ControlToValidate="inTelefono"
            ValidationExpression="(^x\s*[0­ 9]{5}$)|(^(\([1­ 9][0­ 9]{2}\)\s)?[1­ 9][0 ­9]{2}­-[0­ 9]{4}(\sx\s*[0 9]{5})?$)">
        </asp:RegularExpressionValidator>
        <div class="container">
            <asp:Label runat="server" Text ="Direccion de correo alternativa" class="form-label"/>
            <asp:TextBox runat="server" ID="inCorreo" class="form-control form-control-sm"></asp:TextBox>
        </div>
        <asp:RegularExpressionValidator ID="ValidatorRegexCorreo" runat="server" ErrorMessage="ingrese un correo valido"
            ControlToValidate="inCorreo"
            ValidationExpression="^[\w]+@[\w]+\.(com|net|org|edu|mil)$">
        </asp:RegularExpressionValidator>
        <div class="container">
            <asp:Label runat="server" Text ="Demuestra que no eres un robot"/>
            <BotDetect:WebFormsCaptcha runat="server" ID="Captacha" 
            UserInputID="CaptchaCodeTextBox" />
            <div>
                <asp:TextBox runat="server" ID="CaptachaTextBox"  ></asp:TextBox>
                <asp:TextBox runat="server" Text="" ID="CaptachaConfirm" Enabled ="false" Width="86px"></asp:TextBox>
            </div>
        </div>
        <div class="container">
            <asp:Label runat="server" Text ="Seleccione la nacionalidad"/>
            <asp:DropDownList runat="server" class="col form-select form-select-sm">
                <asp:ListItem runat="server" Text="Argentina"/>
                <asp:ListItem runat="server" Text="Brasil"/>
                <asp:ListItem runat="server" Text="Chile"/>
            </asp:DropDownList>
        </div>
        <div class="container">
            <div class="input-group">
                <asp:CheckBox runat="server"/>
                <span>Acepto las Condiciones del servicio y la Politica de privacidad</span>
            </div>
            <asp:Button runat="server" Text="Enviar"/>
        </div>
    </form>
</body>
</html>
