<%@ Page Title="" Language="C#" MasterPageFile="~/adminMasterPage.master" AutoEventWireup="true" CodeFile="ManageService.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 
        <!-- page start-->
        <div class="row">
            <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                      Manage Services
                        </header>
                        <div class="panel-body">
                            <div class="position-center">

                            <div class="form-group">
                                    <label for="exampleInputEmail1">Title</label>
                                    
                                    <asp:TextBox ID="TextBox4" runat="server" class="form-control" placeholder="Enter name"></asp:TextBox>
                                </div>
                                
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Discription</label>
                                    <asp:TextBox ID="TextBox2" runat="server" class="form-control" 
                                        placeholder="Enter email" Rows="5"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Status</label>
                                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                                        RepeatDirection="Horizontal">
                                        <asp:ListItem Value="1">Active</asp:ListItem>
                                        <asp:ListItem Value="0">Deactive</asp:ListItem>
                                    </asp:RadioButtonList>
                                   </div>
                                <asp:Button ID="Button4" runat="server" Text="Button" class="btn btn-info" 
                                    onclick="Button4_Click" ></asp:Button>
                               
                                <asp:Literal ID="Literal5" runat="server"></asp:Literal>

                            </div>
                             <div class="form-group">
                                  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                      BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
                                      CellPadding="20">
                                      <AlternatingRowStyle BackColor="Gainsboro" HorizontalAlign="Center" 
                                          VerticalAlign="Middle" />
                                      <Columns>
                                          <asp:TemplateField HeaderText="ID">
                                              <ItemTemplate>
                                                  <asp:Literal ID="Literal6" runat="server" Text='<%# Eval("id") %>'></asp:Literal>
                                              </ItemTemplate>
                                          </asp:TemplateField>
                                          <asp:TemplateField HeaderText="Title">
                                              <ItemTemplate>
                                                  <asp:Literal ID="Literal7" runat="server" Text='<%# Eval("title") %>'></asp:Literal>
                                              </ItemTemplate>
                                          </asp:TemplateField>
                                          <asp:TemplateField HeaderText="Discription">
                                              <ItemTemplate>
                                                  <asp:Literal ID="Literal8" runat="server" Text='<%# Eval("discription") %>'></asp:Literal>
                                              </ItemTemplate>
                                          </asp:TemplateField>
                                          <asp:TemplateField HeaderText="Status">
                                              <ItemTemplate>
                                                  <asp:Literal ID="Literal9" runat="server" Text='<%# Eval("status") %>'></asp:Literal>
                                              </ItemTemplate>
                                          </asp:TemplateField>
                                          <asp:TemplateField HeaderText="Delete">
                                              <ItemTemplate>
                                                  <asp:Button ID="Button6" runat="server" CommandArgument='<%# Eval("id") %>' 
                                                      onclick="Button6_Click" Text="Delete" />
                                              </ItemTemplate>
                                          </asp:TemplateField>
                                          <asp:TemplateField HeaderText="Edit">
                                              <ItemTemplate>
                                                  <asp:Button ID="Button7" runat="server" CommandArgument='<%# Eval("id") %>' 
                                                      onclick="Button7_Click" Text="Edit" />
                                              </ItemTemplate>
                                          </asp:TemplateField>
                                      </Columns>
                                      <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                                      <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" 
                                          HorizontalAlign="Center" VerticalAlign="Middle" />
                                      <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                      <RowStyle BackColor="#EEEEEE" ForeColor="Black" HorizontalAlign="Center" 
                                          VerticalAlign="Middle" />
                                      <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                                      <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                      <SortedAscendingHeaderStyle BackColor="#0000A9" />
                                      <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                      <SortedDescendingHeaderStyle BackColor="#000065" />
                                  </asp:GridView>
                                </div>
                        </div>
                    </section>

            </div>
    </div>
</div>
</asp:Content>

