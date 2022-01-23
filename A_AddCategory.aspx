<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="A_AddCategory.aspx.cs" Inherits="A_AddCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Contentcss" runat="Server">
    <link href="css/sb-admin-2.min.css" rel="stylesheet" />
    <link href="css/sb-admin-2.css" rel="stylesheet" />
    <link href="css/StyleSheet.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <div runat="server">
        <div class="container">
            <div class="addcategory">
                <h3>Add Category</h3>
            </div>
            <div class="card">
                <div class="card-header">
                    <h5>Add Category</h5>
                </div>
                <div class="card-body">
                    <div class="form-group">
                        <label>Category</label>
                        <asp:TextBox ID="txtcat" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Status</label>
                        <asp:DropDownList ID="Dropst" CssClass="form-control" runat="server">
                         
                            <asp:ListItem>Active</asp:ListItem>
                            <asp:ListItem>Deactive</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="form-group text-center ">
                        <asp:LinkButton ID="btnsave" runat="server" OnClick="btnsave_Click" CssClass="btn btn-success"><i class="fa fa-save"></i> Save</asp:LinkButton>
                        <asp:LinkButton ID="btncancel" runat="server" CssClass="btn btn-danger">X Cancel</asp:LinkButton>
                    </div>


                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Contentjavascript" runat="Server">
</asp:Content>

