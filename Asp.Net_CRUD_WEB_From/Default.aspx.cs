using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asp.Net_CRUD_WEB_From
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                GetProductList();
            }
        }

        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-NBMNANF;Initial Catalog=MyTest_DB;Integrated Security=True;TrustServerCertificate=True");


        protected void Button1_Click(object sender, EventArgs e)
        {
            int productid = int.Parse(TextBox1.Text);
            string iname = TextBox2.Text,specification= TextBox3.Text,unit=DropDownList1.SelectedValue,status=RadioButtonList1.SelectedValue;
            DateTime cdate = DateTime.Parse(TextBox4.Text);
            con.Open();
            SqlCommand co = new SqlCommand("exec ProductSetup_SP '" + productid + "', '" + iname + "', '" + specification + "', '" + unit + "', '" + status + "', '" + cdate + "'", con);
            co.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "Swal.fire('Success!', 'Record added successfully!', 'success');", true);
            GetProductList();
        }

        void GetProductList()
        {
            SqlCommand co = new SqlCommand("exec ProductList_SP", con);
            SqlDataAdapter sd = new SqlDataAdapter(co);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            int productid = int.Parse(TextBox1.Text);
            string iname = TextBox2.Text, specification = TextBox3.Text, unit = DropDownList1.SelectedValue, status = RadioButtonList1.SelectedValue;
            DateTime cdate = DateTime.Parse(TextBox4.Text);
            con.Open();
            SqlCommand co = new SqlCommand("exec ProductUpdate_SP '" + productid + "', '" + iname + "', '" + specification + "', '" + unit + "', '" + status + "', '" + cdate + "'", con);
            co.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "Swal.fire('Success!', 'Record Updated successfully!', 'success');", true);
            GetProductList();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            int productid = int.Parse(TextBox1.Text);
            con.Open();
            SqlCommand co = new SqlCommand("exec ProductDelete_SP '" + productid + "'", con);
            co.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "Swal.fire('Success!', 'Record Deleted successfully!', 'success');", true);
            GetProductList();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            int productid = int.Parse(TextBox1.Text);
            con.Open();
            SqlCommand co = new SqlCommand("exec ProductSearch_SP '" + productid + "'", con);
            SqlDataAdapter sd = new SqlDataAdapter(co);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}