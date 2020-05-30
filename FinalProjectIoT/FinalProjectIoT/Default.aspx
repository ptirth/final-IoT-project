<%@ Page Title="Heart Rate Monitor" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="FinalProjectIoT._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron" aria-expanded="true">
        <h1>Heart Rate Monitor</h1>
        <p class="lead">A personal monitoring device that senses the pulse rate of the users in real time.
            
            </p>
            &nbsp;
            &nbsp;
        &nbsp;
            &nbsp;
            <asp:Button ID="Button1" runat="server" Text="Patient" BackColor="#3399FF" ForeColor="White" Height="48px" OnClick="Button1_Click" Width="126px" />
            &nbsp;
            &nbsp;
            &nbsp;
            &nbsp;
         &nbsp;
            &nbsp;
            &nbsp;
            &nbsp;
            <asp:Button ID="Button2" runat="server" Text="Doctor" BackColor="#3399FF" ForeColor="White" Height="48px" OnClick="Button2_Click" Width="126px" margin-left="50px"/>
        
    </div>

    <div class="row">
    </div>

</asp:Content>
