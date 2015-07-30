<%@ Page Title="" Language="C#" MasterPageFile="~/monday.Master" AutoEventWireup="true" CodeBehind="orderdetails.aspx.cs" Inherits="comp2007_lesson9_mon.admin.orderdetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="grdOrders" runat="server" CssClass="table table-striped"
        AutoGenerateColumns="false" OnRowDeleting="grdOrders_RowDeleting"
        DataKeyNames="OrderID">
        <Columns>        
            <asp:BoundField DataField="orderID" HeaderText="Order ID"/>
            <asp:BoundField DataField="productID" HeaderText="Product ID"/>
            <asp:BoundField DataField="orderDate" HeaderText="Order Date"/>
            <asp:BoundField DataField="shipDate" HeaderText="Ship Date"/>
            <asp:BoundField DataField="estimateShipDate" HeaderText="Estimated Shipping Date"/>
            <asp:BoundField DataField="qty" HeaderText="Quantity"/>
            <asp:BoundField DataField="price" HeaderText="Price" DataFormatString="{0:c}" />
            <asp:HyperLinkField HeaderText="Edit" NavigateUrl="orders.aspx" 
                 Text="Edit" DataNavigateUrlFields="orderID"
                 DataNavigateUrlFormatString="orders.aspx?orderID={0}" />
            <asp:CommandField DeleteText="Delete" ShowDeleteButton="true" HeaderText="Delete" />
        </Columns>
    </asp:GridView>
</asp:Content>
