<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="A_AddSubCategory.aspx.cs" Inherits="A_AddSubCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Contentcss" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <div runat="server">
        <div class="container">
          <div class="addcategory">
                <h3>Add SubCategory</h3>
          </div>
        </div>
        <div class="card">
            <div class="card-header">
                <h5>Add SubCategory</h5>
            </div>
            <div class="card-body">
                <div class="form-group">
                    <label>Category</label>
                    <asp:DropDownList ID="Dropcategory" CssClass="form-control" runat="server"></asp:DropDownList>
                    <asp:HiddenField ID="Hidcid"  runat="server" />
                </div>
                  <div class="form-group">
                    <label>Sub Category</label>
                      <asp:TextBox ID="txtsubcategory" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label>Status</label>
                    <asp:DropDownList ID="Dropstatus" CssClass="form-control" runat="server">
                        <asp:ListItem>Active</asp:ListItem>
                        <asp:ListItem>Deactive</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="form-group text-center">
                    <asp:LinkButton ID="btnsave" CssClass="btn btn-success" OnClick="btnsave_Click" runat="server"><i class="fa fa-save"></i> Save</asp:LinkButton>
                    <asp:LinkButton ID="btncancel" CssClass="btn btn-danger" runat="server">X Cancel</asp:LinkButton>
                </div>

            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Contentjavascript" runat="Server">
</asp:Content>

