<%@ Page Title="Patient" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Patient.aspx.cs" Inherits="FinalProjectIoT.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Upload your Heart Rate Monitor data below.</h2>
    <p>&nbsp;</p>
    
    <asp:FileUpload id="FileUploadControl" runat="server" />
    <br /><br />
    <asp:Button runat="server" id="UploadButton" text="Upload" onclick="UploadButton_Click" />
    <br /><br />
    <asp:Label runat="server" id="StatusLabel" text="Upload status: " />

    </asp:Content>
