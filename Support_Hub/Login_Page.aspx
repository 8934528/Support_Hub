<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Login_Page.aspx.cs" Inherits="Support_Hub.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="css/login.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container text-center Log-Con mt-5 rounded-4">
        <div class="row">

            <div class="col-md-6 log-left">
                <div class="container-fluid">
                    <div class="mt-3">
                        <h3>Nice To See You Again</h3>
                    </div>
                    <div>
                        <h1>Welcome Back</h1>
                    </div>
                </div>
            </div>

            <div class="col-md-6 log-right">
                <div class="mt-2">
                    <div class="mt-5">
                        <asp:Label ID="lblLogAcc" runat="server" Text="Login Account" CssClass="form-label"></asp:Label>
                    </div>
                    <div class="mt-4">
                        <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control mb-3" Placeholder="Username"></asp:TextBox>
                    </div>
                    <div class="mt-3">
                        <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control mb-3" Placeholder="Password" TextMode="Password"></asp:TextBox>
                    </div>
                    <div class="mt-3">
                        <asp:Button ID="btnLogin" runat="server" Text="Log In" CssClass="btn btn-primary btn-login mb-4" OnClick="btnLogin_Click" />
                    </div>
                    <div class="register-container mb-2">
                        <span>Don't have an account?</span>
                        <asp:HyperLink ID="hlRegister" runat="server" CssClass="register-link" NavigateUrl="~/Register_Page.aspx">Register</asp:HyperLink>
                    </div>
                </div>
            </div>

        </div>
    </div>
</asp:Content>
