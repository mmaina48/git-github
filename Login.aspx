<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Kirigiti.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>SIGNIN</title>
   <script src="js/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/Custom-Cs.css" rel="stylesheet" />
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="navbar navbar-default navbar-fixed-top" role="navigation">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="#" ><span> <img alt="logo" src="image/login2.png" height="30" /></span>KIRIGITI DRY CLEAN</a>       
                    </div>
                    <div class="navbar-collapse collapse">
                          <ul class="nav navbar-nav navbar-right">
                              <li><a href="#">Find/AddCustomer</a></li>
                              <li><a href="#">Pickup</a></li>
                              <li><a href="#">NewOrder</a></li>
                              <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Contact<b class="caret"></b></a>
                                  <ul class="dropdown-menu">
                                      <li class="dropdown-header">choose</li>
                                      <li role="separator" class="divider"></li>
                                      <li><a href="#">home</a></li>
                              <li><a href="#">AboutUs</a></li>
                       </ul>
                   </li>
                           
                         </ul>
                    </div>
                </div>
            </div>
            </div>
        <!-----login form -->
        <div class="container">
         <h2 class="form-signin-heading">Please enter Customers phone number</h2>
                <label class="sr-only">Phone Number: </label>
                <br />
                <input type="text" id="loginid" runat="server" class="form-control" placeholder="Phone Number" />

                <br />
                <br />
                <br />
         

                <asp:Button ID="newUserbtn" CssClass="btn btn-lg btn-primary btn-block" runat="server" Text="ADD CUSTOMER" OnClick="newUserbtn_Click" />

                <br />
                <br />
        
                <asp:Button ID="submitbtn" CssClass="btn btn-lg btn-primary btn-block" runat="server" Text="FIND" OnClick="submitbtn_Click"/>

                <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px"></asp:DetailsView>
               
          </div>

         <!-----login form -->
        <br />
    </form>

    <hr />

     <footer>
            <div class="container">
                <p>&copy; 2018 mm@tecy.com</p>      
            </div>
        </footer>
    
      <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>