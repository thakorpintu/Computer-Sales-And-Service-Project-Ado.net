<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="A_SubCategoryList.aspx.cs" Inherits="A_SubCategoryList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Contentcss" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

    <div class="container">
        <div class="addcategory">
            <h3>SubCategory List</h3>
        </div>
        <div class="card">
            <div class="card-header">
                <h5>SubCategory List</h5>
            </div>
            <div class="card-body">
                <asp:GridView ID="GridView1" runat="server" CssClass="table text-center table-responsive-xl table-bordered" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand" >
                    <Columns>
                        <asp:TemplateField HeaderText="Edit">
                            <ItemTemplate>
                                <a href='A_AddSubCategory.aspx?edit=<%#Eval("sub_cat_id")%>' class="btn btn-success text-center"><i class="fa fa-edit text-white"></i>  Edit</a>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Delete">
                            <ItemTemplate>
                                <asp:LinkButton ID="btndelete" CommandArgument='<%#Eval("sub_cat_id")%>' OnClientClick="return confirm('Are You Sure Want to Delete ')" CssClass="btn btn-danger text-center" runat="server"><i class="fa fa-trash text-white"></i> Delete</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="ID">
                            <ItemTemplate>
                                <label><%#Eval("sub_cat_id")%></label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Category">
                            <ItemTemplate>
                                <label><%#Eval("sub_category")%></label>
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

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Contentjavascript" Runat="Server">
</asp:Content>

