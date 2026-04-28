<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ADMINISTRATOR.aspx.cs" Inherits="ProjectJon.ADMINISTRATOR" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Hello there</h1>
    <form method="post">
        <%if (Session["admin"] != null)
            {%>
            <pre style="font-family: Impact">Would you like to kill the server</pre>
            <span>
                    <input type="submit" name="die" value="yes">

            </span>
            <span>
                    <input type="submit" name="die" value="yes">

            </span
            
            <div>
                <h3>Search User:</h3>
                <input type="text" name="searchuser" />
                <input type="submit" name="searchsub" value="submit"/>

 
            </div>

            <div>
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
