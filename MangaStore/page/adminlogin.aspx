<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="MangaStore.page.adminlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container" style="margin-top: 30px; margin-bottom: 30px">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card" style="border-color: #DC143C; border-width: 5px">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="../img/admin.png" style="border-radius: 50%" width="150px" />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Admin login</h3>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <label>Admin ID</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="Textbox1" runat="server" placeholder="Member ID"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col">
                                <label>Password </label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="Textbox2" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>         
                        </div>

                            <div class="form-group">
                                <asp:Button ID="Button1" runat="server" Text="Login" class="btn btn-outline-danger btn-block" OnClick="Button1_Click"/>
                            </div>                       
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
