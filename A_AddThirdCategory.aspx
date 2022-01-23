<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="A_AddThirdCategory.aspx.cs" Inherits="A_AddThirdCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Contentcss" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
     <div runat="server">
        <div class="container">
           <div class="addcategory">
                <h3>Add ThirdCategory</h3>
           </div>
        </div>
        <div class="card">
            <div class="card-header">
                <h5>Add ThirdCategory</h5>
            </div>
            <div class="card-body">
                <div class="form-group">
                    <label>Category</label>
                    <asp:DropDownList ID="Dropcategory" AutoPostBack="true"  CssClass="form-control" runat="server" OnSelectedIndexChanged="Dropcategory_SelectedIndexChanged"></asp:DropDownList>
                </div>
                  <div class="form-group">
                    <label>Sub Category</label>
                        <asp:DropDownList ID="Dropsubcategory" AutoPostBack="true" CssClass="form-control" runat="server" ></asp:DropDownList>
                     
                </div>
                <div class="form-group">
                    <label>Third Category</label>
                     <asp:TextBox ID="txtthirdcategory" CssClass="form-control" runat="server"></asp:TextBox>                  
                </div>
                <div class="form-group">
                    <label>Status</label>
                    <asp:DropDownList ID="Dropstatus" CssClass="form-control" runat="server">
                        <asp:ListItem>Active</asp:ListItem>
                        <asp:ListItem>Dactive</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="form-group text-center">
                    <asp:LinkButton ID="btnsave" CssClass="btn btn-success" OnClick="btnsave_Click"  runat="server"><i class="fa fa-save"></i> Save</asp:LinkButton>
                    <asp:LinkButton ID="btncancel" CssClass="btn btn-danger" runat="server">X Cancel</asp:LinkButton>
                </div>

            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Contentjavascript" Runat="Server">
</asp:Content>

