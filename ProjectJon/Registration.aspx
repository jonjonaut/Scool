<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="ProjectJon.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Register</h1>
    <% if (isLogin)
    {%>
        User <%=Request.Form["username"]%> registered successfully! <%=Request.Form["favsite"] %>

  <%}%>
    <% if (isDuplicate)
      {%>
        Username already taken! Please try a different username.

    <%}%>
    <form>
        <div style="color: white">
            <h3>Enter thy details.</h3>
            <hr />
            <pre>
            <input type = "text" name = "regiName" id = "name" value=""> <span style="font-size: 16px">Enter your Username</span>

            <input type = "password" name = "regiPassword" id = "password" value=""> <span style="font-size: 16px">Enter your Password</span>

            <label>
            Here to pirate:

            Retro Games <span><input type="checkbox" id="retro" runat="server" /></span>
            Modern Video Games <span><input type="checkbox" id="modern"  runat="server" /></span>
            General-Purpose Roms <span><input type="checkbox" id="general" runat="server" /></span>
            Movies <span><input type="checkbox" id="movies" name="movies" runat="server" /></span>
            Other <span><input type="checkbox" id="otherPurpose" name="otherPurpose" runat="server" /></span>

            </label>

            <label>
            My favorite site here:

            <input type="radio" name="favsite" value="Myrient" runat="server"> Myrient
            <input type="radio" name="favsite" value="TorrentLeech" runat="server"> TorrentLeech
            <input type="radio" name="favsite" value="Underground" runat="server"> Steam Underground
            </label>
            <input type = "submit" name = "submit" value = "submit">

            </pre>
        </div>
    </form>
</asp:Content>
