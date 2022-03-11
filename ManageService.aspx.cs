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
         print();
    
    }
    public void print()
    {
        SqlDataAdapter adpt = new SqlDataAdapter("SELECT [id],[title],[discription],[status] FROM [service]", con);
        DataTable dt = new DataTable();
        adpt.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        if (Button4.Text== "Button")
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO [service] ([title],[discription], [status]) VALUES (@title, @discription, @status)" , con);
            cmd.Parameters.AddWithValue("@title", TextBox4.Text);
            cmd.Parameters.AddWithValue("@discription", TextBox2.Text);
            cmd.Parameters.AddWithValue("@status", RadioButtonList1.SelectedValue);
            con.Open();
            int s = cmd.ExecuteNonQuery();
            con.Close();
            if (s == 1)
            {
                TextBox4.Text = string.Empty;
                TextBox2.Text = string.Empty;
                RadioButtonList1.ClearSelection();
                print();
                Button4.Text = "submit";
                Literal5.Text = "User Inserted successfully";
            }
            else
            {
                TextBox4.Text = string.Empty;
                TextBox2.Text = string.Empty;
                RadioButtonList1.ClearSelection();
                print();
                Literal5.Text = "Error!!";
            }
        }
        else
        {
            SqlCommand cmd = new SqlCommand("UPDATE [service] SET [title] = @title, [discription] = discription, [status] = @status WHERE [id] = @id", con);
            cmd.Parameters.AddWithValue("@title", TextBox4.Text.Trim());
            cmd.Parameters.AddWithValue("@discription", TextBox2.Text.Trim());
            cmd.Parameters.AddWithValue("@status", RadioButtonList1.SelectedValue);
            cmd.Parameters.AddWithValue("@id", ViewState["service_id"]);
            con.Open();
            int s = cmd.ExecuteNonQuery();
            con.Close();
            if (s == 1)
            {
                TextBox4.Text = string.Empty;
                TextBox2.Text = string.Empty;
                RadioButtonList1.ClearSelection();
                print();
                Button4.Text = "submit";
                Literal5.Text = "User Updated successfully";
            }
            else
            {
                TextBox4.Text = string.Empty;
                TextBox2.Text = string.Empty;
                RadioButtonList1.ClearSelection();
                print();
                Literal5.Text = "Error!!";
            }
        }
    }
    


    protected void Button7_Click(object sender, EventArgs e)
    {
        //edit

        Button btn = (Button)sender;
        SqlDataAdapter adpt = new SqlDataAdapter("SELECT [id], [title], [discription], [status] FROM [service] WHERE [id] = " + btn.CommandArgument, con);
        DataTable dt = new DataTable();
        adpt.Fill(dt);
        TextBox4.Text = dt.Rows[0][1].ToString();
        TextBox2.Text = dt.Rows[0][2].ToString();
        ViewState["service_id"] = btn.CommandArgument;
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        //delete
        Button btn = (Button)sender;
        SqlCommand cmd = new SqlCommand("DELETE FROM [service] WHERE [id] = @id", con);
        cmd.Parameters.AddWithValue("@id", btn.CommandArgument);
        con.Open();
        int s = cmd.ExecuteNonQuery();
        con.Close();
        if (s == 1)
        {
            TextBox2.Text = string.Empty;
            TextBox4.Text = string.Empty;
            RadioButtonList1.ClearSelection();
            print();
            Literal5.Text = "Record Delete";
        }
        else
        {
            TextBox2.Text = string.Empty;
            TextBox4.Text = string.Empty;
            RadioButtonList1.ClearSelection();
            print();
            Literal5.Text = "Error";
        }
    }
}