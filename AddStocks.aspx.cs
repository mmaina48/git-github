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
    public partial class AddStocks : System.Web.UI.Page
    {
        SqlConnection sqlCon = new SqlConnection(@"Data Source=MICK\SQLEXPRESS;Initial Catalog=DryCleaning.mdf;Integrated Security=true;");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) { 
            btnDelete.Enabled = false;
                FillGridView();

            }
        }

        protected void btnclear_Click(object sender, EventArgs e)
        {

        }
        public void Clear()
        {
            hfSupplierid.Value = "";
            SupplierName.Text = stockName.Text = SupplierAddress.Text = "";
            lblSuccessMessage.Text = lblErrorMessage.Text = "";
            btnSave.Text = "";
            btnDelete.Enabled = false;  
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (sqlCon.State == ConnectionState.Closed)
                sqlCon.Open();
            SqlCommand sqlCmd = new SqlCommand("SuppliersCreateOrUpdate", sqlCon);
            sqlCmd.CommandType = CommandType.StoredProcedure;
            sqlCmd.Parameters.AddWithValue("@Supplierid", (hfSupplierid.Value == "" ? 0 : Convert.ToInt32(hfSupplierid.Value)));
            sqlCmd.Parameters.AddWithValue("@SupplierName", SupplierName.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@stockName", stockName.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@SupplierAddress", SupplierAddress.Text.Trim());
            sqlCmd.ExecuteNonQuery();
            sqlCon.Close();
            string Supplierid = hfSupplierid.Value;
            Clear();
            if(hfSupplierid.Value == "")
                lblSuccessMessage.Text = "Saved Successfully";
            else
                lblSuccessMessage.Text = "Updated Successfully";
            FillGridView();
        }

        void FillGridView()
        {
            if (sqlCon.State == ConnectionState.Closed)
                sqlCon.Open();
            SqlDataAdapter sqlDa = new SqlDataAdapter("SuppliersViewAll", sqlCon);
            sqlDa.SelectCommand.CommandType = CommandType.StoredProcedure;
            DataTable dtbl = new DataTable();
            sqlDa.Fill(dtbl);
            sqlCon.Close();
            gvSuppliers.DataSource = dtbl;
            gvSuppliers.DataBind();

        }

        protected void lnkView_Click(object sender, EventArgs e)
        {
            int Supplierid = Convert.ToInt32((sender as LinkButton).CommandArgument);
            if (sqlCon.State == ConnectionState.Closed)
                sqlCon.Open();
            SqlDataAdapter sqlDa = new SqlDataAdapter("SuppliersViewByid", sqlCon);
            sqlDa.SelectCommand.CommandType = CommandType.StoredProcedure;
            sqlDa.SelectCommand.Parameters.AddWithValue("@Supplierid", Supplierid);
            DataTable dtbl = new DataTable();
            sqlDa.Fill(dtbl);
            sqlCon.Close();
            hfSupplierid.Value = Supplierid.ToString();
            SupplierName.Text = dtbl.Rows[0]["SupplierName"].ToString();
            stockName.Text = dtbl.Rows[0]["stockName"].ToString();
            SupplierAddress.Text = dtbl.Rows[0]["SupplierAddress"].ToString();
            btnSave.Text = "Update";
            btnDelete.Enabled = true;
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            if (sqlCon.State == ConnectionState.Closed)
                sqlCon.Open();
            SqlCommand sqlCmd = new SqlCommand("SuppliersDeleteByid", sqlCon);
            sqlCmd.CommandType = CommandType.StoredProcedure;
            sqlCmd.Parameters.AddWithValue("@Supplierid", Convert.ToInt32(hfSupplierid.Value));
            sqlCmd.ExecuteNonQuery();
            sqlCon.Close();
            Clear();
            FillGridView();
            lblSuccessMessage.Text = "Deleted Successfully";
        }
    }
}