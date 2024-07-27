<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ConfirmProfile.aspx.cs" Inherits="Support_Hub.WebForm7" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container text-center Log-Con mt-5 rounded-4">
        <div class="row">

            <div class="col-md-6 log-left">
                <div class="container-fluid">
                    <div>
                        <asp:Label ID="lblConfirmProfile" runat="server" Text=""></asp:Label>
                    </div>
                    <div class=" mt-4">
                        <h3>Profile</h3>
                    </div>
                    <div class="row">
                        <div class="col-md-2"></div>

                        <div class="col-md-8">
                            <div>
                                <asp:TextBox ID="txtFull_Name" runat="server" CssClass="form-control mb-2" Placeholder="Full Name*" TextMode="Email" ReadOnly="true"></asp:TextBox>
                            </div>
                            <div>
                                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control mb-2" Placeholder="Email Address*" ReadOnly="true"></asp:TextBox>
                            </div>
                            <div>
                                <asp:TextBox ID="txtSpecialitties" runat="server" CssClass="form-control mb-2" Placeholder="Specialities*"></asp:TextBox>
                            </div>
                            <div>
                                <asp:TextBox ID="txtLocation" runat="server" CssClass="form-control mb-2" Placeholder="Location"></asp:TextBox>
                            </div>
                            <div>
                                <asp:TextBox ID="txtWeb" runat="server" CssClass="form-control mb-2" Placeholder="https://..." TextMode="Url"></asp:TextBox>
                            </div>
                            <div>
                                <asp:Button ID="btnSave" runat="server" CssClass="rounded-2" Text="Save" Width="120px" />
                            </div>
                        </div>

                        <div class="col-md-2"></div>
                    </div>

                </div>
            </div>


            <div class="col-md-6 log-right">
                <div class="mt-2 text-start">
                    <div class="row">
                        <div class="col-md-1"></div>

                        <div class="col-md-10">
                            <div>
                                <asp:Image ID="ppic" runat="server" CssClass="mb-2 rounded-5" />
                            </div>
                            <div class="row">
                                <div class="col-md-8">
                                    <div>
                                <asp:Label ID="lblUploadPic" runat="server" Text="Upload Picture"></asp:Label>
                            </div>
                            <div>
                                <asp:FileUpload ID="flUploadPic" runat="server" CssClass="form-control mb-2" />
                            </div>
                            <div>
                                <asp:Label ID="lblHPCSA" runat="server" Text="Upload HPCSA*"></asp:Label>
                            </div>
                            <div>
                                <asp:FileUpload ID="flUploadHPCSA" CssClass="form-control mb-2" runat="server" />
                            </div>
                                </div>
                                <div class="col-md-4"></div>
                            </div>

                            <div>
                                <asp:TextBox ID="txtDecsription" runat="server" CssClass="form-control mb-2" Placeholder="Description" TextMode="MultiLine"></asp:TextBox>
                            </div>
                        </div>

                        <div class="col-md-1"></div>
                    </div>

                </div>
            </div>

        </div>
    </div>
</asp:Content>
