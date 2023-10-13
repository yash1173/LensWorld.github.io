<style>
    body {
        margin: 0;
        padding: 0;
    }

    .footer {
        background-color: black;
        color: white;
        padding: 20px;
        margin: 0;
    }

    .footer-content {
        display: grid;
        grid-template-columns: 30% 70%;
        gap: 1rem;
        text-align: left;
        /* Align text in categories section */
    }

    .brand {
        max-width: 100%;
        /* Adjusted to fit within the grid column */
        box-sizing: border-box;
    }

    .brand-logo {
        max-width: 15%;
        height: auto;
        mix-blend-mode: difference;
    }

    .brand-description {
        margin-top: 10px;
        font-size: 12px;
        color: aliceblue;
    }

    .categories {
        display: flex;
    }

    .category {
        width: calc(33.33% - 20px);
        margin-bottom: 20px;
    }

    .brand img {
        padding-left: 30px;
    }

    .brand p {
        padding: 20px;
        max-width: 300px;
    }

    .category h4 {
        font-size: 16px;
    }

    .category h4 a {
        text-decoration: none !important;
        color: aliceblue;
    }

    .category ul {
        list-style: none;
        padding: 0;
    }

    .category ul li {
        margin-bottom: 5px;
    }

    .category ul li a {
        color: aliceblue;
        text-decoration: none !important;
    }

    .footer-links {
        border-top: 1px solid white;
        border-bottom: 1px solid white;
        margin-top: 20px;
        padding: 10px 0;
        text-align: center;
    }

    .footer-links-content {
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .footer-links p {
        margin: 0;
    }

    .footer-links p a {
        margin: 0 20px;
        color: aliceblue;
        text-decoration: none;
    }
</style>


<body>

    <footer class="footer">
        <div class="footer-content">
            <div class="brand">
                <!-- <img src="logo\logo-main.png" alt="Fitstart Logo" class="brand-logo" /> -->
                <p class="brand-description">"At LensWorld, we're more than just an online eyewear store; we're your trusted companion on your quest for clear vision and stylish eyewear. We believe that seeing well is more than a necessity; it's an expression of your unique style. That's why we've assembled a diverse collection of premium eyeglasses, sunglasses, and contact lenses to suit every vision need and fashion taste."
</p>
            </div>
            <div class="categories">
                <div class="category">
                    <h4><a href="#">Shop for men</a></h4>
                    <ul>
                        <li><a href="#">Contact Lens</a></li>
                        <li><a href="#">Sun Glasses</a></li>
                        <li><a href="#">Eye Glasses</a></li>
                        <li><a href="#">Computer Glasses</a></li>
                        <!-- <li><a href="#">Joggers</a></li> -->
                        <!-- <li><a href="#">Track Pants</a></li> -->
                    </ul>
                </div>
                <div class="category">
                    <h4><a href="#">Shop for women</a></h4>
                    <ul>
                        <li><a href="#">Contact Lens</a></li>
                        <li><a href="#">Sun Glasses</a></li>
                        <li><a href="#">Eye Glasses</a></li>
                        <li><a href="#">Computer Glasses</a></li>
                        <!-- <li><a href="#">Sports Bra</a></li> -->
                        <!-- <li><a href="#">Tights</a></li> -->
                        <!-- <li><a href="#">Shorts</a></li> -->
                    </ul>
                </div>
                <div class="category">
                    <h4><a href="#">Sun Glasses</a></h4>
                    <ul>
                        <li><a href="#">Men Sunglasses</a></li>
                        <li><a href="#">Women Sunglasses</a></li>
                        <!-- <li><a href="#">Elliptical</a></li> -->
                        <!-- <li><a href="#">Rower</a></li> -->
                    </ul>
                </div>
                <div class="category">
                    <h4><a href="#">Eye Glasses</a></h4>
                    <ul>
                        <li><a href="#">Men Eye Glasses</a></li>
                        <li><a href="#">Women Eye Glasses</a></li>
                        <!-- <li><a href="#">Kids Cycle</a></li> -->
                    </ul>
                </div>
                <!-- <div class="category">
                    <h4><a href="#">Accessories</a></h4>
                    <ul>
                        <li><a href="#">Towel</a></li>
                        <li><a href="#">Gloves</a></li>
                        <li><a href="#">Mask</a></li>
                        <li><a href="#">Socks</a></li>
                        <li><a href="#">Yoga Mat</a></li>
                        <li><a href="#">Jumping Rope</a></li>
                    </ul>
                </div> -->
                <!-- <div class="category">
                    <h4><a href="#">Supplements</a></h4>
                    <ul>
                        <li><a href="#">Personal Care</a></li>
                        <li><a href="#">Protein Snacks</a></li>
                        <li><a href="#">Staples</a></li>
                        <li><a href="#">Vitamins</a></li>
                        <li><a href="#">Weight Loss</a></li>
                    </ul>
                </div> -->
                <div class="category">
                    <h4><a href="#">Computer Glasses Unisex</a></h4>
                    <ul>
                        <li><a href="#">Contact Lens</a></li>
                        <li><a href="#"></a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="footer-links">
            <div class="footer-links-content">
                <p>
                    | <a href="PP.php">Privacy Policy</a> |
                    <!-- <a href="#">Refund Policy</a> | -->
                    <a href="t&c.php">Terms &amp; Conditions*</a> |
                    <!-- <a href="#">Support</a> -->
                </p>
            </div>
            <p style="line-height: 35px;">
              © 2023 LensWorld. All rights reserved. Website Designed and Developed by Sakshi & Yash
            </p>
        </div>
    </footer>

</body>