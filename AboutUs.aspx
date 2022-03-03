<%@ Page Title="" Language="C#" MasterPageFile="~/ClientMasterPage.master" AutoEventWireup="true" CodeFile="AboutUs.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<!-- innerpages_banner -->
	<div class="innerpages_banner">
		<h2>About Us</h2>
	</div>
<!-- //innerpages_banner -->

<!-- about section content -->
<div class="about_section">
	<div class="container">
		<div class="col-md-6 about-left">
			<div class="col-md-6 cakeimg">
				<img src="csrc/images/about1.jpg" alt="image" />
				<img src="csrc/images/about2.jpg" alt="image" />
			</div>
			<div class="col-md-6 cakeimg cakeimg2">
				<img src="csrc/images/about3.jpg" alt="image" />
				<img src="csrc/images/cake1.jpg" alt="image" />
			</div>
			<div class="clearfix"> </div>
		</div> 
		<div class="col-md-6 about_right">
			<h3>Made for you</h3>
			<h3 class="bold">with love</h3>
			<p>Suspendisse vitae vulputate ligula, ac ornare urna. Aenean volutpat, lacus non bibendum ullamcorper, mi neque cursus augue, vel euismod lorem ipsum non eros. Nullam volutpat condimentum pharetra. Etiam eget dapibus dolor. Aenean suscipit nec nisi id dignissim. Nullampos uere quam quis varius rutrum. Cras in egestas mi. Vestibulum odio lorem, lobortis in enim in, vulputate eleifend nisl.</p>
			<a href="#about" class="hvr-bounce-to-right read scroll"><span class="fa fa-birthday-cake" aria-hidden="true"></span>Read More</a>
		</div> 
		<div class="clearfix"> </div>
	</div>
</div>
<!-- //about section content -->

<!-- team -->
	<div class="team" id="team">
	   <div class="agile_dot_info two">
		<div class="container">
		<h3 class="heading">Our Staff</h3>
			<div class="agileits_team_grids">
				<div class="col-md-3">
				<div class="agileits_team_grid">
					<div class="agileits_team_grid_figure">
						<img src="csrc/images/chef1.jpg" alt=" " class="img-responsive" />
					</div>
					<h4>Jane Robert</h4>
					<div class="social-icon">
						<a href="#" class="social-button facebook"><i class="fa fa-facebook"></i></a> 
						<a href="#" class="social-button twitter"><i class="fa fa-twitter"></i></a>
						<a href="#" class="social-button google"><i class="fa fa-google-plus"></i></a> 
						<a href="#" class="social-button dribbble"><i class="fa fa-dribbble"></i></a> 
					</div>
				</div>
				</div>
				<div class="col-md-3">
				<div class="agileits_team_grid">
					<div class="agileits_team_grid_figure">
						<img src="csrc/images/chef2.jpg" alt=" " class="img-responsive" />
					</div>
					<h4>James Doe</h4>
					<div class="social-icon">
						<a href="#" class="social-button facebook"><i class="fa fa-facebook"></i></a> 
						<a href="#" class="social-button twitter"><i class="fa fa-twitter"></i></a>
						<a href="#" class="social-button google"><i class="fa fa-google-plus"></i></a> 
						<a href="#" class="social-button dribbble"><i class="fa fa-dribbble"></i></a> 
					</div>
				</div>
				</div>
				<div class="col-md-3">
				<div class="agileits_team_grid">
					<div class="agileits_team_grid_figure">
						<img src="csrc/images/chef3.jpg" alt=" " class="img-responsive" />
					</div>
					<h4>Laura Olivia</h4>
					<div class="social-icon">
						<a href="#" class="social-button facebook"><i class="fa fa-facebook"></i></a> 
						<a href="#" class="social-button twitter"><i class="fa fa-twitter"></i></a>
						<a href="#" class="social-button google"><i class="fa fa-google-plus"></i></a> 
						<a href="#" class="social-button dribbble"><i class="fa fa-dribbble"></i></a> 
					</div>
				</div>
				</div>
				<div class="col-md-3">
				<div class="agileits_team_grid">
					<div class="agileits_team_grid_figure">
						<img src="csrc/images/chef4.jpg" alt=" " class="img-responsive" />
					</div>
					<h4>William James</h4>
					<div class="social-icon">
						<a href="#" class="social-button facebook"><i class="fa fa-facebook"></i></a> 
						<a href="#" class="social-button twitter"><i class="fa fa-twitter"></i></a>
						<a href="#" class="social-button google"><i class="fa fa-google-plus"></i></a> 
						<a href="#" class="social-button dribbble"><i class="fa fa-dribbble"></i></a> 
					</div>
				</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
</div>
<!-- //team -->

