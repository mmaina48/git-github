<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateLogin.aspx.cs" Inherits="Kirigiti.CreateLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Home</title>
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
                    </div>
                </div>
        </div>
       
        <!---createclient-->
       
        <div class="container">
    <div class="row clearfix">
        <div id="userCreate">
            
                <div class="form-group">
    <label> Please Enter customer details.</label>

    <br />
    <br />

    <label> FirstName: </label>
    <input type="text" id="fname" class="form-control" runat="server" />

    <br />

    <label> LastName: </label>
    <input type="text" id="lname" class="form-control" runat="server" />

    <br />

    <label> Address: </label>
    <input type="text" id="address" class="form-control" runat="server" />

    <br />

    <label>Phone Number: </label>
    <input type="number" id="phone" class="form-control" runat="server" />

    <br />
   
    <%--<label> Password: </label>
    <input id="newPassword" type="password" />

    <label> Phone Number: </label>--%>

    <asp:Button ID="createbtn" runat="server" CssClass="btn btn-default" Text="Create New User" OnClick="createbtn_Click" />
    

    <asp:Button ID="backbtn" runat="server" CssClass="btn btn2 btn-default" Text="Back" OnClick="backbtn_Click"  />
        
    </div>
               
        </div>
    </div>
</div>
         <!---createclient end-->
    </form>
      <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
