<%@ Page Title="" Language="C#" MasterPageFile="~/monday.Master" AutoEventWireup="true" CodeBehind="product.aspx.cs" Inherits="comp2007_lesson9_mon.admin.product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Add Product</h1>
    <div class="form-group">
        <label for="txtName" class="col-sm-3">Name:</label>
        <asp:TextBox ID="txtName" runat="server" required="true" MaxLength="50"/>
    </div>
    <div class="form-group">
        <label for="txtModel" class="col-sm-3">Model:</label>
        <asp:TextBox ID="txtModel" runat="server" required="true" MaxLength="50"/>
    </div>
    <div class="form-group">
        <label for="txtColor" class="col-sm-3">Color:</label>
        <asp:TextBox ID="txtColor" runat="server" required="true" MaxLength="50"/>
    </div>
    <div class="form-group">
            <label for="ddlRetail" class="col-sm-3">Retail:</label>
            <asp:DropDownList ID="ddlRetail" runat="server" 
                 DataTextField="name" DataValueField="retailID"></asp:DropDownList>
        </div>
    <asp:Button ID="btnAdd" runat="server" Text="Add Product" CssClass="btn btn-primary" OnClick="btnAdd_Click" />
</asp:Content>
