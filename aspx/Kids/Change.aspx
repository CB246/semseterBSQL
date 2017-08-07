﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Change.aspx.cs" Inherits="aspx_Kids_Change" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <!-- ==========START OF CSS================= -->

    <!-- Bootstrap Core Css -->
    <link href="/plugins/bootstrap/css/bootstrap.css" rel="stylesheet">

    <!-- Waves Effect Css -->
    <link href="/plugins/node-waves/waves.css" rel="stylesheet" />

    <!-- Animation Css -->
    <link href="/plugins/animate-css/animate.css" rel="stylesheet" />

    <!-- Custom Css -->
    <link href="/css/style.css" rel="stylesheet">

    <!-- AdminBSB Themes. You can choose a theme from css/themes instead of get all themes -->
    <link href="/css/themes/all-themes.css" rel="stylesheet" />

    <!-- ===========START OF SCRIPTS============== -->

    <!-- Jquery Core Js -->
    <script src="/plugins/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core Js -->
    <script src="/plugins/bootstrap/js/bootstrap.js"></script>

    <!-- Select Plugin Js -->
    <script src="/plugins/bootstrap-select/js/bootstrap-select.js"></script>

    <!-- Slimscroll Plugin Js -->
    <script src="/plugins/jquery-slimscroll/jquery.slimscroll.js"></script>

    <!-- Bootstrap Notify Plugin Js -->
    <script src="/plugins/bootstrap-notify/bootstrap-notify.js"></script>

    <!-- Waves Effect Plugin Js -->
    <script src="/plugins/node-waves/waves.js"></script>

    <!-- Custom Js -->
    <script src="/js/admin.js"></script>
    <script src="/js/pages/ui/dialogs.js"></script>

    <!-- Demo Js -->
    <script src="/js/demo.js"></script>

    <!-- ============END OF SCRIPTS==============-->

    <style>
        .form-group .form-line .form-label {
            right: 0;
            text-align: right;
        }

        .val-err-msg {
            color: red;
            font-size: 12px;
            font-weight: bold;
        }
    </style>

    <section class="content">
        <form runat="server">
            <!-- KID & PARENT ID -->
            <div class="container-fluid">
                <div class="row clearfix">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="card">
                            <div class="header">
                                <h2 class="align-center">Change Kid Information
                                <small>Here you can change kid information</small>
                                </h2>
                            </div>
                            <div class="body">
                                <div class="row clearfix">
                                    <div class="col-xs-12 col-lg-12" style="margin-bottom: 0px;">
                                        <div class="row clearfix">
                                            <div class="col-sm-6" style="margin-bottom: 0px;">
                                                <div class="form-group form-float">
                                                    <div class="form-line">
                                                        <asp:TextBox ID="tbKidID" class="form-control" runat="server"></asp:TextBox>
                                                        <label class="form-label">Kid ID (9 digits)</label>
                                                    </div>
                                                    <asp:RegularExpressionValidator ID="kidIdRegExVal" runat="server" ControlToValidate="tbKidID" ErrorMessage="ID must be 9 digits" Display="Dynamic" ValidationGroup="change" CssClass="val-err-msg" ValidationExpression="[0-9]{9}"></asp:RegularExpressionValidator>
                                                    <asp:RequiredFieldValidator ID="kidIdReqVal" runat="server" ControlToValidate="tbKidID" Display="Dynamic" ErrorMessage="Kid ID is empty" ValidationGroup="change" CssClass="val-err-msg"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>
                                            <div class="col-sm-6" style="margin-bottom: 0px;">
                                                <div class="form-group form-float">
                                                    <div class="form-line">
                                                        <asp:TextBox ID="tbParentID" class="form-control" runat="server"></asp:TextBox>
                                                        <label class="form-label">Parent ID (9 digits)</label>
                                                    </div>
                                                    <asp:RegularExpressionValidator ID="parentIdRegExVal" runat="server" ControlToValidate="tbParentID" ErrorMessage="ID must be 9 digits" Display="Dynamic" ValidationGroup="change" CssClass="val-err-msg" ValidationExpression="[0-9]{9}"></asp:RegularExpressionValidator>
                                                    <asp:RequiredFieldValidator ID="parentIdReqVal" runat="server" ControlToValidate="tbParentID" Display="Dynamic" ErrorMessage="Parent ID is empty" ValidationGroup="change" CssClass="val-err-msg"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="btn-group" role="group" style="width: 100%">
                                            <asp:Button ID="btnGetKidInfo" runat="server" Text="Get Kid Info" ValidationGroup="change" class="btn btn-block btn-lg bg-cyan" style="width: 100%"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- KID INFO -->
            <div class="container-fluid">
                <div class="row clearfix">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="card">
                            <div class="header">
                                <h2 class="align-center">Insert new data to change
                                </h2>
                            </div>
                            <div class="body">
                                <div class="row clearfix">
                                    <div class="col-xs-12 col-lg-12" style="margin-bottom: 0px;">
                                        <div class="row clearfix">
                                            <div class="col-sm-3" style="margin-bottom: 0px;">
                                                <div class="form-group form-float">
                                                    <div class="form-line">
                                                        <asp:TextBox ID="tbID" class="form-control" runat="server" ReadOnly="true"></asp:TextBox>
                                                        <label class="form-label">ID (9 digits)</label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-3" style="margin-bottom: 0px;">
                                                <div class="form-group form-float">
                                                    <div class="form-line">
                                                        <asp:TextBox ID="tbLastName" class="form-control" runat="server"></asp:TextBox>
                                                        <label class="form-label">Last Name</label>
                                                    </div>
                                                    <asp:RegularExpressionValidator ID="lastNameRegExVal" runat="server" ControlToValidate="tbLastName" ErrorMessage="Last Name can only contain letters" Display="Dynamic" ValidationGroup="longLat" CssClass="val-err-msg" ValidationExpression="[A-Za-z \-]+"></asp:RegularExpressionValidator>
                                                    <asp:RequiredFieldValidator ID="lastNameReqVal" runat="server" ControlToValidate="tbLastName" Display="Dynamic" ErrorMessage="Last Name is empty" ValidationGroup="longLat" CssClass="val-err-msg"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>
                                            <div class="col-sm-3" style="margin-bottom: 0px;">
                                                <div class="form-group form-float">
                                                    <div class="form-line">
                                                        <asp:TextBox ID="tbFirstName" class="form-control" runat="server"></asp:TextBox>
                                                        <label class="form-label">First Name</label>
                                                    </div>
                                                    <asp:RegularExpressionValidator ID="firstNameRegExVal" runat="server" ControlToValidate="tbFirstName" ErrorMessage="First Name can only contain letters" Display="Dynamic" ValidationGroup="longLat" CssClass="val-err-msg" ValidationExpression="[A-Za-z \-]+"></asp:RegularExpressionValidator>
                                                    <asp:RequiredFieldValidator ID="firstNameReqVal" runat="server" ControlToValidate="tbFirstName" Display="Dynamic" ErrorMessage="First Name is empty" ValidationGroup="longLat" CssClass="val-err-msg"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>
                                            <div class="col-sm-3" style="margin-bottom: 0px;">
                                                <div class="form-group form-float">
                                                    <div class="form-line">
                                                        <asp:TextBox ID="tbDOB" Width="72%" TextMode="Date" class="form-control" ReadOnly="true" runat="server" min="2009-09-02" max="2017-09-01"></asp:TextBox>
                                                        <label class="form-label">Date of Birth</label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row clearfix">
                                            <div class="col-sm-4" style="margin-bottom: 0px;">
                                                <div class="form-group form-float">
                                                    <div class="form-line">
                                                        <asp:TextBox ID="tbCity" class="form-control" runat="server"></asp:TextBox>
                                                        <label class="form-label">City</label>
                                                    </div>
                                                    <asp:RegularExpressionValidator ID="cityRegExVal" runat="server" ControlToValidate="tbCity" ErrorMessage="City can only contain letters" Display="Dynamic" ValidationGroup="longLat" CssClass="val-err-msg" ValidationExpression="[A-Za-z \-]+"></asp:RegularExpressionValidator>
                                                    <asp:RequiredFieldValidator ID="cityVal" runat="server" ValidationGroup="longLat" Display="Dynamic" ControlToValidate="tbCity" class="val-err-msg" ErrorMessage="City is empty"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>
                                            <div class="col-sm-4" style="margin-bottom: 0px;">
                                                <div class="form-group form-float">
                                                    <div class="form-line">
                                                        <asp:TextBox ID="tbStreet" class="form-control" runat="server"></asp:TextBox>
                                                        <label class="form-label">Street</label>
                                                    </div>
                                                    <asp:RegularExpressionValidator ID="streetRegExVal" runat="server" ControlToValidate="tbStreet" ErrorMessage="Street can only contain letters" Display="Dynamic" ValidationGroup="longLat" CssClass="val-err-msg" ValidationExpression="[A-Za-z \-]+"></asp:RegularExpressionValidator>
                                                    <asp:RequiredFieldValidator ID="streetVal" runat="server" ValidationGroup="longLat" Display="Dynamic" ControlToValidate="tbStreet" class="val-err-msg" ErrorMessage="Street is empty"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>
                                            <div class="col-sm-4" style="margin-bottom: 0px;">
                                                <div class="form-group form-float">
                                                    <div class="form-line">
                                                        <asp:TextBox ID="tbHouseNumber" class="form-control" runat="server"></asp:TextBox>
                                                        <label class="form-label">House Number</label>
                                                    </div>
                                                    <asp:RegularExpressionValidator ID="houseNumRegExVal" runat="server" ControlToValidate="tbHouseNumber" ErrorMessage="House Number can only contain numbers" Display="Dynamic" ValidationGroup="longLat" CssClass="val-err-msg" ValidationExpression="[0-9]+"></asp:RegularExpressionValidator>
                                                    <asp:RequiredFieldValidator ID="houseNumVal" runat="server" ValidationGroup="longLat" Display="Dynamic" ControlToValidate="tbHouseNumber" class="val-err-msg" ErrorMessage="House Number is empty"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row clearfix">
                                            <div class="col-sm-6" style="margin-bottom: 0px;">
                                                <div class="form-group form-float">
                                                    <div class="form-line">
                                                        <asp:TextBox ID="tbLongitude" class="form-control" ReadOnly="true" runat="server"></asp:TextBox>
                                                        <label class="form-label">Longitude</label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-6" style="margin-bottom: 0px;">
                                                <div class="form-group form-float">
                                                    <div class="form-line">
                                                        <asp:TextBox ID="tbLatitude" class="form-control" ReadOnly="true" runat="server"></asp:TextBox>
                                                        <label class="form-label">Latitude</label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row clearfix">
                                            <div class="col-sm-12" style="margin-bottom: 0px;">
                                                <asp:Button ID="btnChangeKidInfo" runat="server" ValidationGroup="longLat" Text="Change Kid Info" class="btn btn-block btn-lg bg-cyan" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Default Size -->
            <div class="modal fade" runat="server" id="defaultModal" tabindex="-1" role="dialog" style="display: none;">
                <div class="modal-dialog" role="document">
                    <div class="modal-content" runat="server" id="modalColor">
                        <div class="modal-header">
                            <h4 class="modal-title" id="defaultModalLabel">Modal title</h4>
                        </div>
                        <div class="modal-body align-center">
                            <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
                        </div>
                        <div class="modal-footer align-center">
                            <asp:Button class="btn btn-link waves-effect" runat="server" ID="cancelButton" OnClick="cancelButton_Click" Text="CLOSE" />
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </section>

</asp:Content>

