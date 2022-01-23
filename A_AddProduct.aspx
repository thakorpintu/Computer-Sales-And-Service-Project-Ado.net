<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="A_AddProduct.aspx.cs" Inherits="A_AddProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Contentcss" runat="Server">
    <script src="http://code.jquery.com/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        function ImagePreview(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $('#<%=imgprint.ClientID%>').prop('src', e.target.result)
                        .width(200)
                        .height(200);
                };
                reader.readAsDataURL(input.files[0]);
                }
            }

    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">

    <div >
        <div class="container">
            <div class="addcategory">
                <h3>Add Product</h3>
            </div>
        </div>
        <div class="card">
            <div class="card-header">
                <h5>Add Product</h5>
            </div>
            <div class="card-body">
                <div class="form-group">
                    <label>Category</label>
                    <asp:DropDownList ID="Dropcategory" AutoPostBack="true" CssClass="form-control" runat="server" OnSelectedIndexChanged="Dropcategory_SelectedIndexChanged"></asp:DropDownList>
                </div>
                <div class="form-group">
                    <label>Sub Category</label>
                    <asp:DropDownList ID="Dropsubcategory" AutoPostBack="true" CssClass="form-control" runat="server" OnSelectedIndexChanged="Dropsubcategory_SelectedIndexChanged"></asp:DropDownList>
                </div>
                <div class="form-group">
                    <label>Third Category</label>
                    <asp:DropDownList ID="Dropthirdcategory" AutoPostBack="true" CssClass="form-control" runat="server" OnSelectedIndexChanged="Dropthirdcategory_SelectedIndexChanged"></asp:DropDownList>
                </div>
                <div class="form-group">
                    <label>Brand</label>
                    <asp:DropDownList ID="Dropbrand" AutoPostBack="true" CssClass="form-control" runat="server"></asp:DropDownList>
                </div>
                <div class="form-group">
                    <label>Product Name</label>
                    <asp:TextBox ID="txtproductname" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label>Product Old Price</label>
                    <asp:TextBox ID="txtoldprice" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label>Product New Price</label>
                    <asp:TextBox ID="txtnewprice" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label>Product Color</label>
                    <asp:TextBox ID="txtproductcolor" required="required" TextMode="Color" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label>Stoke</label>
                    <asp:TextBox ID="txtstoke"  CssClass="form-control" runat="server"></asp:TextBox>
                </div>

                <div class="form-group clearfix">
                    <div class="form-group float-left">
                        <label>Product Image</label>
                        <asp:FileUpload ID="fileuploadpro" onchange="ImagePreview(this);"  Width="255%" CssClass="form-control" runat="server" />
                    </div>
                    <div class="form-group float-right ml-5">
                        <asp:Image ID="imgprint" Height="150px" Width="150px" runat="server" />
                    </div>
                </div>
                <div class="form-group">
                    <label>Product Description</label>
                    <asp:TextBox ID="txtdescription" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label>Status</label>
                    <asp:DropDownList ID="Dropstatus" CssClass="form-control" runat="server">
                        <asp:ListItem>Active</asp:ListItem>
                        <asp:ListItem>Dactive</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="form-group text-center mt-5">
                    <asp:LinkButton ID="btnsave" CssClass="btn btn-success"  OnClick="btnsave_Click" runat="server"><i class="fa fa-save"></i> Save</asp:LinkButton>
                    <asp:LinkButton ID="btncancel" CssClass="btn btn-danger" runat="server">X Cancel</asp:LinkButton>
                </div>

            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Contentjavascript" runat="Server">
</asp:Content>

