<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Contentcss" runat="Server">
    <link href="css/sb-admin-2.css" rel="stylesheet" />
    <link href="css/sb-admin-2.min.css" rel="stylesheet" />
    <link href="css/dashboardcss.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <!-- Page Heading -->


    <!-- Content Row -->
    <div class="row">

        <!-- Earnings (Monthly) Card Example -->
        <div class="col-xl-4 col-md-6 mb-4">
            <div class="card  h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="roundshape">
                            <a><i class=" fa fa-2x fa fa fa-user"></i></a>
                        </div>
                        <div class="col mr-2 ml-3">
                            <div class="text-dark  text-uppercase font-weight-bold  mb-1">
                                <h5><strong>User</strong></h5>
                            </div>
                            <!--   <div class="h5 mb-0  text-dark">23</div>-->

                            <asp:Label ID="lbluser" CssClass="h5 mb-0  text-dark" runat="server" Text="Label">0</asp:Label>

                        </div>

                    </div>
                </div>
            </div>
        </div>

        <!-- Earnings (Monthly) Card Example -->
        <div class="col-xl-4 col-md-6 mb-4">
            <div class="card  shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">

                        <div class="roundshape bg-warning ">
                            <a><i class=" fa fa-2x fa fa-laptop"></i></a>
                        </div>
                        <div class="col mr-2 ml-3">

                            <div class=" font-weight-bold text-dark text-uppercase mb-1">
                                <h5><strong>Category total</strong></h5>
                            </div>
                            <asp:Label ID="lblseller" class="h5 mb-0 mr-3  text-gray-800" runat="server">0</asp:Label>
                        </div>

                    </div>
                </div>
            </div>
        </div>

        <!-- Earnings (Monthly) Card Example -->
        <div class="col-xl-4 col-md-6 mb-4">
            <div class="card  shadow h-100 py-2">
                <div class="card-body">


                    <div class="row no-gutters align-items-center">
                        <div class="roundshape bg-info ">
                            <a><i class=" fa fa-2x fa fa-money"></i></a>
                        </div>
                        <div class="col mr-2 ml-3">
                            <div>
                            </div>
                            <div class="text-xs font-weight-bold text-dark text-uppercase mb-1">
                                <h5><strong>Services</strong></h5>
                            </div>
                            <div class="row no-gutters align-items-center">
                                <div class="col-auto">
                                    <asp:Label ID="lblservice" class="h5 mb-0 mr-3  text-gray-800" runat="server">0</asp:Label>
                                    <!--<div class="h5 mb-0 mr-3  text-gray-800">6</div>-->
                                </div>

                            </div>
                        </div>

                    </div>

                </div>
            </div>
        </div>

        <!-- Pending Requests Card Example -->
        <div class="col-xl-6 col-md-6 mb-4">
            <div class="card shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="roundshape bg-danger ">
                            <a><i class=" fa fa-2x fa fa-outdent"></i></a>
                        </div>
                        <div class="col mr-2 ml-3">
                            <div class="text-xs font-weight-bold text-dark text-uppercase mb-1">
                                <h5><strong>Order</strong></h5>
                            </div>
                            <asp:Label ID="lblorder" class="h5 mb-0 mr-3  text-gray-800" runat="server">0</asp:Label>
                        </div>

                    </div>
                </div>
            </div>
        </div>

        <div class="col-xl-6 col-md-6 mb-4">
            <div class="card shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="roundshape bg-success ">
                            <a><i class=" fa fa-2x fa fa-free-code-camp"></i></a>
                        </div>
                        <div class="col mr-2 ml-3">
                            <div class="text-xs font-weight-bold text-dark text-uppercase mb-1">
                                <h5><strong>Inquiry</strong></h5>
                            </div>
                            <asp:Label ID="lblinquery" class="h5 mb-0 mr-3  text-gray-800" runat="server">0</asp:Label>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Content Row -->

    <div class="row">

        <!-- Area Chart -->
        <div class="col-xl-7 col-lg-7 col-md-7  mb-3 ">
            <div class="card shadow mb-4">
                <!-- Card Header - Dropdown -->

                <!-- Card Body -->

                <div class="card shadow-sm">
                    <div class="card-header">
                        <h5>User Details</h5>
                    </div>
                    <div class="autoscr">
                        <div class="card-body table-responsive">
                        </div>
                    </div>

                </div>

            </div>
        </div>

        <!-- Pie Chart -->
        <div class="col-xl-5 col-lg-5">

            <div class="card shadow mb-4">
                <!-- Card Header - Dropdown -->
                <div class="titclr" class="card-header  ">
                    <h5 class="ml-4 mt-3 text-white">SERVICES</h5>

                </div>
                <div class="auto-scroll">

                    <div class="card-body ">
                        <asp:Repeater ID="Repeater1" runat="server">
                            <ItemTemplate>
                                <div class="media ">

                                    <img class="mr-3 img-fluid" src="img/_20160304_194707.JPG" alt="Generic placeholder image">





                                    <div class="media-body">







                                        <h5 class="mt-0 ml-3 "></h5>
                                        <p class="ml-3"></p>


                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>

                </div>



                <!--    <div class="media mt-3">
                        <img class="mr-3 img-fluid" src="img/_20160304_194707.JPG" alt="Generic placeholder image">
                        <div class="media-body">
                            <h5 class="mt-0 ">FURNITURE</h5>
                            <p>BADROOM FURNITURE.</p>
                        </div>
                    </div>
                     <div class="media mt-3">
                        <img class="mr-3 img-fluid" src="img/_20160304_194707.JPG" alt="Generic placeholder image">
                        <div class="media-body">
                            <h5 class="mt-0 ">CONSTRUCTION</h5>
                            <p>CONSTRUCTION REQUEIR</p>
                        </div>
                    </div>
                     <div class="media mt-3">
                        <img class="mr-3 img-fluid" src="img/_20160304_194707.JPG" alt="Generic placeholder image">
                        <div class="media-body">
                           <h5 class="mt-0 ">POP DESIGN</h5>
                            <p>BADROOM POP DESIGN</p>
                        </div>
                    </div>-->

            </div>


        </div>
        <!-- Card Body -->


        <!--<div class="media pt-4   ml-3 mr-3   ">




                    <div class="imgtitle" class="col-xl-2 col-lg-2">
                        <div>
                            <img class="notimg  icon-circle mt-0" src="img/_20160304_194707.JPG" />
                        </div>
                    </div>


                    <div class="col-xl-10 col-lg-10">
                        <div class="imglside">
                            <h5 class="">ROAD CONTRACT</h5>
                            <p>YOU CAN SEE MY PROFILE AND THEN</br> DECIDE MY WORK QUALITY.</p>
                        </div>
                    </div>


                    <div class="media-body">

                        <div class="imgleftside">
                        </div>



                    </div>
                </div>-->
    </div>

    <!--  <div class="mediatop border-left-success">
            <div class="media pt-4   ml-3 mr-3  border-bottom-secondary ">
                
                    
                
               
               
                
  <div class="media-body">
    <h6 class="mt-0 font-weight-400 text-info  ">   FURNITURE
</h6>

      <h6  >BADROOM FURNITURE</h6>
    
  </div>
</div>
                    </div>-->

    <!-- <div class="mediatop border-left-success">
            <div class="media pt-4   ml-3 mr-3  border-bottom-secondary ">
                
                    
                
               
               
                
  <div class="media-body">
    <h6 class="mt-0 font-weight-400 text-info  ">CONSTRUCTION</h6>

      <h6  >CONSTRUCTION REQUEIR</h6>
    
  </div>
</div>
                    </div>-->

    <!-- <div class="mediatop">
            <div class="media pt-4   ml-3 mr-3  border-bottom-secondary ">
                
                    
                
               

               
                
  <div class="media-body">
    <h6 class="mt-0 font-weight-400 text-info  ">POP DESIGN</h6>

      <h6  >BADROOM POP DESIGN</h6>
    
  </div>
</div>
                    </div>-->
    </div>
    </div>


    <!-- Content Row -->

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Contentjavascript" runat="Server">
</asp:Content>

