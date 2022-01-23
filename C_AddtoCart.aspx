<%@ Page Title="" Language="C#" MasterPageFile="~/C_ClientMaster.master" AutoEventWireup="true" CodeFile="C_AddtoCart.aspx.cs" Inherits="C_AddtoCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="maincss" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontet" runat="Server">
    <form runat="server">
        <div class="container">
            <a  href="C_productview.aspx">Contiues Shopping</a>
            <div class="row">
                <asp:GridView ID="GridView1" CssClass="table table-bordered table-condensed" AutoGenerateColumns="False" runat="server" ShowFooter="True">
                    <Columns>
                        <asp:BoundField DataField="srno" HeaderText="srno" />
                        <asp:TemplateField HeaderText="Product">
                            <ItemTemplate>
                                <asp:Image runat="server" Height="200px" Width="200px" ImageUrl='<%#Eval("product_image")%>'></asp:Image>
                            </ItemTemplate>

                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Description">
                            <ItemTemplate>
                                <asp:Label ID="lbldes" runat="server"><%#Eval("product_desc")%></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Unit Price">
                            <ItemTemplate>
                                <asp:Label ID="lblprice" runat="server"><%#Eval("product_new_price")%></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="quantity" HeaderText="Quantity" />
                        <asp:BoundField DataField="totalprice" HeaderText="totalprice" />
                        <asp:TemplateField HeaderText="Delete">
                            <ItemTemplate>
                                <asp:LinkButton ID="btndelete" runat="server" CssClass="btn btn-danger">X Delete</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>

                </asp:GridView>
            </div>
        </div>
    </form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="javascript" runat="Server">
</asp:Content>

