<div class="row">
    <div class="box box-solid">
        <div class="box-header with-border">
            <h3 class="box-title"><b>Most Viewed Today</b></h3>
        </div>
        <div class="box-body">
            <ul id="trending">
            <?php
                $now = date('Y-m-d');
                $conn = $pdo->open();

                $stmt = $conn->prepare("SELECT * FROM products WHERE date_view=:now ORDER BY counter DESC LIMIT 10");
                $stmt->execute(['now'=>$now]);
                foreach($stmt as $row){
                    echo "<li><a href='product.php?product=".$row['slug']."'>".$row['name']."</a></li>";
                }

                $pdo->close();
            ?>
            </ul>
        </div>
    </div>
</div>

<div class="row">
    <div class="box box-solid">
        <div class="box-header with-border">
            <h3 class="box-title"><b>New Arrivals</b></h3>
        </div>
        <div class="box-body">
            <!-- Add the first image within the box-body with smaller size -->
            <img src="images/Round Steampunk glasses.jpg" alt="Image 1" class="img-responsive" style="width: 150px; height: auto;">
            <p style="font-size:2rem">Round Steampunk Glasses</p>
            <hr style="border-top: 1px solid black;">
            <!-- Add the second image within the box-body with smaller size -->
            <img src="images\Triangle cat eye.jpg" alt="Image 2" class="img-responsive" style="width: 150px; height: auto;">
            <p style="font-size:2rem">Triangle cat Eye Sunglasses</p>
        </div>
    </div>
</div>
