<%@ Page Title="" Language="C#" MasterPageFile="~/monday.Master" AutoEventWireup="true" CodeBehind="orders.aspx.cs" Inherits="comp2007_lesson9_mon.admin.orders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Order Table</h1>
    <div class="form-group">
        <label for="txtOrderDate" class="col-sm-3">Date:</label>
        <asp:TextBox ID="txtOrderDate" runat="server" required="true" MaxLength="50"/>
    </div>
    <div class="form-group">
        <label for="txtShipDate" class="col-sm-3">Ship Date:</label>
        <asp:TextBox ID="txtShipDate" runat="server" required="true" MaxLength="50"/>
    </div>
    <div class="form-group">
        <label for="txtEstShipDate" class="col-sm-3">Estimated Ship Date:</label>
        <asp:TextBox ID="txtEstShipDate" runat="server" required="true" MaxLength="50"/>
    </div>
    <div class="form-group">
        <label for="txtqty" class="col-sm-3">Quantity:</label>
        <asp:TextBox ID="txtqty" runat="server" required="true" MaxLength="50"/>
    </div>
    <div class="form-group">
        <label for="txtPrice" class="col-sm-3">Price:</label>
        <asp:TextBox ID="txtPrice" runat="server" required="true" MaxLength="50"/>
    </div>
    <div class="form-group">
        <label for="txtTax" class="col-sm-3">Tax:</label>
        <asp:TextBox ID="txtTax" runat="server" required="true" MaxLength="50"/>
    </div>
    <asp:Button ID="btnSave" runat="server" Text="Save Order" CssClass="btn btn-primary" OnClick="btnSave_Click" />
</asp:Content>
