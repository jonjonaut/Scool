<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ProjectJon.images.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="titleboxing">Login</h1>
    <hr />
    <form method="post">
        <div class="login" style="width: fit-content" >
            <pre>
                <input type="text" name="username" id="username" value="" /> <span style="font-size: 26px">Enter your Username</span>

                <input type="password" name="pass" id="pass" value="" /> <span style="font-size: 26px">Enter your Password</span>

                <input type="submit" name="submit" value="Shoot" style="padding: 10px 20px">


            </pre>
        </div>
    </form>
</asp:Content>
