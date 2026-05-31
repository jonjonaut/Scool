<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ADMINISTRATOR.aspx.cs" Inherits="ProjectJon.ADMINISTRATOR" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Hello there</h1>
    <form method="post">
        <%if (Session["admin"] != null)
            {%>
            <pre style="font-size: 38px; font-family: Impact">This is the admin page, please proceed with caution.</pre>
            
            <div>
                <span>
                    <h3>Search:</h3>
                    <input type="text" name="searchuser" />
                    <input type="submit" name="searchsub" value="submit"/>

                    <h4>By:</h4>
                    <select name="elementation">
                        <option value="UID">Username</option>
                        <option value="UPass">Password</option>
                        <option value="Retro">Retro</option>
                        <option value="Modern">Modern</option>
                        <option value="General">General</option>
                        <option value="Movies">Movies</option>
                        <option value="Other">Other</option>
                        <option value="Favorite">Favorite</option>
                    </select>
                </span>
 
            </div>

            <div style="display: flex; align-items: left">
                <table border="<%=Dtable.Columns.Count%>" cellspacing="0" cellpadding="5">
                    <tbody>
                        <tr>
                         <%= thingamabob %>
                        </tr>    
                        <%= notherThingamabob %>
                    </tbody>
                </table>
            </div>
            
        <%}
          else
          {%>
            <h1>
                <marquee class="construction funny" truespeed="" scrolldelay="40" scrollamount="6" style="position: absolute; font-size: 65px">You're not supposed to be here. Be gone</marquee>
            </h1>
        <%}%>
    </form>
</asp:Content>
