<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="formularioHTML.aspx.cs" Inherits="WebNET.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
     <form id="form1" runat="server">
        <table border="1">
            <tr>
                <td><label for="in_text">Nombre:</label></td>
                <td><input type="text" id="in_text" runat="server"/></td>
            </tr>
            <tr>
                <td><label for="in_combo">Combo box:</label></td>
                <td>
                    <select name="D1" id="in_combo">
                        <option value ="ford">ford</option>
                        <option value ="mustang">mustang</option>
                        <option value ="ferrari">ferrari</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td><label for="in_image">Imagen:</label></td>
                <td><input type="image" name="image" id="in_image"/></td>
            </tr>
            <tr>
                <td><label>Check Box:</label></td>
                <td>
                    <label><input type="checkbox" value="one"  id="cbox1"> tarea 1 </label>
                    <label><input type="checkbox" value="two"  id="cbox2"> tarea 2 </label>
                    <label><input type="checkbox" value="tree" id="cbox3"> tarea 3 </label>
                </td>
            </tr>
            <tr>
                <td>Hipervinculo</td>
                <td><a href="http://www.google.com">Google</a></td>
            </tr>
            <tr>
                <td>Radio Button</td>
                <td>
                    <label><input type="radio" name="radio" value="uno" />uno</label>
                    <label><input type="radio" name="radio" value="dos" />dos</label>
                    <label><input type="radio" name="radio" value="tres" />tres</label>
                </td>
            </tr>
            <tr>
                <td>Campo Oculto</td>
                <td><input type="hidden"/></td>
            </tr>
            <tr>
                <td>Boton</td>
                <td><input type="button" value="Button"/></td>
            </tr>
            <tr>
                <td colspan="2">Datos Ingresados</td>
            </tr>
            <tr>
                <td colspan="2">Caja de Texto:</td>
            </tr>
            <tr>
                <td colspan="2">Combo:</td>
            </tr>
            <tr>
                <td colspan="2">Imagen:</td>
            </tr>
            <tr>
                <td colspan="2">CheckBox:</td>
            </tr>
            <tr>
                <td colspan="2">Hipervinculo:</td>
            </tr>
            <tr>
                <td colspan="2">Radio Button:</td>
            </tr>
            <tr>
                <td colspan="2">Campo Oculto:</td>
            </tr>
        </table>
    </form>
</body>
</html>
