using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

 // DeleteCommand="DELETE FROM [product] WHERE [pro_id] = @pro_id" 
   // InsertCommand="INSERT INTO [product] ([cat_id], [name], [description], [image], [status]) VALUES (@cat_id, @name, @description, @image, @status)"
 //SelectCommand="SELECT [pro_id], [cat_id], [name], [description], [image], [status] FROM [product]"
  //  UpdateCommand="UPDATE [product] SET [cat_id] = @cat_id, [name] = @name, [description] = @description, [image] = @image, [status] = @status WHERE [pro_id] = @pro_id">

 
public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DatabaseConnectionString1"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindDrop();
            Print();
        }
    }
    public void BindDrop()
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
    public void Clear()
    {
        TextBox4.Text = string.Empty;
        TextBox2.Text = string.Empty;
        DropDownList1.ClearSelection();
        RadioButtonList1.ClearSelection();
    }
    public void Print()
    {
        SqlDataAdapter adpt = new SqlDataAdapter("SELECT [pro_id], [cat_id], [name], [description], [image], product.status FROM [product] ,[categories] WHERE [cat_id]= categories.id", con);
        DataTable dt = new DataTable();
        adpt.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        //Edit
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        //Delete
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        //Submit
        Button btn = (Button)sender;
        FileUpload1.SaveAs(Server.MapPath("~/uploads/"+FileUpload1.FileName));
        SqlCommand cmd = new SqlCommand("INSERT INTO [product] ([cat_id], [name], [description], [image], [status]) VALUES (@cat_id, @name, @description, @image, @status)", con);
        cmd.Parameters.AddWithValue("@name",TextBox4.Text);
        cmd.Parameters.AddWithValue("@cat_id", DropDownList1.SelectedValue);
        Clear();
        Literal5.Text = "Data Uploaded Successfully";
        cmd.Parameters.AddWithValue("@description", TextBox2.Text);
        cmd.Parameters.AddWithValue("@image",FileUpload1.FileName);
        cmd.Parameters.AddWithValue("@status",RadioButtonList1.SelectedValue);
        con.Open();
        int s = cmd.ExecuteNonQuery();
        con.Close();
        if (s == 1)
        {
            Print();
        }
        else
        {
            Clear();
            Literal5.Text = "error";
            Print();
        }
        ViewState["pro_id"] = btn.CommandArgument;
    }
}