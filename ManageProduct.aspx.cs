using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DatabaseConnectionString1"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            BindDropDown();
            Print();
        }
        
    }
    public void Clear()
    {
        TextBox4.Text = string.Empty;
        TextBox2.Text = string.Empty;
        DropDownList1.ClearSelection();
        RadioButtonList1.ClearSelection();
    }
    public void Print()
    {
        SqlDataAdapter adpt = new SqlDataAdapter("SELECT products.id, [category_id], [category] FROM [products],[categories] WHERE [category_id]=category_id", con);
        DataTable dt = new DataTable();
        adpt.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
        
    }

    public void BindDropDown()
    {
        SqlDataAdapter adpt = new SqlDataAdapter("SELECT [id], [category], [status] FROM [categories] WHERE [status]=1", con);
        DataTable dt = new DataTable();
        adpt.Fill(dt);
        DropDownList1.DataTextField = "category";
        DropDownList1.DataValueField = "id";
        DropDownList1.DataSource = dt;
        DropDownList1.DataBind();
        DropDownList1.Items.Insert(0, new ListItem("Please select category", ""));
        DropDownList1.Items[0].Selected = true;
        DropDownList1.Items[0].Attributes["disabled"] = "disabled";

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        FileUpload1.SaveAs(Server.MapPath("~/uploads/" + FileUpload1.FileName));
        SqlCommand cmd = new SqlCommand("INSERT INTO [products] ([category_id],[name],[description],[image],[status]) VALUES(@category_id,@name,@description,@image,@status)", con);
        cmd.Parameters.AddWithValue("@category_id", DropDownList1.SelectedValue);
        cmd.Parameters.AddWithValue("@name",TextBox4.Text);
        cmd.Parameters.AddWithValue("@description",TextBox4.Text);
        cmd.Parameters.AddWithValue("@image", FileUpload1.FileName);
        cmd.Parameters.AddWithValue("@status", RadioButtonList1.SelectedValue);
        con.Open();
        int s = cmd.ExecuteNonQuery();
        con.Close();
        if (s == 1)
        {
            Literal5.Text = "Product inserted";
            Print();
        }
        else
        {
            Literal5.Text = "error";
        }
       
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        //Edit
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        //Delete
    }
}