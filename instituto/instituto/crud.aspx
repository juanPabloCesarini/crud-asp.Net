<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="crud.aspx.cs" Inherits="instituto.crud" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="idMateria" DataSourceID="baseInstituto" InsertItemPosition="LastItem">
                <AlternatingItemTemplate>
                    <li style="background-color: #FFF8DC;">idMateria:
                        <asp:Label ID="idMateriaLabel" runat="server" Text='<%# Eval("idMateria") %>' />
                        <br />
                        nombreMateria:
                        <asp:Label ID="nombreMateriaLabel" runat="server" Text='<%# Eval("nombreMateria") %>' />
                        <br />
                        turnoMateria:
                        <asp:Label ID="turnoMateriaLabel" runat="server" Text='<%# Eval("turnoMateria") %>' />
                        <br />
                        profesorMateria:
                        <asp:Label ID="profesorMateriaLabel" runat="server" Text='<%# Eval("profesorMateria") %>' />
                        <br />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Editar" />
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Eliminar" />
                    </li>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <li style="background-color: #008A8C;color: #FFFFFF;">idMateria:
                        <asp:Label ID="idMateriaLabel1" runat="server" Text='<%# Eval("idMateria") %>' />
                        <br />
                        nombreMateria:
                        <asp:TextBox ID="nombreMateriaTextBox" runat="server" Text='<%# Bind("nombreMateria") %>' />
                        <br />
                        turnoMateria:
                        <asp:TextBox ID="turnoMateriaTextBox" runat="server" Text='<%# Bind("turnoMateria") %>' />
                        <br />
                        profesorMateria:
                        <asp:TextBox ID="profesorMateriaTextBox" runat="server" Text='<%# Bind("profesorMateria") %>' />
                        <br />
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Actualizar" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancelar" />
                    </li>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    No se han devuelto datos.
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <li style="">nombreMateria:
                        <asp:TextBox ID="nombreMateriaTextBox" runat="server" Text='<%# Bind("nombreMateria") %>' />
                        <br />turnoMateria:
                        <asp:TextBox ID="turnoMateriaTextBox" runat="server" Text='<%# Bind("turnoMateria") %>' />
                        <br />profesorMateria:
                        <asp:TextBox ID="profesorMateriaTextBox" runat="server" Text='<%# Bind("profesorMateria") %>' />
                        <br />
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insertar" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Borrar" />
                    </li>
                </InsertItemTemplate>
                <ItemSeparatorTemplate>
<br />
                </ItemSeparatorTemplate>
                <ItemTemplate>
                    <li style="background-color: #DCDCDC;color: #000000;">idMateria:
                        <asp:Label ID="idMateriaLabel" runat="server" Text='<%# Eval("idMateria") %>' />
                        <br />
                        nombreMateria:
                        <asp:Label ID="nombreMateriaLabel" runat="server" Text='<%# Eval("nombreMateria") %>' />
                        <br />
                        turnoMateria:
                        <asp:Label ID="turnoMateriaLabel" runat="server" Text='<%# Eval("turnoMateria") %>' />
                        <br />
                        profesorMateria:
                        <asp:Label ID="profesorMateriaLabel" runat="server" Text='<%# Eval("profesorMateria") %>' />
                        <br />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Editar" />
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Eliminar" />
                    </li>
                </ItemTemplate>
                <LayoutTemplate>
                    <ul id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                        <li runat="server" id="itemPlaceholder" />
                    </ul>
                    <div style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                        <asp:DataPager ID="DataPager1" runat="server">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                            </Fields>
                        </asp:DataPager>
                    </div>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <li style="background-color: #008A8C;font-weight: bold;color: #FFFFFF;">idMateria:
                        <asp:Label ID="idMateriaLabel" runat="server" Text='<%# Eval("idMateria") %>' />
                        <br />
                        nombreMateria:
                        <asp:Label ID="nombreMateriaLabel" runat="server" Text='<%# Eval("nombreMateria") %>' />
                        <br />
                        turnoMateria:
                        <asp:Label ID="turnoMateriaLabel" runat="server" Text='<%# Eval("turnoMateria") %>' />
                        <br />
                        profesorMateria:
                        <asp:Label ID="profesorMateriaLabel" runat="server" Text='<%# Eval("profesorMateria") %>' />
                        <br />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Editar" />
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Eliminar" />
                    </li>
                </SelectedItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource ID="baseInstituto" runat="server" ConnectionString="<%$ ConnectionStrings:cnxInstituto %>" DeleteCommand="DELETE FROM [materias] WHERE [idMateria] = @idMateria" InsertCommand="INSERT INTO [materias] ([nombreMateria], [turnoMateria], [profesorMateria]) VALUES (@nombreMateria, @turnoMateria, @profesorMateria)" SelectCommand="SELECT * FROM [materias]" UpdateCommand="UPDATE [materias] SET [nombreMateria] = @nombreMateria, [turnoMateria] = @turnoMateria, [profesorMateria] = @profesorMateria WHERE [idMateria] = @idMateria">
                <DeleteParameters>
                    <asp:Parameter Name="idMateria" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="nombreMateria" Type="String" />
                    <asp:Parameter Name="turnoMateria" Type="String" />
                    <asp:Parameter Name="profesorMateria" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="nombreMateria" Type="String" />
                    <asp:Parameter Name="turnoMateria" Type="String" />
                    <asp:Parameter Name="profesorMateria" Type="String" />
                    <asp:Parameter Name="idMateria" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
