<?php
// Include necessary files and session management if required
include 'includes/session.php';
include 'includes/header.php';
include 'includes/navbar.php';

// Check if the form has been submitted
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // You can add code here to process the form submission, e.g., send an email

    // For example, you can collect form data
    $name = $_POST['name'];
    $email = $_POST['email'];
    $message = $_POST['message'];

    // Here, you can add code to send an email with the form data
    // Example:
    // mail('your@email.com', 'Contact Form Submission', $message);

    // Display a success message or redirect to a thank you page
    echo "<div class='alert alert-success'>Thank you for your message! We will get back to you soon.</div>";
}

?>

<body class="hold-transition skin-blue layout-top-nav">
    <div class="wrapper">
        <div class="content-wrapper" style="background-color: mintcream;">
            <div class="container">

                <!-- Main content -->
                <section class="content">
                    <div class="row">
                        <div class="col-sm-9">
                            <h1>Contact Us</h1>
                            <!-- Contact Form -->
                            <form method="POST" action="contact.php">
                                <div class="form-group">
                                    <label for="name">Your Name:</label>
                                    <input type="text" class="form-control" id="name" name="name" required>
                                </div>
                                <div class="form-group">
                                    <label for="email">Your Email:</label>
                                    <input type="email" class="form-control" id="email" name="email" required>
                                </div>
                                <div class="form-group">
                                    <label for="message">Message:</label>
                                    <textarea class="form-control" id="message" name="message" rows="5" required></textarea>
                                </div>
                                <button type="submit" class="btn btn-primary">Submit</button>
                            </form>
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
