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
        else
        {
            TextBox4.Text=
        }
    }
}