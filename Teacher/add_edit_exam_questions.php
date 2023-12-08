<?php
session_start();
include "header.php";
include "connection.php";
if (!isset($_SESSION["admin"])) {
    ?>
    <script>
        window.location= "index.php";
    </script>
    <?php
}

if (isset($_SESSION["admin"])) {
    $teacher_username = $_SESSION["admin"];
} else {
    // Handle the case where teacher's username is not set in the session
    echo "Teacher's username not found in session.";
    exit(); // You might want to terminate the script or redirect to an error page
}

?>

<div class="breadcrumbs">
    <div class="col-sm-12">
        <div class="page-header float-left">
            <div class="page-title">
                <h1>Select Exam Catogries For Add And Edit Exam Questions</h1>
            </div>
        </div>
    </div>

</div>

<div class="content mt-3">
    <div class="animated fadeIn">


        <div class="row">
            <div class="col-lg-12">
                <div class="card">

                    <div class="card-body">

                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Exam Name</th>
                                    <th scope="col">Exam Time</th>
                                    <th scope="col">Select</th>
                                </tr>
                            </thead>
                            <tbody>


                                <?php
                                $count = 0;
                                $res = mysqli_query($link, "SELECT * FROM exam_category where username = '$teacher_username'");

                                while ($row = mysqli_fetch_array($res)) {
                                    $count = $count + 1;
                                ?>
                                    <tr>
                                        <th scope="row"><?php echo $count; ?></th>
                                        <td><?php echo $row["category"]; ?></td>
                                        <td><?php echo $row["time"]; ?></td>
                                        <td><a href="add_edit_questions.php?id=<?php echo $row["id"]; ?>">Select</a></td>

                                    </tr>
                                <?php
                                }
                                ?>






                            </tbody>
                        </table>

                    </div>
                </div>

            </div>
            <!--/.col-->


        </div>
    </div><!-- .animated -->
</div><!-- .content -->

<?php
include "footer.php";
?>