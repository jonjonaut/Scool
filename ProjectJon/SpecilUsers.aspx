<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SpecilUsers.aspx.cs" Inherits="ProjectJon.SpecilUsers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="color:white">
        <h1>Welcome to the special users page!</h1>
        
        This is your profile.

        <%= Session["User"] %> <%= Dtable.Columns.Count %>  <%= notherThingamajiga %>

        <%if (Dtable.Rows.Count > 0) {%>
            <div>
                <table border="<%=Dtable.Columns.Count%>" cellspacing="0" cellpadding="5">
                    <tbody>
                        <tr>
                            <%= myThingamajig %>
                        </tr>
                        <tr>
                            <%= notherThingamajiga %>
                        </tr>
                    </tbody>
                </table>
            </div>
        <%}%>
    </div>
</asp:Content>
