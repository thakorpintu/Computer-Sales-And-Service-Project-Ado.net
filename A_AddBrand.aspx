<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="A_AddBrand.aspx.cs" Inherits="A_AddBrand" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Contentcss" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <div runat="server">
        <div class="container">
            <h3>Add Brand</h3>
        </div>
        <div class="card">
            <div class="card-header">
                <h5>Add Brand</h5>
            </div>
            <div class="card-body">
                <div class="form-group">
                    <label>Brand</label>
                    <asp:TextBox ID="txtbrand" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label>Status</label>
                    <asp:DropDownList ID="Dropstatus" CssClass="form-control" runat="server">
                        <asp:ListItem>Active</asp:ListItem>
                        <asp:ListItem>Dactive</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="form-group text-center">
                    <asp:LinkButton ID="btnsave" OnClick="btnsave_Click" CssClass="btn btn-success" runat="server"><i class="fa fa-save"></i> Save</asp:LinkButton>
                    <asp:LinkButton ID="btncancel" CssClass="btn btn-danger" runat="server">X Cancel</asp:LinkButton>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Contentjavascript" runat="Server">
</asp:Content>

