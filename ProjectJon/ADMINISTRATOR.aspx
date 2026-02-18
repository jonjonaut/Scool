<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ADMINISTRATOR.aspx.cs" Inherits="ProjectJon.ADMINISTRATOR" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Hello there</h1>
    <form method="post">
        <pre style="font-family: Impact">Would you like to kill the server</pre>
        <span>
                <input type="submit" name="die" value="yes">

        </span>
        <span>
                <input type="submit" name="die" value="yes">

        </span>
    </form>
</asp:Content>
