<%@ Page Title="" Language="C#" MasterPageFile="~/C_ClientMaster.master" AutoEventWireup="true" CodeFile="C_ServiceRequest.aspx.cs" Inherits="C_ServiceRequest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="maincss" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontet" Runat="Server">
    <div class="container">
        <form runat="server">
            <div class="span10 ">
                <div class="well" style="margin: auto;">
                    <h2>service Request</h2>
                    <div class="control-group">
                        <div class="control-group">
                            <label class="control-label" for="inputEmail">Name</label>
                            <div class="controls">
                                <%--  <input class="span3" type="text" placeholder="Email">--%>
                                <asp:TextBox ID="txtname"  CssClass="span7" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="inputPassword">Address</label>
                            <div class="controls">
                                <%-- <input type="password" class="span3" placeholder="Password">--%>
                                <asp:TextBox ID="txtaddress" CssClass="span7" TextMode="MultiLine" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        
                        <div class="control-group">
                            <label class="control-label" for="inputPassword">Email</label>
                            <div class="controls">
                                <%-- <input type="password" class="span3" placeholder="Password">--%>
                                <asp:TextBox ID="txtemail" TextMode="Email" CssClass="span5" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="inputPassword">Mobile No</label>
                            <div class="controls">
                                <%-- <input type="password" class="span3" placeholder="Password">--%>
                                <asp:TextBox ID="txtmobile" TextMode="Number" CssClass="span5" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="inputPassword">Computer Type:</label>
                            <div class="controls">
                                <%-- <input type="password" class="span3" placeholder="Password">--%>
                                <asp:DropDownList ID="dropcomputertype" CssClass="span5" runat="server"></asp:DropDownList>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="inputPassword">Computer Model</label>
                            <div class="controls">
                                <%-- <input type="password" class="span3" placeholder="Password">--%>
                                <asp:TextBox ID="txtmodel"  CssClass="span5" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="inputPassword">Serial No</label>
                            <div class="controls">
                                <%-- <input type="password" class="span3" placeholder="Password">--%>
                                <asp:TextBox ID="txtserialno"  CssClass="span5" runat="server"></asp:TextBox>
                            </div>
                        </div>
                          <div class="control-group">
                            <label class="control-label" for="inputPassword">Problem Description</label>
                            <div class="controls">
                                <%-- <input type="password" class="span3" placeholder="Password">--%>
                                <asp:TextBox ID="txtdesproblem" TextMode="MultiLine" CssClass="span5" runat="server"></asp:TextBox>
                            </div>
                        </div>
                         <div class="control-group">
                            <label class="control-label" for="inputPassword">Please Include Any Other Information</label>
                            <div class="controls">
                                <%-- <input type="password" class="span3" placeholder="Password">--%>
                                <asp:TextBox ID="TextBox6" TextMode="MultiLine" CssClass="span5" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="inputPassword">Computer Warranty Status</label>
                            <div class="controls">
                                <%-- <input type="password" class="span3" placeholder="Password">--%>
                               
                                <label> <asp:RadioButton ID="RadioButton1" GroupName="rdo" runat="server" /> In Warranty</label>
                                
                                <label> <asp:RadioButton ID="RadioButton2" GroupName="rdo" runat="server" /> Out Of Warranty</label>
                               
                            </div>
                        </div>
                        <div class="control-group">
                            <div class="controls">
                                <%-- <button type="submit" class="defaultBtn">Sign in</button>--%>
                                <asp:LinkButton ID="btnlogin" CssClass="defaultBtn " runat="server">Submit</asp:LinkButton>
                                <%--  <a href="#">Forget password?</a>--%>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="javascript" Runat="Server">
</asp:Content>

