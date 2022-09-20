﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminauthormanagement.aspx.cs" Inherits="MangaStore.page.adminauthormanagement" %>
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
                                    <h3>Author details</h3>
                                </center>
                            </div>
                        </div>

                         <div class="row">
                            <div class="col">
                                <center>
                                    <img src="../img/writer.png" width="150px" />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <label>Author ID</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="Textbox1" runat="server" placeholder="ID"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:Button ID="Button1" runat="server" Text="Search" class="btn btn-outline-info btn-lg" />
                                </div>
                            </div>

                            <div class="col-md-8">
                                <label>Author name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="Textbox2" runat="server" placeholder="Name"></asp:TextBox>
                                </div>
                            </div>         
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-4">
                                <asp:Button ID="Button2" runat="server" Text="Update" class="btn btn-outline-success btn-block btn-lg" />
                            </div>
                            <div class="col-4">
                                <asp:Button ID="Button3" runat="server" Text="Add" class="btn btn-outline-warning btn-block btn-lg" />
                            </div>
                            <div class="col-4">
                                <asp:Button ID="Button4" runat="server" Text="Delete" class="btn btn-outline-danger btn-block btn-lg" />
                            </div>
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
                                    <h3>Author list</h3>
                                    <asp:Label class="badge badge-pill badge-info" ID="Label2" runat="server" Text="Your manga list"></asp:Label>
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
