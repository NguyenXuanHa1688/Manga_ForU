﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminpublishermanagement.aspx.cs" Inherits="MangaStore.page.adminpublishermanagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $("#<%=GridView1.ClientID%>").prepend($("<thead></thead>").append($(this).find("tr:first"))).DataTable();
        });
    </script>
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
                                    <h3>Publisher details</h3>
                                </center>
                            </div>
                        </div>

                         <div class="row">
                            <div class="col">
                                <center>
                                    <img src="../img/printer.png" width="150px" />
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
                                <label>Publisher ID</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="Textbox1" runat="server" placeholder="ID"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:Button ID="Button1" runat="server" Text="Search" class="btn btn-outline-info btn-lg" OnClick="Button1_Click" />
                                </div>
                            </div>

                            <div class="col-md-8">
                                <label>Publisher name</label>
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
                                <asp:Button ID="Button2" runat="server" Text="Update" class="btn btn-outline-success btn-block btn-lg" OnClick="Button2_Click" />
                            </div>
                            <div class="col-4">
                                <asp:Button ID="Button3" runat="server" Text="Add" class="btn btn-outline-warning btn-block btn-lg" OnClick="Button3_Click" />
                            </div>
                            <div class="col-4">
                                <asp:Button ID="Button4" runat="server" Text="Delete" class="btn btn-outline-danger btn-block btn-lg" OnClick="Button4_Click" />
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
                                    <h3>Publisher list</h3>
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
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MangaDBConnectionString %>" SelectCommand="SELECT * FROM [Publisher]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView ID="GridView1" runat="server" class="table table-striped table-bordered" AutoGenerateColumns="False" DataKeyNames="PublisherID" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="PublisherID" HeaderText="PublisherID" ReadOnly="True" SortExpression="PublisherID" />
                                        <asp:BoundField DataField="PublisherName" HeaderText="PublisherName" SortExpression="PublisherName" />
                                    </Columns>

                                </asp:GridView>
                            </div>
                        </div>
                    </div>
                 </div>
            </div>
        </div>
    </div>

</asp:Content>
