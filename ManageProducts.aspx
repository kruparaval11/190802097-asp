<%@ Page Title="" Language="C#" MasterPageFile="~/adminMasterPage.master" AutoEventWireup="true" CodeFile="ManageProducts.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row">
            <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                      Manage Products
                        </header>
                        <div class="panel-body">
                            <div class="position-center">

                            <div class="form-group">
                                    <label for="exampleInputEmail1">Product name</label>
                                    
                                    <asp:TextBox ID="TextBox4" runat="server" class="form-control" placeholder="Enter title"></asp:TextBox>
                                </div>
                                 <div class="form-group">
                                    <label for="exampleInputEmail1">Category</label>
                                    
                                   <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
                                </div>
                                
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Discription</label>
                                    <asp:TextBox ID="TextBox2" runat="server" class="form-control" 
                                        placeholder="Enter email" Rows="5"></asp:TextBox>
                                </div>
                                 <div class="form-group">
                                    <label for="exampleInputEmail1">Image</label>
                                    
                                    <asp:FileUpload ID="FileUpload1" runat="server"></asp:FileUpload>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Status</label>
                                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                                        RepeatDirection="Horizontal">
                                        <asp:ListItem Value="1">Active</asp:ListItem>
                                        <asp:ListItem Value="0">Deactive</asp:ListItem>
                                    </asp:RadioButtonList>
                                   </div>
                                <asp:Button ID="Button4" runat="server" Text="Submit" class="btn btn-info" 
                                    onclick="Button4_Click" ></asp:Button>
                               
                                <asp:Literal ID="Literal5" runat="server"></asp:Literal>

                            </div>
                             <div class="form-group">
                                 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                                     <Columns>
                                         <asp:TemplateField HeaderText="Id">
                                             <ItemTemplate>
                                                 <asp:Literal ID="Literal6" runat="server" Text='<%# Eval("pro_id") %>'></asp:Literal>
                                             </ItemTemplate>
                                         </asp:TemplateField>
                                         <asp:TemplateField HeaderText="Category">
                                             <ItemTemplate>
                                                 <asp:Literal ID="Literal7" runat="server" Text='<%# Eval("cat_id") %>'></asp:Literal>
                                             </ItemTemplate>
                                         </asp:TemplateField>
                                         <asp:TemplateField HeaderText="Name">
                                             <ItemTemplate>
                                                 <asp:Literal ID="Literal8" runat="server" Text='<%# Eval("name") %>'></asp:Literal>
                                             </ItemTemplate>
                                         </asp:TemplateField>
                                         <asp:TemplateField HeaderText="Description">
                                             <ItemTemplate>
                                                 <asp:Literal ID="Literal9" runat="server" Text='<%# Eval("description") %>'></asp:Literal>
                                             </ItemTemplate>
                                         </asp:TemplateField>
                                         <asp:TemplateField HeaderText="Image">
                                             <ItemTemplate>
                                                 <asp:Image ID="Image1" runat="server" 
                                                     ImageUrl='<%# Eval("image","~/uploads/{0}") %>' />
                                             </ItemTemplate>
                                         </asp:TemplateField>
                                         <asp:TemplateField HeaderText="Status">
                                             <ItemTemplate>
                                                 <asp:Literal ID="Literal10" runat="server" Text='<%# Eval("status") %>'></asp:Literal>
                                             </ItemTemplate>
                                         </asp:TemplateField>
                                         <asp:TemplateField HeaderText="Edit">
                                             <ItemTemplate>
                                                 <asp:Button ID="Button5" runat="server" CommandArgument='<%# Eval("pro_id") %>'
                                                     onclick="Button5_Click" Text="Edit" />
                                             </ItemTemplate>
                                         </asp:TemplateField>
                                         <asp:TemplateField HeaderText="Delete">
                                             <ItemTemplate>
                                                 <asp:Button ID="Button6" runat="server" CommandArgument='<%# Eval("pro_id") %>' 
                                                     onclick="Button6_Click" Text="Delete" />
                                             </ItemTemplate>
                                         </asp:TemplateField>
                                     </Columns>
                                 </asp:GridView>
                                </div>
                        </div>
                    </section>

            </div>
    </div>
</asp:Content>

       
