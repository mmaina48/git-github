<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AddStocks.aspx.cs" Inherits="Kirigiti.AddStocks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:HiddenField ID="hfSupplierid" runat="server" />
    
 <div class=" form-horizontal">
<h1>Add Stock and Supplier </h1>
     <div class="form-group">
                        <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="SupplierName"></asp:Label>
                        <div class="col-md-3">
                            <asp:TextBox ID="SupplierName" CssClass="form-control"  runat="server"></asp:TextBox> 
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="text-danger" runat="server" ErrorMessage="Supplier name is required" ControlToValidate="SupplierName"></asp:RequiredFieldValidator>
                        </div>
                    </div>
     <div class="form-group">
                        <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="stockName"></asp:Label>
                        <div class="col-md-3">
                            <asp:TextBox ID="stockName" CssClass="form-control" runat="server"></asp:TextBox>          
                        </div>
                    </div>
     <div class="form-group">
                        <asp:Label ID="Label3" runat="server" CssClass="col-md-2 control-label" Text="SupplierAddress"></asp:Label>
                        <div class="col-md-3">
                            <asp:TextBox ID="SupplierAddress" CssClass="form-control" runat="server"></asp:TextBox>          
                        </div>
                    </div>
      <div class="form-group">
                        <div class="col-md-2"></div>
                        <div class="col-md-6">
                            <asp:Button ID="btnSave" runat="server" Text="Save"  OnClick="btnSave_Click" />
                            <asp:Button ID="btnDelete" runat="server" Text="Delete"  OnClick="btnDelete_Click"  />
                            <asp:Button ID="btnclear" runat="server" Text="Clear"  OnClick="btnclear_Click"  />

                        </div>
        <br />
      <div class="form-group">
                        <div class="col-md-2"></div>
                        <div class="col-md-6">
                            <asp:Label ID="lblSuccessMessage" runat="server"  CssClass="text-success"></asp:Label>
                        </div>
                    </div>
     <div class="form-group">
                        <div class="col-md-2"></div>
                        <div class="col-md-6">
                            <asp:Label ID="lblErrorMessage" runat="server"  CssClass="text-danger" ></asp:Label>
                        </div>
                    </div>
     </div>
     </div>
        
    
     <asp:GridView ID="gvSuppliers" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="false">
         <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
         <EditRowStyle BackColor="#999999" />
         <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
         <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
         <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
         <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
         <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
         <SortedAscendingCellStyle BackColor="#E9E7E2" />
         <SortedAscendingHeaderStyle BackColor="#506C8C" />
         <SortedDescendingCellStyle BackColor="#FFFDF8" />
         <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
         <Columns>
             <asp:BoundField DataField="SupplierName" HeaderText="SupplierName" />
             <asp:BoundField DataField="stockName" HeaderText="stockName" />
             <asp:BoundField DataField="SupplierAddress" HeaderText="SupplierAddress" />
             <asp:TemplateField>
                 <ItemTemplate>
                     <asp:LinkButton ID="lnkView" runat="server" CommandArgument='<%# Eval("Supplierid") %>' OnClick="lnkView_Click" >view</asp:LinkButton>
                 </ItemTemplate>
             </asp:TemplateField>
         </Columns>
     </asp:GridView>
</asp:Content>
