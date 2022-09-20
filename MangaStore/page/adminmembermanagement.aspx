<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminmembermanagement.aspx.cs" Inherits="MangaStore.page.adminmembermanagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid" style="margin-top: 30px; margin-bottom: 30px">
        <div class="row">
            <div class="col-md-5">
                <div class="card" style="border-color: cadetblue; border-width: 5px">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="../img/management.png" width="150px" />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Member details</h3>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-3">
                                <label>Id</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="Textbox1" runat="server" placeholder="ID"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>Full name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="Textbox5" runat="server" placeholder="Full name" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-5">
                                <label>Date of birth </label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="Textbox2" runat="server" placeholder="dd-mm-yy" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>         
                        </div>

                        <div class="row">
                            <div class="col">
                                <label>Contact number</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="Textbox3" runat="server" placeholder="example: 123 456 789" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col">
                                <label>Email </label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="Textbox4" runat="server" placeholder="example@gmail.com" TextMode="Email" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>         
                        </div>

                             <label>Country </label>
                             <div class="form-group">
                                 <asp:TextBox CssClass="form-control" ID="Textbox7" runat="server" placeholder="country" ReadOnly="true"></asp:TextBox>
                             </div>

                             <label>Account status </label>
                             <div class="row">
                                 <div class="col-md-7">
                                    <asp:TextBox CssClass="form-control" ID="Textbox6" runat="server" placeholder="status"></asp:TextBox>           
                                 </div>
                                 <div class="col-md-4">
                                    <asp:LinkButton class="btn btn-success" ID="LinkButton1" runat="server"><img src="../img/check.png"/></asp:LinkButton>      

                                    <asp:LinkButton class="btn btn-warning" ID="LinkButton2" runat="server"><img src="../img/alert.png"/></asp:LinkButton>      

                                    <asp:LinkButton class="btn btn-danger" ID="LinkButton3" runat="server"><img src="../img/disabled.png" /></asp:LinkButton>      
                                 </div>
                             </div>
                             
                        
                            <div class="form-group" style="margin-top: 20px">
                                <asp:Button ID="Button1" runat="server" Text="Find member" class="btn btn-outline-info" />
                            </div>

                            <div class="row">
                                <div class="col">
                                    <hr />
                                </div>
                            </div>

                            <div class="form-group">
                                <asp:Button ID="Button2" runat="server" Text="Permenent delete member" class="btn btn-outline-danger btn-block" />
                            </div>
                       
                    </div>
                </div>
            </div>

            <div class="col-md-7">
                <div class="card" style="border-color: cadetblue; border-width: 5px">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Member list</h3>
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
                                <asp:GridView ID="GridView1" runat="server" class="table table-striped table-bordered">

                                </asp:GridView>
                            </div>
                        </div>
                    </div>
                 </div>
            </div>
        </div>
    </div>

</asp:Content>
