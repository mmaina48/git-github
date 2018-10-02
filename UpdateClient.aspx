<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateClient.aspx.cs" Inherits="Kirigiti.UpdateClient" %>

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
                              <li class="active"><a href="AddUser.aspx">AddUser</a></li>
                              <li class="active"><a href="Report.aspx">REPORTS</a></li>
                              <li class="active"><a href="AddStocks.aspx">STOCK</a></li>
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
        
             <h1>Update/Delete/Customers</h1>
    <div class="container">
     
        <asp:GridView ID="gvCustomers" runat="server" AutoGenerateColumns="false" ShowHeaderWhenEmpty="true" DataKeyNames="CustomerId" 
             OnRowCommand="gvCustomers_RowCommand" OnRowEditing="gvCustomers_RowEditing" OnRowCancelingEdit="gvCustomers_RowCancelingEdit"
             OnRowUpdating="gvCustomers_RowUpdating" OnRowDeleting="gvCustomers_RowDeleting"
            BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <%--Theme Properties--%>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <SortedAscendingCellStyle BackColor="#F4F4FD" />
            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
            <SortedDescendingCellStyle BackColor="#D8D8F0" />
            <SortedDescendingHeaderStyle BackColor="#3E3277" />
            <Columns>
                <asp:TemplateField HeaderText="CustomerFName">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("CustomerFName") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtCustomerFName" Text='<%# Eval("CustomerFName") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtCustomerFNameFooter" runat="server"></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="CustomerLName">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("CustomerLName") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txCustomerLName" Text='<%# Eval("CustomerLName") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtCustomerLNameFooter" runat="server"></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="CustomerAddress">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("CustomerAddress") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtCustomerAddress" Text='<%# Eval("CustomerAddress") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtCustomerAddressFooter" runat="server"></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="CustomerContactNo">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("CustomerContactNo") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="CustomerContactNo" Text='<%# Eval("CustomerContactNo") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtCustomerContactNoFooter" runat="server"></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:ImageButton ImageUrl="~/image/edit.png" runat="server" CommandName="Edit" ToolTip="Edit" Width="20px" Height="20px"/>
                            <asp:ImageButton ImageUrl="~/image/delete.png" runat="server" CommandName="Delete" ToolTip="Delete" Width="20px" Height="20px"/>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:ImageButton ImageUrl="~/image/save.png" runat="server" CommandName="Update" ToolTip="Update" Width="20px" Height="20px"/>
                            <asp:ImageButton ImageUrl="~/image/cancel.png" runat="server" CommandName="Cancel" ToolTip="Cancel" Width="20px" Height="20px"/>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:ImageButton ImageUrl="~/image/addnew.png" runat="server" CommandName="AddNew" ToolTip="Add New" Width="20px" Height="20px"/>
                        </FooterTemplate>
                    </asp:TemplateField>
                </Columns>
    </asp:GridView>
    <br />
    <asp:Label ID="lblSuccessMessage" runat="server" Text="" ForeColor="YellowGreen"></asp:Label>
     <br />
    <asp:Label ID="lblErrorMessage" runat="server" Text="" ForeColor="Red"></asp:Label>
    
        </div>
    </form>
</body>
</html>
