<?php
session_start();

if (!isset($_SESSION["username"])) {
    ?>
    <script type="text/javascript">
        window.location = "login.php";
    </script>
    <?php
}

include "connection.php";
include "header.php";
?>

<div class="row" style="margin: 0px; padding:0px; margin-bottom: 50px;">
    <div class="col-lg-6 col-lg-push-3" style="min-height: 500px; background-color: white;">

        <?php
        $res = mysqli_query($link, "SELECT * FROM exam_category");
        while ($row = mysqli_fetch_array($res)) {
            $examCategory = $row["category"];

            $username = $_SESSION["username"];
            $result = mysqli_query($link, "SELECT * FROM exam_results WHERE username = '$username' AND exam_type = '$examCategory'");
            $attempted = mysqli_fetch_assoc($result);

            if (!$attempted) {
                ?>
                <input type="button" class="btn btn-success form-control" value="<?php echo $examCategory; ?>"
                       style="margin-top: 10px; background-color: blue; color: white"
                       onclick="set_exam_type_session('<?php echo $examCategory; ?>');">
                <?php
            }
        }
        ?>

    </div>
</div>

<?php
include "footer.php";
?>

<script type="text/javascript">
    function set_exam_type_session(exam_category) {
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function () {
            if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                window.location = "dashboard.php";
            }
        };
        xmlhttp.open("GET", "forajax/set_exam_type_session.php?exam_category=" + exam_category, true);
        xmlhttp.send(null);
    }
</script>