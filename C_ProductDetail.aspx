<%@ Page Title="" Language="C#" MasterPageFile="~/C_ClientMaster.master" AutoEventWireup="true" CodeFile="C_ProductDetail.aspx.cs" Inherits="C_ProductDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="maincss" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontet" runat="Server">
    <form runat="server">

    
    <div class="container">


        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                <div class="container">
                    <div class="well well-small">
                        <div class="row-fluid">
                            <div class="span5">
                                <div id="myCarousel" class="carousel slide cntr">
                                    <div class="carousel-inner">
                                        <div class="item active">
                                            <a href="#">
                                                <asp:Image ID="Image1" ImageUrl='<%#Eval("product_image") %>' runat="server" /></a>
                                        </div>

                                    </div>
                                    <a class="left carousel-control" href="#myCarousel" data-slide="prev">‹</a>
                                    <a class="right carousel-control" href="#myCarousel" data-slide="next">›</a>
                                </div>
                            </div>
                            <div class="span7">
                                <h3><%#Eval("product_name")%></h3>
                                <hr class="soft" />

                                <div class=" qtyFrm">
                                    <div class="control-group">
                                        <label class="control-label"><span>Price</span></label>
                                        <div class="controls">
                                            <asp:TextBox ID="TextBox2" ReadOnly="true"  Text='<%#Eval("product_new_price")%>' runat="server"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="control-group">
                                        <label class="control-label"><span>Brand</span></label>
                                        <div class="controls">
                                            <%--<select class="span11">--%>
                                                <%--<option><%#Eval("brand")%></option>--%>
                                          <asp:TextBox ID="TextBox3" ReadOnly="true"  Text='<%#Eval("brand")%>' runat="server"></asp:TextBox>
                                                <%-- <option>Purple</option>
                                    <option>Pink</option>
                                    <option>Red</option>--%>
                                            <%--</select>--%>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label"><span>Category</span></label>
                                        <div class="controls">
                                            <%--<select class="span11">--%>
                                                
                                                <asp:TextBox ID="TextBox4" ReadOnly="true"  Text='<%#Eval("category")%>' runat="server"></asp:TextBox>
                                                <%-- <option>Material 2</option>
                                    <option>Material 3</option>
                                    <option>Material 4</option>--%>
                                           <%-- </select>--%>
                                        </div>
                                    </div>
                                    <%-- <h4>100 items in stock</h4>--%>


                                    <p>
                                        <button type="submit" class="shopBtn"><span class=" icon-shopping-cart"></span>Add to cart</button>
                                </div>
                            </div>
                        </div>
                        <hr class="softn clr" />

                        <div id="myTabContent" class="tab-content tabWrapper">
                            <div class="tab-pane fade active in" id="home">
                                <h4>Product Information</h4>
                                <table class="table table-striped">
                                    <tbody>
                                        <tr class="techSpecRow">
                                            <td class="techSpecTD1">Color:</td>
                                            <td class="techSpecTD2">
                                                <asp:TextBox ID="TextBox1" TextMode="Color" Height="30px" Width="30px" ReadOnly="true" Text='<%#Eval("product_color")%>' runat="server"></asp:TextBox></td>
                                        </tr>
                                        <tr class="techSpecRow">
                                            <td class="techSpecTD1">Brand</td>
                                            <td class="techSpecTD2"><%#Eval("brand")%></td>
                                        </tr>
                                        <tr class="techSpecRow">
                                            <td class="techSpecTD1">Subcategory</td>
                                            <td class="techSpecTD2"><%#Eval("sub_category")%></td>
                                        </tr>
                                        <tr class="techSpecRow">
                                            <td class="techSpecTD1">Third Category</td>
                                            <td class="techSpecTD2"><%#Eval("Third_category")%></td>
                                        </tr>
                                        
                                    </tbody>
                                </table>
                                <p><%#Eval("product_desc")%></p>

                            </div>
                        </div>
                    </div>
                </div>





            </ItemTemplate>
        </asp:DataList>
    </div>
    <%-- <div class="tab-pane fade" id="profile">
                    <div class="row-fluid">
                        <div class="span2">
                            <img src="assets/img/d.jpg" alt="">
                        </div>
                        <div class="span6">
                            <h5>Product Name </h5>
                            <p>
                                Nowadays the lingerie industry is one of the most successful business spheres.
				We always stay in touch with the latest fashion tendencies - 
				that is why our goods are so popular..
                            </p>
                        </div>
                        <div class="span4 alignR">
                            <form class="form-horizontal qtyFrm">
                                <h3>$140.00</h3>
                                <label class="checkbox">
                                    <input type="checkbox">
                                    Adds product to compair
                                </label>
                                <br>
                                <div class="btn-group">
                                    <a href="product_details.html" class="defaultBtn"><span class=" icon-shopping-cart"></span>Add to cart</a>
                                    <a href="product_details.html" class="shopBtn">VIEW</a>
                                </div>
                            </form>
                        </div>
                    </div>
                    <hr class="soft">
                    <div class="row-fluid">
                        <div class="span2">
                            <img src="assets/img/d.jpg" alt="">
                        </div>
                        <div class="span6">
                            <h5>Product Name </h5>
                            <p>
                                Nowadays the lingerie industry is one of the most successful business spheres.
				We always stay in touch with the latest fashion tendencies - 
				that is why our goods are so popular..
                            </p>
                        </div>
                        <div class="span4 alignR">
                            <form class="form-horizontal qtyFrm">
                                <h3>$140.00</h3>
                                <label class="checkbox">
                                    <input type="checkbox">
                                    Adds product to compair
                                </label>
                                <br>
                                <div class="btn-group">
                                    <a href="product_details.html" class="defaultBtn"><span class=" icon-shopping-cart"></span>Add to cart</a>
                                    <a href="product_details.html" class="shopBtn">VIEW</a>
                                </div>
                            </form>
                        </div>
                    </div>
                    <hr class="soft" />
                    <div class="row-fluid">
                        <div class="span2">
                            <img src="assets/img/d.jpg" alt="">
                        </div>
                        <div class="span6">
                            <h5>Product Name </h5>
                            <p>
                                Nowadays the lingerie industry is one of the most successful business spheres.
				We always stay in touch with the latest fashion tendencies - 
				that is why our goods are so popular..
                            </p>
                        </div>
                        <div class="span4 alignR">
                            <form class="form-horizontal qtyFrm">
                                <h3>$140.00</h3>
                                <label class="checkbox">
                                    <input type="checkbox">
                                    Adds product to compair
                                </label>
                                <br>
                                <div class="btn-group">
                                    <a href="product_details.html" class="defaultBtn"><span class=" icon-shopping-cart"></span>Add to cart</a>
                                    <a href="product_details.html" class="shopBtn">VIEW</a>
                                </div>
                            </form>
                        </div>
                    </div>
                    <hr class="soft" />
                    <div class="row-fluid">
                        <div class="span2">
                            <img src="assets/img/d.jpg" alt="">
                        </div>
                        <div class="span6">
                            <h5>Product Name </h5>
                            <p>
                                Nowadays the lingerie industry is one of the most successful business spheres.
						We always stay in touch with the latest fashion tendencies - 
						that is why our goods are so popular..
                            </p>
                        </div>
                        <div class="span4 alignR">
                            <form class="form-horizontal qtyFrm">
                                <h3>$140.00</h3>
                                <label class="checkbox">
                                    <input type="checkbox">
                                    Adds product to compair
                                </label>
                                <br>
                                <div class="btn-group">
                                    <a href="product_details.html" class="defaultBtn"><span class=" icon-shopping-cart"></span>Add to cart</a>
                                    <a href="product_details.html" class="shopBtn">VIEW</a>
                                </div>
                            </form>
                        </div>
                    </div>
                    <hr class="soften" />
                    <div class="row-fluid">
                        <div class="span2">
                            <img src="assets/img/d.jpg" alt="">
                        </div>
                        <div class="span6">
                            <h5>Product Name </h5>
                            <p>
                                Nowadays the lingerie industry is one of the most successful business spheres.
						We always stay in touch with the latest fashion tendencies - 
						that is why our goods are so popular..
                            </p>
                        </div>
                        <div class="span4 alignR">
                            <form class="form-horizontal qtyFrm">
                                <h3>$140.00</h3>
                                <label class="checkbox">
                                    <input type="checkbox">
                                    Adds product to compair
                                </label>
                                <br>
                                <div class="btn-group">
                                    <a href="product_details.html" class="defaultBtn"><span class=" icon-shopping-cart"></span>Add to cart</a>
                                    <a href="product_details.html" class="shopBtn">VIEW</a>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="tab-pane fade" id="cat1">
                    <p>Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out mcsweeney's organic lomo retro fanny pack lo-fi farm-to-table readymade. Messenger bag gentrify pitchfork tattooed craft beer, iphone skateboard locavore carles etsy salvia banksy hoodie helvetica. DIY synth PBR banksy irony. Leggings gentrify squid 8-bit cred pitchfork. Williamsburg banh mi whatever gluten-free, carles pitchfork biodiesel fixie etsy retro mlkshk vice blog. Scenester cred you probably haven't heard of them, vinyl craft beer blog stumptown. Pitchfork sustainable tofu synth chambray yr.</p>
                    <br>
                    <br>
                    <div class="row-fluid">
                        <div class="span2">
                            <img src="assets/img/b.jpg" alt="">
                        </div>
                        <div class="span6">
                            <h5>Product Name </h5>
                            <p>
                                Nowadays the lingerie industry is one of the most successful business spheres.
						We always stay in touch with the latest fashion tendencies - 
						that is why our goods are so popular..
                            </p>
                        </div>
                        <div class="span4 alignR">
                            <form class="form-horizontal qtyFrm">
                                <h3>$140.00</h3>
                                <label class="checkbox">
                                    <input type="checkbox">
                                    Adds product to compair
                                </label>
                                <br>
                                <div class="btn-group">
                                    <a href="product_details.html" class="defaultBtn"><span class=" icon-shopping-cart"></span>Add to cart</a>
                                    <a href="product_details.html" class="shopBtn">VIEW</a>
                                </div>
                            </form>
                        </div>
                    </div>
                    <hr class="soften" />
                    <div class="row-fluid">
                        <div class="span2">
                            <img src="assets/img/a.jpg" alt="">
                        </div>
                        <div class="span6">
                            <h5>Product Name </h5>
                            <p>
                                Nowadays the lingerie industry is one of the most successful business spheres.
						We always stay in touch with the latest fashion tendencies - 
						that is why our goods are so popular..
                            </p>
                        </div>
                        <div class="span4 alignR">
                            <form class="form-horizontal qtyFrm">
                                <h3>$140.00</h3>
                                <label class="checkbox">
                                    <input type="checkbox">
                                    Adds product to compair
                                </label>
                                <br>
                                <div class="btn-group">
                                    <a href="product_details.html" class="defaultBtn"><span class=" icon-shopping-cart"></span>Add to cart</a>
                                    <a href="product_details.html" class="shopBtn">VIEW</a>
                                </div>
                            </form>
                        </div>
                    </div>
                    <hr class="soften" />
                </div>
                <div class="tab-pane fade" id="cat2">

                    <div class="row-fluid">
                        <div class="span2">
                            <img src="assets/img/d.jpg" alt="">
                        </div>
                        <div class="span6">
                            <h5>Product Name </h5>
                            <p>
                                Nowadays the lingerie industry is one of the most successful business spheres.
						We always stay in touch with the latest fashion tendencies - 
						that is why our goods are so popular..
                            </p>
                        </div>
                        <div class="span4 alignR">
                            <form class="form-horizontal qtyFrm">
                                <h3>$140.00</h3>
                                <label class="checkbox">
                                    <input type="checkbox">
                                    Adds product to compair
                                </label>
                                <br>
                                <div class="btn-group">
                                    <a href="product_details.html" class="defaultBtn"><span class=" icon-shopping-cart"></span>Add to cart</a>
                                    <a href="product_details.html" class="shopBtn">VIEW</a>
                                </div>
                            </form>
                        </div>
                    </div>
                    <hr class="soften" />
                    <div class="row-fluid">
                        <div class="span2">
                            <img src="assets/img/d.jpg" alt="">
                        </div>
                        <div class="span6">
                            <h5>Product Name </h5>
                            <p>
                                Nowadays the lingerie industry is one of the most successful business spheres.
						We always stay in touch with the latest fashion tendencies - 
						that is why our goods are so popular..
                            </p>
                        </div>
                        <div class="span4 alignR">
                            <form class="form-horizontal qtyFrm">
                                <h3>$140.00</h3>
                                <label class="checkbox">
                                    <input type="checkbox">
                                    Adds product to compair
                                </label>
                                <br>
                                <div class="btn-group">
                                    <a href="product_details.html" class="defaultBtn"><span class=" icon-shopping-cart"></span>Add to cart</a>
                                    <a href="product_details.html" class="shopBtn">VIEW</a>
                                </div>
                            </form>
                        </div>
                    </div>
                    <hr class="soften" />
                    <div class="row-fluid">
                        <div class="span2">
                            <img src="assets/img/d.jpg" alt="">
                        </div>
                        <div class="span6">
                            <h5>Product Name </h5>
                            <p>
                                Nowadays the lingerie industry is one of the most successful business spheres.
						We always stay in touch with the latest fashion tendencies - 
						that is why our goods are so popular..
                            </p>
                        </div>
                        <div class="span4 alignR">
                            <form class="form-horizontal qtyFrm">
                                <h3>$140.00</h3>
                                <label class="checkbox">
                                    <input type="checkbox">
                                    Adds product to compair
                                </label>
                                <br>
                                <div class="btn-group">
                                    <a href="product_details.html" class="defaultBtn"><span class=" icon-shopping-cart"></span>Add to cart</a>
                                    <a href="product_details.html" class="shopBtn">VIEW</a>
                                </div>
                            </form>
                        </div>
                    </div>
                    <hr class="soften" />
                    <div class="row-fluid">
                        <div class="span2">
                            <img src="assets/img/d.jpg" alt="">
                        </div>
                        <div class="span6">
                            <h5>Product Name </h5>
                            <p>
                                Nowadays the lingerie industry is one of the most successful business spheres.
						We always stay in touch with the latest fashion tendencies - 
						that is why our goods are so popular..
                            </p>
                        </div>
                        <div class="span4 alignR">
                            <form class="form-horizontal qtyFrm">
                                <h3>$140.00</h3>
                                <label class="checkbox">
                                    <input type="checkbox">
                                    Adds product to compair
                                </label>
                                <br>
                                <div class="btn-group">
                                    <a href="product_details.html" class="defaultBtn"><span class=" icon-shopping-cart"></span>Add to cart</a>
                                    <a href="product_details.html" class="shopBtn">VIEW</a>
                                </div>
                            </form>
                        </div>
                    </div>
                    <hr class="soften" />

                </div>
            </div>

        </div>--%>
        </form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="javascript" runat="Server">
</asp:Content>

