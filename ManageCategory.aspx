<%@ Page Title="" Language="C#" MasterPageFile="~/adminMasterPage.master" EnableEventValidation="false" AutoEventWireup="true" CodeFile="ManageCategory.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="row">
            <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                        Manage Category
                        </header>
                        <div class="panel-body">
                            <div class="position-center">

                            <div class="form-group">
                                    <label for="exampleInputEmail1">Category</label>
                                    
                                    <asp:TextBox ID="TextBox4" runat="server" class="form-control" placeholder="Enter name"></asp:TextBox>
                                </div>
                                
                                 <div class="form-group">
                                    <label for="exampleInputPassword1">Status</label>
                                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                                        RepeatDirection="Horizontal">
                                        <asp:ListItem Value="1">Active</asp:ListItem>
                                        <asp:ListItem Value="0">Deactive</asp:ListItem>
                                    </asp:RadioButtonList>
                                   </div>
                                     <asp:Button ID="Button3" runat="server" Text="Submit" class="btn btn-info" 
                                    onclick="Button3_Click"></asp:Button>
                                <asp:Literal ID="Literal5" runat="server"></asp:Literal>
                                      
                                 <div class="form-group">
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                         BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" 
                                         CellPadding="3" CellSpacing="1" GridLines="None">
                                        <Columns>
                                            <asp:TemplateField HeaderText="id">
                                                <ItemTemplate>
                                                    <asp:Literal ID="Literal6" runat="server" Text='<%# Eval("id") %>'></asp:Literal>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Category">
                                                <ItemTemplate>
                                                    <asp:Literal ID="Literal7" runat="server" Text='<%# Eval("Category") %>'></asp:Literal>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Status">
                                                <ItemTemplate>
                                                    <asp:Literal ID="Literal8" runat="server" Text='<%# Eval("Status") %>'></asp:Literal>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Delete">
                                                <ItemTemplate>
                                                    <asp:Button ID="Button4" runat="server" CommandArgument='<%# Eval("id") %>' 
                                                        onclick="Button4_Click" Text="Delete" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Edit">
                                                <ItemTemplate>
                                                    <asp:Button ID="Button5" runat="server" CommandArgument='<%# Eval("id") %>' 
                                                        onclick="Button5_Click" Text="Edit" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                                        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                                        <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                                        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                        <SortedAscendingHeaderStyle BackColor="#594B9C" />
                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                        <SortedDescendingHeaderStyle BackColor="#33276A" />
                                     </asp:GridView>
                                   </div>
                                <br />

                            </div>

                        </div>
                    </section>

            </div>
    </div>

</asp:Content>

