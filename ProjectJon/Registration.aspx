<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="ProjectJon.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="titleboxing">Register</h1>
    <% if (isLogin)
    {%>
        <span style="margin-left: 5vw">User <%=Request.Form["username"]%> registered successfully!</span>

  <%}%>
    <% if (isDuplicate)
      {%>
        <span style="margin-left: 5vw">Username already taken! Please try a different username.</span>

    <%}%>
    <% if (isEmpty)
      {%>
        <span style="margin-left: 5vw">Either Username or Password are empty! Please try again.</span>

    <%}%>
    <form method="post" action="Registration.aspx">
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

            My favorite site here:

            <span><input type="radio" name="favoritethatworks" value="Myrient" selected/> Myrient </span>
            <span><input type="radio" name="favoritethatworks" value="TorrentLeech" /> TorrentLeech </span>
            <span><input type="radio" name="favoritethatworks" value="Underground" /> Steam Underground </span>

            <input type="submit" name="submit" value="Register" style="padding: 10px 20px">

            </pre>
        </div>
    </form>
</asp:Content>
