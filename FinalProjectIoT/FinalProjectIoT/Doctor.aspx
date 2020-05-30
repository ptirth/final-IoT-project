<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Doctor.aspx.cs" Inherits="WebApplication1.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   
    <h2> Doctor Portal</h2>
    &nbsp;
    <asp:Label id="PatientID" runat="server" text="Patient ID:"></asp:Label>    
    &nbsp;<asp:TextBox id="PatientData" runat="server"></asp:TextBox>
    <br />
    <br />
    
    <asp:Button runat="server" id="DoctorSubmit" text="Submit" OnClick="DoctorSubmit_Click" />

    <asp:Image ID="Image1" runat="server" ImageURL="~/1.jpg"/>
        
</asp:Content>