<!-- blog -->
<div class="blog">
	<div class="container">
		<h3 class="heading">Our Blog</h3>
			<ul id="flexiselDemo1">			
				<li>
					<div class="wthree_testimonials_grid_main">
						<div class="col-md-4 blog_grid">
							<a href="single.html">
							<img src="csrc/images/about1.jpg" alt="blog_post1" />
							<p>Fusce congue magna ac nisl molestie, necelem entum odiovarius. Nulla consequat odio inri 
							sus efficitur tincidunt. Vestibulum sed.</p>
							</a>
							<a href="single.html" class="hvr-bounce-to-right read">Read More</a>
							<p><span class="fa fa-heart"></span> 7 likes / <span class="fa fa-comments"></span> 15 comments / <a href="#">Admin</a></p>
							<h3><a href="single.html">27 <span>Dec</span></a></h3>
							<div class="clearfix"></div>
						</div>
						<div class="col-md-4 blog_grid">
							<a href="single.html">
							<img src="csrc/images/about2.jpg" alt="blog_post1" />
							<p>Fusce congue magna ac nisl molestie, necelem entum odiovarius. Nulla consequat odio inri 
							sus efficitur tincidunt. Vestibulum sed.</p>
							</a>
							<a href="single.html" class="hvr-bounce-to-right read">Read More</a>
							<p><span class="fa fa-heart"></span> 7 likes / <span class="fa fa-comments"></span> 15 comments / <a href="#">Admin</a></p>
							<h3><a href="single.html">27 <span>Dec</span></a></h3>
							<div class="clearfix"></div>
						</div>
						<div class="col-md-4 blog_grid">
							<a href="single.html">
							<img src="csrc/images/cake1.jpg" alt="blog_post1" />
							<p>Fusce congue magna ac nisl molestie, necelem entum odiovarius. Nulla consequat odio inri 
							sus efficitur tincidunt. Vestibulum sed.</p>
							</a>
							<a href="single.html" class="hvr-bounce-to-right read">Read More</a>
							<p><span class="fa fa-heart"></span> 7 likes / <span class="fa fa-comments"></span> 15 comments / <a href="#">Admin</a></p>
							<h3><a href="single.html">27 <span>Dec</span></a></h3>
							<div class="clearfix"></div>
						</div>
						<div class="clearfix"></div>
					</div>
				</li>
				<li>
					<div class="wthree_testimonials_grid_main">
						<div class="col-md-4 blog_grid">
							<a href="single.html">
							<img src="csrc/images/about3.jpg" alt="blog_post1" />
							<p>Fusce congue magna ac nisl molestie, necelem entum odiovarius. Nulla consequat odio inri 
							sus efficitur tincidunt. Vestibulum sed.</p>
							</a>
							<a href="single.html" class="hvr-bounce-to-right read">Read More</a>
							<p><span class="fa fa-heart"></span> 7 likes / <span class="fa fa-comments"></span> 15 comments / <a href="#">Admin</a></p>
							<h3><a href="single.html">27 <span>Dec</span></a></h3>
							<div class="clearfix"></div>
						</div>
						<div class="col-md-4 blog_grid">
							<a href="single.html">
							<img src="csrc/images/about1.jpg" alt="blog_post1" />
							<p>Fusce congue magna ac nisl molestie, necelem entum odiovarius. Nulla consequat odio inri 
							sus efficitur tincidunt. Vestibulum sed.</p>
							</a>
							<a href="single.html" class="hvr-bounce-to-right read">Read More</a>
							<p><span class="fa fa-heart"></span> 7 likes / <span class="fa fa-comments"></span> 15 comments / <a href="#">Admin</a></p>
							<h3><a href="single.html">27 <span>Dec</span></a></h3>
							<div class="clearfix"></div>
						</div>
						<div class="col-md-4 blog_grid">
							<a href="single.html">
							<img src="csrc/images/cake1.jpg" alt="blog_post1" />
							<p>Fusce congue magna ac nisl molestie, necelem entum odiovarius. Nulla consequat odio inri 
							sus efficitur tincidunt. Vestibulum sed.</p>
							</a>
							<a href="single.html" class="hvr-bounce-to-right read">Read More</a>
							<p><span class="fa fa-heart"></span> 7 likes / <span class="fa fa-comments"></span> 15 comments / <a href="#">Admin</a></p>
							<h3><a href="single.html">27 <span>Dec</span></a></h3>
							<div class="clearfix"></div>
						</div>
						<div class="clearfix"></div>
					</div>
				</li>
				<li>
					<div class="wthree_testimonials_grid_main">
						<div class="col-md-4 blog_grid">
							<a href="single.html">
							<img src="csrc/images/about3.jpg" alt="blog_post1" />
							<p>Fusce congue magna ac nisl molestie, necelem entum odiovarius. Nulla consequat odio inri 
							sus efficitur tincidunt. Vestibulum sed.</p>
							</a>
							<a href="single.html" class="hvr-bounce-to-right read">Read More</a>
							<p><span class="fa fa-heart"></span> 7 likes / <span class="fa fa-comments"></span> 15 comments / <a href="#">Admin</a></p>
							<h3><a href="single.html">27 <span>Dec</span></a></h3>
							<div class="clearfix"></div>
						</div>
						<div class="col-md-4 blog_grid">
							<a href="single.html">
							<img src="csrc/images/about1.jpg" alt="blog_post1" />
							<p>Fusce congue magna ac nisl molestie, necelem entum odiovarius. Nulla consequat odio inri 
							sus efficitur tincidunt. Vestibulum sed.</p>
							</a>
							<a href="single.html" class="hvr-bounce-to-right read">Read More</a>
							<p><span class="fa fa-heart"></span> 7 likes / <span class="fa fa-comments"></span> 15 comments / <a href="#">Admin</a></p>
							<h3><a href="single.html">27 <span>Dec</span></a></h3>
							<div class="clearfix"></div>
						</div>
						<div class="col-md-4 blog_grid">
							<a href="single.html">
							<img src="csrc/images/cake1.jpg" alt="blog_post1" />
							<p>Fusce congue magna ac nisl molestie, necelem entum odiovarius. Nulla consequat odio inri 
							sus efficitur tincidunt. Vestibulum sed.</p>
							</a>
							<a href="single.html" class="hvr-bounce-to-right read">Read More</a>
							<p><span class="fa fa-heart"></span> 7 likes / <span class="fa fa-comments"></span> 15 comments / <a href="#">Admin</a></p>
							<h3><a href="single.html">27 <span>Dec</span></a></h3>
							<div class="clearfix"></div>
						</div>
						<div class="clearfix"></div>
					</div>
				</li>
			</ul>
	</div>
</div>
<!-- //blog -->

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

