<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="Support_Hub.WebForm8" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container border border-secondary-subtle rounded-3">
        <div class="mt-5 mb-3 text-center">
            <h1>Contact Us
            </h1>
        </div>
        <div class="row">
            <div class="col-md-6">
                <div class="container bg-secondary-subtle rounded-2">
                    <div class="row mt-1 mb-2">
                        <div class="col-md-3">
                            <div class="mt-4 text-center">
                                <img src="../Images/phone-call.png" height="40" />
                            </div>
                        </div>
                        <div class="col-md-9 mt-4">
                            <h4>+27 78 901 2345
                            </h4>
                        </div>
                    </div>
                    <div class="row mb-2">
                        <div class="col-md-3">
                            <div class=" text-center">
                                <img src="../Images/email.png" height="40" />
                            </div>
                        </div>
                        <div class="col-md-9 mt-2">
                            <h4>hub@support.co.za
                            </h4>
                        </div>
                    </div>
                    <div class="row mb-2">
                        <div class="col-md-3">
                            <div class="mb-3  text-center">
                                <img src="../Images/pin.png" height="40" />
                            </div>
                        </div>
                        <div class="col-md-9 mb-3 mt-2">
                            <h4>50 Church St, El
                            </h4>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div>
                    <div class="mt-2 mb-4">
                        <h3>WE'RE HERE FOR YOU
                        </h3>
                    </div>
                    <div>
                        <p>
                            MONDAY - FRIDAY: 7 am - 9 pm<br />
                            SATURDAY: 9 am - 5pm<br />
                            SUNDAY: 9 am - 2 pm<br />
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <div class="row">
                    <div class="col-md-8 mt-3">
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control border border-secondary" PlaceHolder="Email" TextMode="Email"></asp:TextBox>
                    </div>
                    <div class="col-md-4"></div>
                </div>
                <div class="row">
                    <div class="col-md-4"></div>
                    <div class="col-md-4 mt-3">
                        <asp:Button ID="btnContactUs" runat="server" CssClass="form-control bg-primary border border-secondary" Text="Send" />
                    </div>
                    <div class="col-md-4"></div>
                </div>
            </div>
            <div class="col-md-6">
                <asp:TextBox ID="txtMessage" runat="server" CssClass="form-control border border-secondary" TextMode="MultiLine" PlaceHolder="Message"></asp:TextBox>
            </div>
        </div>
        <div class="mt-5 text-center mb-5">
            <div class="mb-2">
                <h2>Catch Us In Our Social Media
                </h2>
            </div>
            <div class="mt-2">
                <div class="row">
                    <div class="col-md-4 text-end">
                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/whatsapp.png" Height="40" />
                    </div>
                    <div class="col-md-2">
                        <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Images/facebook.png" Height="40" />
                    </div>
                    <div class="col-md-2">
                        <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/Images/instagram.png" Height="40" />

                    </div>
                    <div class="col-md-4 text-start">
                        <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/Images/twitter.png" Height="40" />
                    </div>
                </div>



            </div>
        </div>
    </div>
</asp:Content>
