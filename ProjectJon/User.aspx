    <%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="ProjectJon.User" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <% if (Session["User"] != null)
        {%>
        Welcome <%= user %>
      <%}
        else
      {%>
         <h1>
             <marquee class="construction funny" truespeed="" scrolldelay="40" scrollamount="6" style="position: absolute; font-size: 65px">You're not supposed to be here. Be gone</marquee>
        </h1>
    <%}%>
</asp:Content>
