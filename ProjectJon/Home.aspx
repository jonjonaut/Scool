<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ProjectJon.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%if (noFade == false) {%>
        <h1 class="titlefade" style="text-align: center">Welcome to the Hallway</h1>
        <h2 class="subtitlefade" style="text-align: center; margin-top: -1%">We have</h2>
        <a href="myrient.aspx"><img src="images/myrient.png" class="image bamient" /></a>
        <a href="underground.aspx"><img src="images/underground.png" class="image zaminu" /></a>
        <a href="torrentleech.aspx"><img src="images/tl.png" class="image ramment"></a>
    <%}else {%>
        <h1 style="text-align: center">Welcome to the Hallway</h1>
        <h2 style="text-align: center; margin-top: -1%">We have</h2>
        <a href="myrient.aspx"><img src="images/myrient.png" style="opacity: 1" class="image" /></a>
        <a href="underground.aspx"><img src="images/underground.png" style="opacity: 1" class="image" /></a>
        <a href="torrentleech.aspx"><img src="images/tl.png" style="opacity: 1" class="image"></a>
    <%}%>
</asp:Content>
