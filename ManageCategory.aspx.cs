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
  //  " DeleteCommand="DELETE FROM [categories] WHERE [id] = @id"
    //InsertCommand="INSERT INTO [categories] ([category], [status]) VALUES (@category, @status)"
    //SelectCommand="SELECT [id], [category], [status] FROM [categories]" 
    //UpdateCommand="UPDATE [categories] SET [category] = @category, [status] = @status WHERE [id] = @id"
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DatabaseConnectionString1"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        print();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        if (Button3.Text== "Submit")
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO [categories]([category],[status])VALUES (@category,@status)", con);
            cmd.Parameters.AddWithValue("@category", TextBox4.Text);
            cmd.Parameters.AddWithValue("@status", RadioButtonList1.SelectedValue);
            con.Open();
            int s = cmd.ExecuteNonQuery();
            con.Close();
            if (s == 1)
            {
                TextBox4.Text = string.Empty;
                RadioButtonList1.ClearSelection();
                print();
                Button3.Text = "UPDATE";
                Literal5.Text = "User Inserted successfully";
            }
            else
            {
                TextBox4.Text = string.Empty;
                RadioButtonList1.ClearSelection();
                print();
                Button3.Text = "UPDATE";
                Literal5.Text = "Error!!";
            }
        }
        else
        {
            SqlCommand cmd = new SqlCommand("UPDATE [categories] SET [category]=@category,[status]=@status WHERE [id]=@id" ,con);
            cmd.Parameters.AddWithValue("@category", TextBox4.Text);
            cmd.Parameters.AddWithValue("@status", RadioButtonList1.SelectedValue);
            cmd.Parameters.AddWithValue("@id", ViewState["category_id"]);
            con.Open();
            int a = cmd.ExecuteNonQuery();
            con.Close();
            if (a == 1)
            {
                TextBox4.Text = string.Empty;
                RadioButtonList1.ClearSelection();
                print();
                Button3.Text = "Submit";
                Literal5.Text = "User Updated successfully";
            }
            else
            {
                TextBox4.Text = string.Empty;
                RadioButtonList1.ClearSelection();
                Button3.Text = "Submit";
                print();
                Literal5.Text = "Error!!";
            }
        }
    }
    
    
    public void print()
    {

        SqlDataAdapter adpt = new SqlDataAdapter("SELECT [id],[category],[status] FROM [categories]", con);
        DataTable dt = new DataTable();
        adpt.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        try
        {
            //delete
            Button btn = (Button)sender;
            SqlCommand cmd = new SqlCommand("DELETE FROM [categories] WHERE [id] = @id", con);
            cmd.Parameters.AddWithValue("@id", btn.CommandArgument);
            con.Open();
            int s = cmd.ExecuteNonQuery();

            con.Close();
            if (s == 1)
            {
                TextBox4.Text = string.Empty;
                RadioButtonList1.ClearSelection();
                print();
                Literal5.Text = "Record Delete";
            }
            else
            {
                TextBox4.Text = string.Empty;
                RadioButtonList1.ClearSelection();
                print();
                Literal5.Text = "Error";
            }
        }


        catch
        {
            Response.Write("<script language='java script'> alert('You can not delete this category because system having products of this category') </script>");
        }
    }
     

    protected void Button5_Click(object sender, EventArgs e)
    {
        
        Button btn = (Button)sender;
        SqlDataAdapter adpt = new SqlDataAdapter("SELECT [id], [category], [status] FROM [categories] WHERE [id] = " + btn.CommandArgument, con);
        DataTable dt = new DataTable();
        adpt.Fill(dt);
        TextBox4.Text = dt.Rows[0][1].ToString();
         ViewState["category_id"] = btn.CommandArgument;
         Button3.Text = "Update";
    }
}
