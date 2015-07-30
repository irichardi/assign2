<%@ Page Title="" Language="C#" MasterPageFile="~/monday.Master" AutoEventWireup="true" CodeBehind="shop.aspx.cs" Inherits="comp2007_lesson9_mon.admin.shop" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">   
       
    <div class="form-group">
            <label for="ddlProduct" class="col-sm-3">Cars:</label>
            <asp:DropDownList ID="ddlProduct" runat="server" 
                 DataTextField="name" DataValueField="productID"></asp:DropDownList>
        </div>
    <div class="form-group">
        <label for="txtqty" class="col-sm-3">Quantity:</label>
        <asp:TextBox ID="txtqty" runat="server" required="true" MaxLength="50"/>
    </div>
    <div class="form-group">
        <label for="txtPrice" class="col-sm-3">Price:</label>
        <asp:TextBox ID="txtPrice" runat="server" required="true" ReadOnly="true" Text="$10000" MaxLength="50"/>
    </div>
    <asp:Button ID="btnBuy" runat="server" Text="Buy Product" CssClass="btn btn-primary" OnClick="btnBuy_Click" />
</asp:Content>
