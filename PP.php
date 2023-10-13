<?php include 'includes/session.php'; ?>
<?php include 'includes/header.php'; ?>
<body class="hold-transition skin-blue layout-top-nav">
<div class="wrapper">

	<?php include 'includes/navbar.php'; ?>
	 
	<div class="content-wrapper" style="background-color: mintcream;">
		<div class="container">

			<!-- Main content -->
			<section class="content">
				<div class="row">
					<div class="col-sm-9">
						<?php
						if(isset($_SESSION['error'])){
							echo "
								<div class='alert alert-danger'>
									".$_SESSION['error']."
								</div>
							";
							unset($_SESSION['error']);
						}
						?>
						
						<!-- Privacy Policy Content -->
						<h2>Privacy Policy</h2>

						<p>This is the privacy policy of [Your Company Name], and it explains how we collect and use your personal information when you use our website.</p>

						<h3>Personal Information</h3>
						<p>This includes your name, contact information (such as email address, phone number), and any other information you provide to us when making a purchase or contacting us.</p>

						<h3>Payment Information</h3>
						<p>When you make a purchase, we may collect payment information, such as credit card details or other payment methods.</p>

						<h3>Usage Data</h3>
						<p>We may collect information about your interactions with our website or store, such as the pages you visit or the products you view.</p>

						<h2>How We Use Your Information</h2>

						<ul>
						  <li>To process and fulfill your orders.</li>
						  <li>To communicate with you about your purchases and provide customer support.</li>
						</ul>

						<h2>Security</h2>

						<p>We implement reasonable security measures to protect your information from unauthorized access or disclosure.</p>

						<h2>Contact Us</h2>

						<p>If you have any questions or concerns about this Privacy Policy, please contact us at [Contact Information].</p>

					</div>
					<div class="col-sm-3">
						<?php include 'includes/sidebar.php' ?>
					</div>
				</div>
			</section>
	     
		</div>
	</div>
  
	<?php include 'includes/footer.php'; ?>
</div>

<?php include 'includes/scripts.php'; ?>
</body>
</html>
