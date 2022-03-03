<%@ Page Title="" Language="C#" MasterPageFile="~/ClientMasterPage.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!-- innerpages_banner -->
	<div class="innerpages_banner">
		<h2>Mail Us</h2>
	</div>
<!-- //innerpages_banner -->

<!-- Contact -->
	<div class="contact-section" id="contact">
		<div class="container">
			<h3 class="heading">Contact Us</h3>
			<div class="col-md-4 address-left">
				<div class="address-grid">
					<h4>Contact <span>Info</span></h4>
					<div class="address-grids">
						<span class="fa fa-volume-control-phone" aria-hidden="true"></span>
						<div class="contact-right">
							<p>Telephone </p><span>+026-233-7168</span>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="address-grids">
						<span class="fa fa-envelope-o" aria-hidden="true"></span>
						<div class="contact-right">
							<p>Mail </p><a href="mailto:info@example.com">mail@example.com</a>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="address-grids">
						<span class="fa fa-map-marker" aria-hidden="true"></span>
						<div class="contact-right">
							<p>Location</p><span>2055 PR cross road, Kennebec, SD 57544, USA.</span>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
			</div>
			<div class="col-md-8 map">
				<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2929451.0038883607!2d-102.49006814350344!3d44.190752200213524!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x877d432d85e938a5%3A0x7f0d6293186a4b7!2sSouth+Dakota%2C+USA!5e0!3m2!1sen!2sin!4v1514361505400"></iframe>
			</div>
			<div class="clearfix"> </div>
			<div class="mail_grid_w3l">
				<form action="#" method="post">
					<div class="col-md-6 contact_left_grid">
						<div class="contact-fields-w3ls">
							<input type="text" name="Name" placeholder="Name" required="">
						</div>
						<div class="contact-fields-w3ls">
							<input type="email" name="Email" placeholder="Email" required="">
						</div>
						<div class="contact-fields-w3ls">
							<input type="text" name="Telephone" placeholder="Phone Number" required="">
						</div>
						<div class="contact-fields-w3ls">
							<input type="text" name="Subject" placeholder="Subject" required="">
						</div>
					</div>
					<div class="col-md-6 contact_rightt_grid">
						<div class="contact-fields-w3ls">
							<textarea name="Message" placeholder="Message..." required=""></textarea>
						</div>
						<input type="submit" value="Submit">
					</div>
					<div class="clearfix"> </div>

				</form>
			</div>
		</div>
	</div>
<!--// Contact -->

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

