<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EncuestaLista.aspx.cs" Inherits="Examen3_Natalia.Encuestas.EncuestaLista" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"/>
    <script src="Scripts/bootstrap.min.js"></script>
    <title></title>
</head>
<body>
    <div><h1 style="text-align:center">Bienvenido al sistema De Encuestas</h1></div>
    <br />
    <br />
    <form id="form1" runat="server">
        <div>

            <asp:GridView ID="GridViewEncuestas" runat="server" AutoGenerateColumns="False" CssClass="table">
                <Columns>
                    <asp:BoundField DataField="ID_Encuesta" HeaderText="ID Encuesta" SortExpression="ID_Encuesta" />
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                    <asp:BoundField DataField="Edad" HeaderText="Edad" SortExpression="Edad" />
                    <asp:BoundField DataField="CorreoElectronico" HeaderText="Correo Electrónico" SortExpression="CorreoElectronico" />
                    <asp:BoundField DataField="PartidoPolitico" HeaderText="Partido Político" SortExpression="PartidoPolitico" />
                </Columns>
            </asp:GridView>
        </div>
        <asp:Button ID="BtnAgregarEncuesta" runat="server" OnClick="BtnAgregarEncuesta_Click" Text="Agregar Nueva Encuesta" CssClass="btn btn-primary"/>
    </form>
    

</body>
</html>
