<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminbookinventory.aspx.cs" Inherits="MangaStore.page.adminbookinventory" %>
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
                                    <h3>Manga details</h3>
                                </center>
                            </div>
                        </div>

                         <div class="row">
                            <div class="col">
                                <center>
                                    <img src="../img/book.png" width="150px" />
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
                                <label>Manga ID</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="Textbox1" runat="server" placeholder="ID"></asp:TextBox>
                                </div>                              
                            </div>

                            <div class="col-md-8">
                                <label>Manga name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="Textbox2" runat="server" placeholder="Name"></asp:TextBox>
                                </div>
                            </div>         
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <label>Language</label>
                                <div class="form-group">
                                    <asp:DropDownList ID="DropDownList1" runat="server" class="form-control">
                                        
                                    </asp:DropDownList>
                                </div>                              
                            </div>

                            <div class="col-md-4">
                                <label>Author</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="Textbox4" runat="server" placeholder="Name"></asp:TextBox>
                                </div>
                            </div> 
                            
                            <div class="col-md-4">
                                <label>Genre</label>
                                <div class="form-group">
                                    <asp:ListBox ID="ListBox1" runat="server" SelectionMode="Multiple">
                                          <asp:ListItem Text="Action" Value="Action" />
                                          <asp:ListItem Text="Adventure" Value="Adventure" />
                                          <asp:ListItem Text="Comic Book" Value="Comic Book" />
                                          <asp:ListItem Text="Self Help" Value="Self Help" />
                                          <asp:ListItem Text="Motivation" Value="Motivation" />
                                          <asp:ListItem Text="Healthy Living" Value="Healthy Living" />
                                          <asp:ListItem Text="Wellness" Value="Wellness" />
                                          <asp:ListItem Text="Crime" Value="Crime" />
                                          <asp:ListItem Text="Drama" Value="Drama" />
                                          <asp:ListItem Text="Fantasy" Value="Fantasy" />
                                          <asp:ListItem Text="Horror" Value="Horror" />
                                          <asp:ListItem Text="Poetry" Value="Poetry" />
                                          <asp:ListItem Text="Personal Development" Value="Personal Development" />
                                          <asp:ListItem Text="Romance" Value="Romance" />
                                          <asp:ListItem Text="Science Fiction" Value="Science Fiction" />
                                          <asp:ListItem Text="Suspense" Value="Suspense" />
                                          <asp:ListItem Text="Thriller" Value="Thriller" />
                                          <asp:ListItem Text="Art" Value="Art" />
                                          <asp:ListItem Text="Autobiography" Value="Autobiography" />
                                          <asp:ListItem Text="Encyclopedia" Value="Encyclopedia" />
                                          <asp:ListItem Text="Health" Value="Health" />
                                          <asp:ListItem Text="History" Value="History" />
                                          <asp:ListItem Text="Math" Value="Math" />
                                          <asp:ListItem Text="Textbook" Value="Textbook" />
                                          <asp:ListItem Text="Science" Value="Science" />
                                          <asp:ListItem Text="Travel" Value="Travel" />
                                    </asp:ListBox>
                                </div>
                            </div>   
                        </div>

                        <div class="row">
                            <div class="col-md-8">
                                <label>Publisher name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="Textbox3" runat="server" placeholder="Name"></asp:TextBox>
                                </div>                              
                            </div>

                            <div class="col-md-4">
                                <label>Publisher date</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="Textbox5" runat="server" placeholder="date" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>         
                        </div>

                        <div class="row">
                            <div class="col-md-8">
                                <label>Number of chapter</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="Textbox6" runat="server" placeholder="chapter" TextMode="Number"></asp:TextBox>
                                </div>                              
                            </div>

                            <div class="col-md-4">
                                <label>Price</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="Textbox7" runat="server" placeholder="price" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>         
                        </div>

                        <div class="row">
                            <div class="col">
                                <label>Description</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="Textbox9" runat="server" placeholder="Description" TextMode="MultiLine"></asp:TextBox>
                                </div>
                            </div>         
                        </div>

                        <div class="row">
                            <div class="col">
                                <label>Upload cover image</label>
                                <asp:FileUpload ID="FileUpload1" runat="server" class="form-control" />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col mt-3">
                                <asp:Button ID="Button1" runat="server" Text="Search" class="btn btn-outline-info btn-lg" />
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
                                    <h3>Manga inventory list</h3>
                                    <asp:Label class="badge badge-pill badge-info" ID="Label2" runat="server" Text="ver 1.002"></asp:Label>
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
