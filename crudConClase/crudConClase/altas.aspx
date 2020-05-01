<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="altas.aspx.cs" Inherits="crudConClase.altas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main class="container">
        
            <div class="form-group">
                <asp:Label ID="Label1" class="text-info text-uppercase" runat="server" Text="Nombre:"></asp:Label>
                <asp:TextBox ID="nombre" class="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="Label2" class=" text-uppercase text-info" runat="server" Text="Apellido:"></asp:Label>
                <asp:TextBox ID="apellido" class="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="Label3" class=" text-uppercase text-info" runat="server" Text="Email:"></asp:Label>
                <asp:TextBox ID="mail" class="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="Label4" class=" text-uppercase text-info" runat="server" Text="Clave:"></asp:Label>
                <asp:TextBox ID="clave" class="form-control" runat="server"></asp:TextBox>
            </div>
            <asp:Button ID="btnGuardar" class="btn btn-primary" runat="server" Text="Guardar"  OnClick="btnEnviar_Click"/>
            <asp:Button ID="btnLimpiar" class="btn btn-primary" runat="server" Text="Limpiar" OnClick="btnLimpiar_Click" />
           
        
        <asp:Label ID="lblResultado" class="text-center" runat="server" Text=""></asp:Label>
    </main>
</asp:Content>
