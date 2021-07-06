<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebPruebaAccesoSQL.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" href="css/sweetalert2.min.css" />
<script src="js/sweetalert2.all.min.js" ></script>
<script src="js/index.js"></script>

<title></title>
</head>
<body>
    <button onclick="msgbox('jjj', 'sss', 'success')" >aaa</button>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Probar Conexión" />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Consulta DataReader" />
            <br />
            <asp:TextBox ID="TextBox1" runat="server" Width="496px"></asp:TextBox>
            <br />
            <br />
            <asp:ListBox ID="ListBox1" runat="server" Height="112px" Width="496px"></asp:ListBox>
            <br />
            <br />
            <br />
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="ConsultaDataSet" />
&nbsp;
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="ObtenDataSet" />
            <br />
            <asp:GridView ID="GridView1" runat="server" Height="159px" Width="499px">
            </asp:GridView>
            <br />
            <asp:Button ID="Button7" runat="server" Text="Button" />
            <br />
            <br />
            ID:
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
&nbsp;&nbsp; Nombre:
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Add Empleado" />
            <br />
            <br />
            idProd:
            <asp:TextBox ID="txtIdProd" runat="server"></asp:TextBox>
&nbsp;Descripcion:
            <asp:TextBox ID="txtDescripcion" runat="server"></asp:TextBox>
&nbsp;Categoria
            <asp:TextBox ID="txtCategoria" runat="server"></asp:TextBox>
&nbsp;precio
            <asp:TextBox ID="txtPrecio" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Agregar Producto" />
            <br />
            <br />
            <asp:Button ID="Button8" runat="server" OnClick="Button8_Click" Text="Consulta productos" />
            <br />
            <br />
            <asp:GridView ID="GridView2" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="167px" Width="511px">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
