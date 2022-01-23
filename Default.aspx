<%@ Page Title="" Language="VB" MasterPageFile="~/C_ClientMaster.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="maincss" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontet" Runat="Server">
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
                                    <label class="control-label" for="inputEmail">E-mail address</label>
                                    <div class="controls">
                                        <input class="span3" type="text" placeholder="Email">
                                        
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
                                        <input class="span3" type="text" placeholder="Email">
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="inputPassword">Password</label>
                                    <div class="controls">
                                        <input type="password" class="span3" placeholder="Password">
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
<asp:Content ID="Content3" ContentPlaceHolderID="javascript" Runat="Server">
</asp:Content>

