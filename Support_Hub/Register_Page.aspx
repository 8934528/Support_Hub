<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Register_Page.aspx.cs" Inherits="Support_Hub.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="css/login.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container text-center Reg-Con mt-5 rounded-4">
        <div class="row">

            <div class="col-md-6 reg-left">
                <div>
                    <div class="mb-3">
                        <asp:Label ID="lblRegForm" runat="server" Text="Registration Form" CssClass="form-label"></asp:Label>
                    </div>
                    <div>
                        <asp:TextBox ID="txtFullName" runat="server" CssClass="form-control mb-2" Placeholder="Full Name*"></asp:TextBox>
                    </div>
                    <div>
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control mb-2" Placeholder="Email Address*" TextMode="Email"></asp:TextBox>
                    </div>
                    <div class="row">
                        <div class="col-md-8 mb-2">
                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-select">
                                <asp:ListItem>Select User Type* </asp:ListItem>
                                <asp:ListItem Value="10004">Client</asp:ListItem>
                                <asp:ListItem Value="10003">Psychologist</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-md-4 mb-2">
                            <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-select">
                                <asp:ListItem>Sex* </asp:ListItem>
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div>
                        <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control mb-2" Placeholder="Contact Number" TextMode="Phone"></asp:TextBox>
                    </div>
                    <div>
                        <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control mb-2" Placeholder="Password*" TextMode="Password"></asp:TextBox>
                    </div>
                    <div>
                        <asp:TextBox ID="txtConfPassword" runat="server" CssClass="form-control mb-3" Placeholder="Confirm Password*" TextMode="Password"></asp:TextBox>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="btn btn-primary btn-Register mb-2" Width="150px" OnClick="btnRegister_Click" />
                        </div>
                        <div class="col-md-6">
                            <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn btn-danger btn-Cancel mb-2" Width="150px" OnClick="btnCancel_Click" />
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-6 reg-right">
                <div class="container-fluid">

                    <div>
                        <img src="../Images/pen.jpeg" height="300" width="300" />
                    </div>

                </div>
                <div class="mt-4">
                    <asp:HyperLink ID="hlRegister" runat="server" CssClass="Member-link" NavigateUrl="~/1_Start/Login_Page.aspx">ALREADY A MEMBER!!</asp:HyperLink>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
