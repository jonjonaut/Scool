<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="underground.aspx.cs" Inherits="ProjectJon.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <img src="images/underground.png"/>

    <div class="title">
        <h1 id="title">
        <span>The Steam Underground</span>
        <hr/>
        <marquee class="construction funny" truespeed="" scrolldelay="40" scrollamount="3" style="position: absolute">Under Construction</marquee>
        </h1>
        
    </div>

    <div id="tabler" class="tabler" style="margin-top: -14.5%"><div class="tablertitle"><h2>Contents</h2></div>
        <ul>
            <li>
                <a href="#title">
                    <span>1</span>  <span class="tablertext">Steam Underground</span>

                </a>
                <ul>
                   
                    <li>
                        <a href="#background">
                            <span>2</span>  <spam class="tablertext">Background</spam>
                        </a>
                    </li>
                </ul>
            </li>
        </ul>

    </div>
    <p>
        <a class="hyperline" href="https://cs.rin.ru/">Steam Underground</a> is a russian forum which is embedded inside of the cs.rin.ru site 
        for sharing piracy tools and games specifically from steam.
        And is basically where most game crackers like to send their
        <a class="hyperline" href="https://en.wikipedia.org/wiki/Software_cracking">cracked</a> games
        initially. Usually, if you're unable to find games on other piracy sites you might be lucky to find them here,
        or at least have the tools required to contribute and help preserve games yourself!
    </p>
    <h2 id="background">Background</h2>
    <p>
        <img src="images/rin.png"/>
        rin.ru, RIN being an acronym for Russian Information Network is a russian organization which encouraged internet use in russia
        in the early 2000s. Providing people with domains and such. Which later also provided a forum which was based around Counter Strike 1.6.
        It eventually evolved into the forum we know today. Providing very useful Game Preservation tools, such as <a class="hyperline" href="https://en.wikipedia.org/wiki/Digital_rights_management">DRM</a> removers and Steam emulators
        and cracked games.

    </p>
</asp:Content>
