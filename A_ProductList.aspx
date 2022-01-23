<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="A_ProductList.aspx.cs" Inherits="A_ProductList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Contentcss" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <div runat="server">
        <div class="container">
            <div class="clearfix">
                <div class="addcategory float-left">
                    <h3>Product List</h3>

                </div>
                <div class="form-group float-right">
                    <asp:LinkButton ID="btnadd" CssClass="btn  btn-primary float-right" runat="server">+ Add</asp:LinkButton>
                </div>
            </div>
          

            <div class="card">
                <div class="card-header ">
                    <h6>Search Here.....</h6>
                    <div class=" clearfix">
                        <div class="col-4 float-left">
                            <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server"></asp:DropDownList>
                        </div>

                        <div class="col-4 float-right ">
                            <asp:DropDownList ID="DropDownList2" CssClass="form-control" runat="server"></asp:DropDownList>
                        </div>

                        <div class="col-4 float-right">
                            <asp:DropDownList ID="DropDownList4" CssClass="form-control" runat="server"></asp:DropDownList>
                        </div>

                    </div>
                    <div class="form-group text-center mt-3s">
                        <asp:LinkButton ID="btnsearch" CssClass="btn btn-danger m-3" runat="server"><i class="fa fa-search"></i> Search</asp:LinkButton>
                        <asp:LinkButton ID="btnallproduct" CssClass="btn btn-dark" runat="server"><i class="fa fa-reply-all"></i> ALL PRODUCT</asp:LinkButton>
                    </div>
                </div>
                <div class="card-body">
                    <h2>Product List</h2>
                </div>

            </div>
            <div class="card ">
                <div class="card-header ">
                    <h6>Product List.....</h6>
                </div>
                <div class="card-body">
                     <asp:GridView ID="GridView1" runat="server" CssClass=" table text-center table-responsive-xl table-bordered" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand" >
                    <Columns>
                        <asp:TemplateField HeaderText="Edit">
                            <ItemTemplate>
                                <a href='A_AddProduct.aspx?edit=<%#Eval("product_id")%>' class="btn btn-success text-center"><i class="fa fa-edit text-white"></i>  Edit</a>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Delete">
                            <ItemTemplate>
                                <asp:LinkButton ID="btndelete" OnClientClick="return confirm('Are You Sure Want to Delete ')" CommandArgument='<%#Eval("product_id") %>' CssClass="btn btn-danger text-center" runat="server"><i class="fa fa-trash text-white"></i> Delete</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Category">
                            <ItemTemplate>
                                <label><%#Eval("category")%></label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="SubCatogry">
                            <ItemTemplate>
                                <label><%#Eval("sub_category")%></label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="ThirdCategory">
                            <ItemTemplate>
                                <label><%#Eval("Third_category")%></label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Brand">
                            <ItemTemplate>
                                <label><%#Eval("brand")%></label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Product Name">
                            <ItemTemplate>
                                <label><%#Eval("product_name")%></label>
                            </ItemTemplate>
                        </asp:TemplateField>
                         <asp:TemplateField HeaderText="Product Image">
                            <ItemTemplate>
                                <asp:Image ID="Image1" Height="100px" Width="100px" ImageUrl='<%#Eval("product_image")%>' runat="server" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Description">
                            <ItemTemplate>
                               < <label><%#Eval("product_desc")%></label>
                               <%-- <asp:TextBox ID="TextBox1" TextMode="MultiLine" runat="server" Text='<%#Eval("product_desc")%>'></asp:TextBox>--%>
                            </ItemTemplate>
                        </asp:TemplateField>
                         <asp:TemplateField HeaderText="Status">
                            <ItemTemplate>
                                <label><%#Eval("status")%></label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>

                </asp:GridView>
                </div>

            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Contentjavascript" runat="Server">
</asp:Content>

