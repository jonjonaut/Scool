<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="torrentleech.aspx.cs" Inherits="ProjectJon.torrentleech" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="title">
    <h1>
    <span>TorrentLeech</span>
    <hr/>
    <marquee class="construction funny" truespeed="" scrolldelay="40" scrollamount="3" style="position: absolute">Under Construction</marquee>
    </h1>
    
    <div>
        <p><a class="hyperline" href="https://torrentleech.org"></a>TorrentLeech is a <a class="hyperline" href="https://en.wikipedia.org/wiki/Torrent_file">Torrent</a> hoster site based around their
           <a class="hyperline" href="https://wiki.installgentoo.com/wiki/Private_trackers">Private Tracker</a> for all consumable media. Ranging from mostly movies, games and such. this is personally my goto site for fetching movies 
            for personal use. There are many pros and cons to torrenting, but in my opinion it is more about the pros rather than cons.
            Unlike Myrient for instance and many DDL(Direct Download Link) sites, TorrentLeech it self doesn't need to invest bandwidth so it could provide you with the content shared.
           
        </p>
        <h2>Registration</h2>
        <p>
            Unlike basically every site that has registration and maybe even some private trackers even, TorrentLeech doesn't outright provide access for whoever
            wants to use the site for obvious reasons such as mentioned in 
        </p>
        <h2>Hit And Run System</h2>
        <p>
            One of the most integral aspects of Private Trackers is that they give the torrents you would upload there and host much more value and less likelyhood to just get lost to time. To make that possible they and many others
            implement Hit and Run systems, they have probably the most advanced HnR(Hit and Run) system ever made. The HnR system is built behind 
            seed to leech/peer ratio. if you don't maintain up to atleast 1:1 byte ratio you will be reminded until and the ratio goes so far below that you get your account removed, which sucks as seen in "Every torrent you download, should be in turn shared with the rest of the community. It's the basis of torrenting
. If you just grab a torrent (hit) and then just delete it (run) the system would eventually fall apart." ~Read more over <a href="https://wiki.torrentleech.org/doku.php/hnr">here</a>
        </p>
    </div>
</div>
</asp:Content>
