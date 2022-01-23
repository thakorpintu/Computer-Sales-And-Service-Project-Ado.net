<%@ Page Title="" Language="C#" MasterPageFile="~/C_ClientMaster.master" AutoEventWireup="true" CodeFile="C_Feedback.aspx.cs" Inherits="C_Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="maincss" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontet" runat="Server">
    <div class="container">
        <form runat="server">
            <div class="span4 ">
                <div class="well" style="margin: auto;">
                    <h2>Feedback</h2>
                    <div class="control-group">
                        <div class="control-group">
                            <label class="control-label" for="inputEmail">Name</label>
                            <div class="controls">
                                <%--  <input class="span3" type="text" placeholder="Email">--%>
                                <asp:TextBox ID="txtname" CssClass="span3" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="inputPassword">Email</label>
                            <div class="controls">
                                <%-- <input type="password" class="span3" placeholder="Password">--%>
                                <asp:TextBox ID="txtemail" TextMode="Email" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="inputPassword">Massage</label>
                            <div class="controls">
                                <%-- <input type="password" class="span3" placeholder="Password">--%>
                                <asp:TextBox ID="txtmsg" TextMode="MultiLine" runat="server"></asp:TextBox>
                            </div>
                        </div>

                        <div class="control-group">
                            <div class="controls">
                                <%-- <button type="submit" class="defaultBtn">Sign in</button>--%>
                                <asp:LinkButton ID="btnlogin" CssClass="defaultBtn" runat="server">Submit</asp:LinkButton>
                                <%--  <a href="#">Forget password?</a>--%>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="javascript" runat="Server">
</asp:Content>

