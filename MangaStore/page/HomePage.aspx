<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="MangaStore.page.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <img src="../img/cyber2.jpg" class="img-fluid" style="width: 100%; height:fit-content" />
    </section>

    <section>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <center>
                        <h2>OUR FEATURES</h2>
                        <p>
                            <b>Our primary features</b>
                        </p>
                    </center>
                </div>
            </div>

            <div class="row">
                <div class="col-md-4">
                    <center>
                        <img src="../img/online-library.png" width="150px"/>
                        <h4>Digital manga inventory</h4>
                        <p class="text-justify">
                            Store your favorite manga from all over the world. You want harem,  isekai, fantasy, drama, ecchi,etc? We got it all and you got we
                        </p>
                    </center>
                </div>

                <div class="col-md-4">
                    <center>
                        <img src="../img/seo.png" width="150px"/>
                        <h4>Search your manga</h4>
                        <p class="text-justify">
                            Too tired of scrolling through thousand of manga just to find what your want? A Quick and search engine that go through thousand of anime in just a few second is here at your service
                        </p>
                    </center>
                </div>

                <div class="col-md-4">
                    <center>
                        <img src="../img/rating.png" width="150px"/>
                        <h4>Recommend for beginner</h4>
                        <p class="text-justify">
                            If you are new and don't know where to begin? Don't worry we are here to help with a certificate "easy to follow" manga list from our awsome community
                        </p>
                    </center>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
