<%@ Page Title="" Language="C#" MasterPageFile="~/C_ClientMaster.master" AutoEventWireup="true" CodeFile="C_LoginandRegisration.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="maincss" runat="Server">
    <%--<link href="style.css" rel="stylesheet" />--%>
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <link href="assets/css/bootstrap.css" rel="stylesheet"/>
    <!-- Customize styles -->
    <link href="style.css" rel="stylesheet"/>
    <!-- font awesome styles -->
	<link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet">
	
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontet" runat="Server">
    <form runat="server">
        <div class="container">
            <div class="span9">
                <ul class="breadcrumb">
                    <li><a href="index.html">Home</a> <span class="divider">/</span></li>
                    <li class="active">Login</li>
                </ul>
                <h3>Login</h3>
                <hr class="soft" />

                <div class="row">
                    <div class="span4">
                        <div class="well">
                            <h5>CREATE YOUR ACCOUNT</h5>
                            <br />
                            Enter your e-mail address to create an account.<br />
                            <br />
                            <br />
                            <div>
                                <div class="control-group">
                                    <label class="control-label" for="inputEmail">Name</label>
                                    <div class="controls">
                                       <%-- <input class="span3" type="text" placeholder="Email">--%>
                                        <asp:TextBox ID="txtname" CssClass="span3" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                 <div class="control-group">
                                    <label class="control-label" for="inputEmail">Email</label>
                                    <div class="controls">
                                       <%-- <input class="span3" type="text" placeholder="Email">--%>
                                        <asp:TextBox ID="txtemail" CssClass="span3" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                 <div class="control-group">
                                    <label class="control-label" for="inputEmail">password</label>
                                    <div class="controls">
                                       <%-- <input class="span3" type="text" placeholder="Email">--%>
                                        <asp:TextBox ID="txtpassword" CssClass="span3" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                 <div class="control-group">
                                    <label class="control-label" for="inputEmail">Mobile</label>
                                    <div class="controls">
                                       <%-- <input class="span3" type="text" placeholder="Email">--%>
                                        <asp:TextBox ID="txtmobile" CssClass="span3" runat="server"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="controls">
                                    <button type="submit" class="btn block">Create Your Account</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="span1">&nbsp;</div>
                    <div class="span4">
                        <div class="well">
                            <h5>ALREADY REGISTERED ?</h5>
                            <div>
                                <div class="control-group">
                                    <label class="control-label" for="inputEmail">Email</label>
                                    <div class="controls">
                                        <%--<input class="span3" type="text" placeholder="Email">--%>
                                        <asp:TextBox ID="txtem" CssClass="span3" required="email" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="inputPassword">Password</label>
                                    <div class="controls">
                                        <%--<input type="password" class="span3" placeholder="Password">--%>
                                        <asp:TextBox ID="txtpass" CssClass="span3" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <div class="controls">
                                        <button type="submit" class="defaultBtn">Sign in</button>
                                        <a href="#">Forget password?</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="javascript" runat="Server">
</asp:Content>

