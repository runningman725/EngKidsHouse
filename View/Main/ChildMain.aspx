<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="ChildMain.aspx.cs" Inherits="EngHouse.ChildMain" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyBody" runat="server">
    <%if (Request.QueryString["CategoryID"]=="1") { %>
    <p class="fs-1 text-primary text-center">From Infant</p>
    <% } else if (Request.QueryString["CategoryID"] == "2") { %>
    <p class="fs-1 text-primary  text-center">From Kid</p>
    <%} else if (Request.QueryString["CategoryID"]=="3") { %>
    <p class="fs-1 text-primary  text-center">From Youth</p>
    <%} %>
</asp:Content>
