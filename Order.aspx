<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="Kirigiti.Order" %>

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
                    <div class="navbar-collapse collapse">
                          <ul class="nav navbar-nav navbar-right">
                              <li class="active"><a href="Login.aspx">Find/AddCustomer</a></li>
                               <li class="active"><a href="UpdateClient.aspx">Customer Details</a></li>
                              <li class="active"><a href="OrderStatus.aspx">Pickup</a></li>
                              <li class="active"><a href="Order.aspx">NewOrder</a></li>
                              <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Contact<b class="caret"></b></a>
                                  <ul class="dropdown-menu">
                                      <li class="dropdown-header">choose</li>
                                      <li role="separator" class="divider"></li>
                                      <li class="active"><a href="default.aspx">LOGOUT</a></li>
                                      <li><a href="#">AboutUs</a></li>
                                  </ul>
                              </li>
                              <li><a href="default.aspx">LogOut</a></li>
                          </ul>
                    </div>
                </div>
            </div>
            </div>
       
        
        
  <div class="container">
    
        <small id="cname">Customer Name :</small>
        <asp:Label ID="cNameLbl" runat="server"></asp:Label>

        <br />
        <small id="cId">Customer id :</small>
        <asp:Label ID="custIde" runat="server"></asp:Label>
       


    </div>
    <div class="container">
    <div class="row clearfix">
        <div class ="orderAlign">
        <div id="userCreate">
            
                <div class="form-group">
  
        <table>
            <tr>
                <td> <asp:Button ID="C1" runat="server" Text="Shirt (S)" CssClass="btn btn-default" OnClick="addToBill" /></td>
                <td>  <asp:Button ID="C2" runat="server" Text="Shirt (M)" CssClass="btn btn-default" OnClick="addToBill"/></td>
                <td>  <asp:Button ID="C3" runat="server" Text="Shirt (L)" CssClass="btn btn-default" OnClick="addToBill"/></td>
                <td>  <asp:Button ID="C4" runat="server" Text="Pant (S)" CssClass="btn btn-default" OnClick="addToBill"/></td>

            </tr>
            <tr>
                <td> <asp:Button ID="C5" runat="server" Text="Pant (M)" CssClass="btn btn-default" OnClick="addToBill"/></td>
                <td>  <asp:Button ID="C6" runat="server" Text="Pant (L)" CssClass="btn btn-default" OnClick="addToBill"/></td>
                <td>  <asp:Button ID="C7" runat="server" Text="Dress (S)" CssClass="btn btn-default" OnClick="addToBill"/></td>
                <td>  <asp:Button ID="C8" runat="server" Text="Dress (M)" CssClass="btn btn-default" OnClick="addToBill"/></td>

            </tr>
            <tr>
                <td> <asp:Button ID="C9" runat="server" Text="Dress (L)" CssClass="btn btn-default" OnClick="addToBill"/></td>
                <td>  <asp:Button ID="C10" runat="server" Text="Bedsheet" CssClass="btn btn-default" OnClick="addToBill"/></td>
                <td>  <asp:Button ID="C11" runat="server" Text="Winter Coat" CssClass="btn btn-default" OnClick="addToBill"/></td>
                <td>  <asp:Button ID="C12" runat="server" Text="Jeans" CssClass="btn btn-default" OnClick="addToBill"/></td>

            </tr>
            <tr>
                <td> <asp:Button ID="C13" runat="server" Text="Blazer" CssClass="btn btn-default" OnClick="addToBill"/></td>
                <td>  <asp:Button ID="C14" runat="server" Text="Sweater" CssClass="btn btn-default" OnClick="addToBill"/></td>
                <td>  <asp:Button ID="C15" runat="server" Text="Table Cloth" CssClass="btn btn-default" OnClick="addToBill" /></td>
                <td>  <asp:Button ID="C16" runat="server" Text="Towel" CssClass="btn btn-default" OnClick="addToBill"/></td>

            </tr>
        

        </table>

    

        <asp:GridView ID="OrdersGrid" runat="server"/>


    <br />
    <label>Order Date:</label>
        <input type ="text" id="orderDate" runat="server" />

        <br /><br />
    <label>Pickup Date:</label>
        <input type ="text" id="pickupDate" runat="server" /><br />
                    <br />
    <label> This is total </label>
        <asp:TextBox ID="TotalAmt" runat="server"></asp:TextBox>
   
   
    
        <br /><br />
                    </div>
            </div>
    <div class="submitOrder">
    <label >Submit Order</label>
    <asp:Button ID="submitBtn" runat="server" Text="Submit" CssClass="btn btnCheckOut btn-default" OnClick="checkTotalAmount"/>
                     
               </div>
        </div>
    </div>
</div>
        

    </form>
</body>

</html>
