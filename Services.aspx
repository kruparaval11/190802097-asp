<%@ Page Title="" Language="C#" MasterPageFile="~/ClientMasterPage.master" AutoEventWireup="true" CodeFile="Services.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!-- Services -->
<div class="popular-section-wthree ">
	<div class="container">	
        <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
        				<div class="popular-agileinfo">
					<div class="col-md-3 popular-grid">
						<i class="fa fa-birthday-cake" aria-hidden="true"></i>
						<h4>Cakes <br /> <%# Eval("title") %> </a></h4> <br />
						<p><%# Eval("discription").ToString().Length > 180 ? Eval("discription").ToString().Substring(0, 180) + "..." : Eval("discription").ToString()%></p>
					</div>	
        </ItemTemplate>
        </asp:Repeater>
            </div>
            <br><br><br><br><br><br><br>
	</div>





<!-- subscribe -->

<div class="subscribe">

	<div class="container"> 
		<h3 class="heading">Subscribe To Get Notifications</h3>
		<div class="subscribe-grid">
			<form action="#" method="post">
				<input type="email" placeholder="Enter Your Email" name="email" required="">
				<button class="btn1"><i class="fa fa-paper-plane-o" aria-hidden="true"></i></button>
			</form>
		</div>
	</div>
</div>
<!-- //subscribe -->
</asp:Content>

