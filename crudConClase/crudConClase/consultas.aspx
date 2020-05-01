<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="consultas.aspx.cs" Inherits="crudConClase.consultas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main class="container">
        
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="100%">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Código" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="nombre" HeaderText="Nombre" SortExpression="nombre" />
            <asp:BoundField DataField="apellido" HeaderText="Apellido" SortExpression="apellido" />
            <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
            <asp:BoundField DataField="clave" HeaderText="Clave" SortExpression="clave" />
        </Columns>
    </asp:GridView>
    </main>
    
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [tblUsuarios] ORDER BY [apellido]"></asp:SqlDataSource>
</asp:Content>
