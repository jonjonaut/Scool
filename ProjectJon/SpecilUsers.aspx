<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SpecilUsers.aspx.cs" Inherits="ProjectJon.SpecilUsers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="color:white">
        <h1>Welcome  <%= Session["User"] %>!</h1>
        
        This is your profile.

        <span style="margin-bottom: 5vh">
                <h3>Reset values by:</h3><select name="reset">
                
                <option value="UID" selected>Username</option>
                <option value="UPass">Password</option>
                <option value="Retro">Retro</option>
                <option value="Modern">Modern</option>
                <option value="General">General</option>
                <option value="Movies">Movies</option>
                <option value="Other">Other</option>
                <option value="Favorite">Favorite</option>

            </select>


            <input type="text" name="change" />
            <input type="submit" name="changesub" value="submit"/>
        </span>
        <span style="margin-bottom: 5vh">
            <input type="submit" name="verbose" value=<%= willVerbose ? "Hide" : "Show" %> />
        </span>

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
