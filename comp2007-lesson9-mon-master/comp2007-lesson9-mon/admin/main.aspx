<%@ Page Title="" Language="C#" MasterPageFile="~/monday.Master" AutoEventWireup="true" CodeBehind="main.aspx.cs" Inherits="comp2007_lesson9_mon.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="well">
            <h1>
                Dashboard
            </h1>
            <ul class="list-group">
                <li class="list-group-item"><a href="main.aspx">Home</a></li>
                <li class="list-group-item"><a href="orders.aspx">order</a></li>
                <li class="list-group-item"><a href="orderdetails.aspx">Order Details</a></li>
                <li class="list-group-item"><a href="product.aspx">Products</a></li>
            </ul>
        </div>
    </div>
</asp:Content>
