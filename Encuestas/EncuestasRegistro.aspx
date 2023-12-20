<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EncuestasRegistro.aspx.cs" Inherits="Examen3_Natalia.Encuestas.EncuestasRegistro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Encuesta Form</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />

    <script src="Scripts/bootstrap.min.js"></script>
</head>
<body>


    <form id="form1" runat="server" style="width: 800px;">
        <div>
            <h2>Formulario de Encuesta</h2>
            <div>
                <label>Nombre:</label>
                <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control form-control-sm"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                    ControlToValidate="txtNombre" ErrorMessage="Ingresar Valor" ForeColor="Red" ValidationGroup="vgEncuesta">*</asp:RequiredFieldValidator>
            </div>
            <div>
                <label>Edad:</label>
                <asp:TextBox ID="txtEdad" runat="server" CssClass="form-control form-control-sm"></asp:TextBox>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                    ControlToValidate="txtEdad"
                    ErrorMessage="Ingresar un valor."
                    ForeColor="Red" ValidationGroup="vgEncuesta">*
                </asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server"
                    ControlToValidate="txtEdad"
                    ErrorMessage="La edad debe ser un número entre 18 y 50."
                    ForeColor="Red"
                    Type="Integer"
                    MinimumValue="18"
                    MaximumValue="50"
                    ValidationGroup="vgEncuesta">
                </asp:RangeValidator>

            </div>
            <div>
                <label>Correo Electrónico:</label>
                <asp:TextBox ID="txtCorreo" runat="server" CssClass="form-control form-control-sm"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorCorreo" runat="server"
                    ControlToValidate="txtCorreo"
                    ValidationGroup="vgEncuesta"
                    ForeColor="Red"
                    ErrorMessage="El correo electrónico es obligatorio.">
                </asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorCorreo" runat="server"
                    ControlToValidate="txtCorreo"
                    ValidationGroup="vgEncuesta"
                    ForeColor="Red"
                    ErrorMessage="Por favor, ingrese un correo electrónico válido."
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                </asp:RegularExpressionValidator>


            </div>
            <div>
                <label>Partido Político:</label>
                <asp:TextBox ID="txtPartido" runat="server" CssClass="form-control form-control-sm"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                    ControlToValidate="txtPartido" ErrorMessage="Ingresar Valor" ForeColor="Red" ValidationGroup="vgEncuesta">*</asp:RequiredFieldValidator>
            </div>
            <div>
                <asp:Button ID="btnRegistrar" runat="server" Text="Registrar Encuesta" OnClick="btnRegistrar_Click" ValidationGroup="vgEncuesta" CssClass="btn btn-success" />
                <asp:Button ID="BtnLista" runat="server" OnClick="BtnLista_Click" Text="Ir A Lista" CssClass="btn btn-primary" />

            </div>
        </div>
    </form>
</body>
</html>

