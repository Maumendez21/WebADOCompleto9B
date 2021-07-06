<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebPruebaAccesoSQL.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Operaciones con la tabla ticket</h2>
            <h5>Insersión</h5>
            <p>Empleado:
                <asp:DropDownList ID="DropDownList1" runat="server" Height="36px" Width="254px">
                </asp:DropDownList>
            </p>
            <p>ID:
                <asp:TextBox ID="TextBox1" runat="server" Width="289px"></asp:TextBox>
            </p>
            fecha:
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Insertar Ticket" />
            <br />
            <br />
            <h5>Conusltas</h5>
            <br />
            <br />

        </div>
    </form>
</body>
</html>
