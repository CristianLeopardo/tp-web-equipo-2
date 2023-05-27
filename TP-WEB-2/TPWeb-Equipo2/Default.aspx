<%@ Page Title="" Language="C#" MasterPageFile="~/La.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TPWeb_Equipo2.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Bienvenido al Home de la pagina...</h1>
    <div class="container text-center">
        <div class="row align-items-start">
            <div class="col">
            </div>
            <div class="col">
                <h2>Categorias Disponibles</h2>
            </div>
            <div class="col">
            </div>
        </div>
    </div>
    <div style="margin-top: 30px" class="container text-center">
        <div class="row align-items-center">
            <div class="col">
                <! -- COMIENZO TARJETA -->
                <div class="card" style="width: 12rem;">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnk99CP3dXw5IJDeDaNqXSGpBQKowkhrKI01cuz_7__LyKs9QxtaIJGAApe8qqUfrt28A&usqp=CAU" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Televisores</h5>
                        <a href="#" class="btn btn-primary">Ver mas..</a>
                    </div>
                </div>
            </div>
            <div class="col">
                <! -- COMIENZO TARJETA -->
                <div class="card" style="width: 12rem;">
                    <img src="https://w7.pngwing.com/pngs/977/162/png-transparent-video-game-game-controllers-gaming-miscellaneous-game-logo.png" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Media</h5>
                        <a href="#" class="btn btn-primary">Ver mas..</a>
                    </div>
                </div>
            </div>
            <div class="col">
                <! -- COMIENZO TARJETA -->
                <div class="card" style="width: 12rem;">
                    <img src="https://images.vexels.com/media/users/3/204690/isolated/preview/ccb652d1ca11908eeb950eb670c02619-telefono-celular-sonando-icono-azul.png" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Celulares</h5>
                        <a href="#" class="btn btn-primary">Ver mas..</a>
                    </div>
                </div>
            </div>
            <div class="col">
                <! -- COMIENZO TARJETA -->
                <div class="card" style="width: 12rem;">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQO74H_HwuHdcyYEgOCDtFEu0fOHzdgoHx_2biOuvxTA_s-uVDEO-FnqjJCCeEc3Q5Grpw&usqp=CAU" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Audio</h5>
                        <a href="#" class="btn btn-primary">Ver mas..</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div style="margin-top: 300px" class="container text-center">
        <div class="row align-items-start">
            <div class="col">
            </div>
            <div class="col">
                <h1>Articulos disponibles</h1>
            </div>
            <div class="col">
            </div>
        </div>
    </div>
    <div id="carouselExampleCaptions" style="margin-left: 15%; margin-right: 20%" class="carousel slide">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <div class="row row-cols-1 row-cols-md-3 g-4">
                    <div class="col">
                        <! -- COMIENZO TARJETA -->
                        <div class="card h-100">
                            <img src="https://static3.depositphotos.com/1005348/211/i/600/depositphotos_2114992-stock-photo-aqua-digit-1.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Card title</h5>
                                <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                            </div>
                            <div class="card-footer">
                                <small class="text-body-secondary">Last updated 3 mins ago</small>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card h-100">
                            <! -- COMIENZO TARJETA -->
                            <img src="https://static3.depositphotos.com/1005348/211/i/600/depositphotos_2114992-stock-photo-aqua-digit-1.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Card title</h5>
                                <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
                            </div>
                            <div class="card-footer">
                                <small class="text-body-secondary">Last updated 3 mins ago</small>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <! -- COMIENZO TARJETA -->
                        <div class="card h-100">
                            <img src="https://static3.depositphotos.com/1005348/211/i/600/depositphotos_2114992-stock-photo-aqua-digit-1.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Card title</h5>
                                <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
                            </div>
                            <div class="card-footer">
                                <small class="text-body-secondary">Last updated 3 mins ago</small>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="carousel-caption d-none d-md-block">
                    <h5>First slide label</h5>
                    <p>Some representative placeholder content for the first slide.</p>
                </div>
            </div>
            <div class="carousel-item">
                <div class="row row-cols-1 row-cols-md-3 g-4">
                    <div class="col">
                        <! -- COMIENZO TARJETA -->
                        <div class="card h-100">
                            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRlhRArZK3BwXXI1j9BS5X37Fi3Rga_3om43W_hdA9rQ&s" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Card title</h5>
                                <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                            </div>
                            <div class="card-footer">
                                <small class="text-body-secondary">Last updated 3 mins ago</small>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <! -- COMIENZO TARJETA -->
                        <div class="card h-100">
                            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRlhRArZK3BwXXI1j9BS5X37Fi3Rga_3om43W_hdA9rQ&s" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Card title</h5>
                                <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
                            </div>
                            <div class="card-footer">
                                <small class="text-body-secondary">Last updated 3 mins ago</small>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <! -- COMIENZO TARJETA -->
                        <div class="card h-100">
                            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRlhRArZK3BwXXI1j9BS5X37Fi3Rga_3om43W_hdA9rQ&s" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Card title</h5>
                                <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
                            </div>
                            <div class="card-footer">
                                <small class="text-body-secondary">Last updated 3 mins ago</small>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="carousel-caption d-none d-md-block">
                    <h5>Second slide label</h5>
                    <p>Some representative placeholder content for the second slide.</p>
                </div>
            </div>
            <div class="carousel-item">
                <div class="row row-cols-1 row-cols-md-3 g-4">
                    <div class="col">
                        <! -- COMIENZO TARJETA -->
                        <div class="card h-100">
                            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDHDGR9WlBsfgO4DFUfddgKUeZsfC3fyAoi6MEUBWZTA&s" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Card title</h5>
                                <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                            </div>
                            <div class="card-footer">
                                <small class="text-body-secondary">Last updated 3 mins ago</small>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <! -- COMIENZO TARJETA -->
                        <div class="card h-100">
                            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDHDGR9WlBsfgO4DFUfddgKUeZsfC3fyAoi6MEUBWZTA&s" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Card title</h5>
                                <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
                            </div>
                            <div class="card-footer">
                                <small class="text-body-secondary">Last updated 3 mins ago</small>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <! -- COMIENZO TARJETA -->
                        <div class="card h-100">
                            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDHDGR9WlBsfgO4DFUfddgKUeZsfC3fyAoi6MEUBWZTA&s" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Card title</h5>
                                <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
                            </div>
                            <div class="card-footer">
                                <small class="text-body-secondary">Last updated 3 mins ago</small>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="carousel-caption d-none d-md-block">
                    <h5>Third slide label</h5>
                    <p>Some representative placeholder content for the third slide.</p>
                </div>
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
            <! -- BOTON ANTERIOR -->
            <span style="margin-right: 90%" class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
            <! -- BOTON POSTERIOR -->
            <span style="margin-left: 90%" class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
</asp:Content>
