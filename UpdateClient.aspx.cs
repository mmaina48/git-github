using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


namespace Kirigiti
{
    public partial class UpdateClient : System.Web.UI.Page
    {
        string connectionString = @"Data Source=MICK\SQLEXPRESS;Integrated Security=true;Initial Catalog=DryCleaning.mdf";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PopulateGridview();
            }

        }
        void PopulateGridview()
        {
            DataTable dtbl = new DataTable();
            using (SqlConnection sqlCon = new SqlConnection(connectionString))
            {
                sqlCon.Open();
                SqlDataAdapter sqlDa = new SqlDataAdapter("SELECT * FROM Customers", sqlCon);
                sqlDa.Fill(dtbl);
            }
            if (dtbl.Rows.Count > 0)
            {
                gvCustomers.DataSource = dtbl;
                gvCustomers.DataBind();
            }
            else
            {
                dtbl.Rows.Add(dtbl.NewRow());
                gvCustomers.DataSource = dtbl;
                gvCustomers.DataBind();
                gvCustomers.Rows[0].Cells.Clear();
                gvCustomers.Rows[0].Cells.Add(new TableCell());
                gvCustomers.Rows[0].Cells[0].ColumnSpan = dtbl.Columns.Count;
                gvCustomers.Rows[0].Cells[0].Text = "No Data Found ..!";
                gvCustomers.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;
            }
        }

        protected void gvCustomers_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("AddNew"))
            {
                using (SqlConnection sqlCon = new SqlConnection(connectionString))
                {

                }
            }
        }

        protected void gvCustomers_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvCustomers.EditIndex = e.NewEditIndex;
            PopulateGridview();
        }

        protected void gvCustomers_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvCustomers.EditIndex = -1;
            PopulateGridview();
        }

        protected void gvCustomers_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            



                using (SqlConnection sqlCon = new SqlConnection(connectionString))
                {
                    sqlCon.Open();
                    string query = "UPDATE Customers SET CustomerFName=@CustomerFName,CustomerLName=@CustomerLName,CustomerAddress=@CustomerAddress,CustomerContactNo=@CustomerContactNo WHERE CustomerId = @id";
                    SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                    sqlCmd.Parameters.AddWithValue("@CustomerFName", (gvCustomers.Rows[e.RowIndex].FindControl("txtCustomerFName") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@CustomerLName", (gvCustomers.Rows[e.RowIndex].FindControl("txCustomerLName") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@CustomerAddress", (gvCustomers.Rows[e.RowIndex].FindControl("txtCustomerAddress") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@CustomerContactNo", (gvCustomers.Rows[e.RowIndex].FindControl("txtCustomerContactNo") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@id", Convert.ToInt32(gvCustomers.DataKeys[e.RowIndex].Value.ToString()));
                    sqlCmd.ExecuteNonQuery();
                    gvCustomers.EditIndex = -1;
                    PopulateGridview();
                    lblSuccessMessage.Text = "Selected Record Updated";
                    lblErrorMessage.Text = "";
                }

            
           

        }

        protected void gvCustomers_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            
                using (SqlConnection sqlCon = new SqlConnection(connectionString))
                {
                    sqlCon.Open();
                    string query = "DELETE FROM Customers WHERE CustomerId = @id";
                    SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                    sqlCmd.Parameters.AddWithValue("@id", Convert.ToInt32(gvCustomers.DataKeys[e.RowIndex].Value.ToString()));
                    sqlCmd.ExecuteNonQuery();
                    PopulateGridview();
                    lblSuccessMessage.Text = "Selected Record Deleted";
                    lblErrorMessage.Text = "";
                }
            
            
            }
        }
    }
