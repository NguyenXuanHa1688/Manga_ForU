<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userlogin.aspx.cs" Inherits="MangaStore.page.userlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >

    <div class="container" style="margin-top: 30px; margin-bottom: 30px">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card" style="border-color: cadetblue; border-width: 5px">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="../img/user.png" style="border-radius: 50%" width="150px" />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Member login</h3>
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
                                <label>Member ID</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="Textbox5" runat="server" placeholder="Member ID"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col">
                                <label>Password </label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="Textbox6" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>         
                        </div>

                            <div class="form-group">
                                <asp:Button ID="Button3" runat="server" Text="Login" class="btn btn-outline-success btn-block"/>
                            </div>

                            <div class="form-group">
                                <asp:Button ID="Button4" runat="server" Text="Sign up" class="btn btn-outline-info btn-block" OnClick="Button4_Click" />
                            </div>
                       
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
