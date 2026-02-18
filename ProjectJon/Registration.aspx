<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="ProjectJon.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Register</h1>

    <form>
        <div style="color: white">
            <h3>Enter thy details.</h3>
            <hr />
            <pre>
            <input type = "text" name = "name" id = "name" value=""> <span style="font-size: 16px">Enter your Username</span>

            <input type = "password" name = "password" id = "password" value=""> <span style="font-size: 16px">Enter your Password</span>

            <label>
            Here to pirate:

            Retro Games <span><input type="checkbox" id="toggler" runat="server" /></span>
            Modern Video Games <span><input type="checkbox" id="Checkbox3" runat="server" /></span>
            General-Purpose Roms <span><input type="checkbox" id="Checkbox4" runat="server" /></span>
            Movies <span><input type="checkbox" id="Checkbox1" runat="server" /></span>
            Other <span><input type="checkbox" id="Checkbox2" runat="server" /></span>

            </label>

            <label>
            My favorite site here:

            <input type="radio" name="favsite" value="Myrient"> Myrient
            <input type="radio" name="favsite" value="TorrentLeech"> TorrentLeech
            <input type="radio" name="favsite" value="Steam Underground"> Steam Underground
            </label>
            <input type = "submit" name = "submit" value = "submit">

            </pre>
        </div>
    </form>
</asp:Content>
