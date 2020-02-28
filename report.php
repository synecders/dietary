<?php include('server.php'); ?>
<!DOCTYPE html>

<html lang="en">

<head>
    <meta charset="utf-8" />
    <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
    <link rel="icon" type="image/png" href="../assets/img/favicon.ico">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>Dietary</title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
    <!--     Fonts and icons     -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />
    <!-- CSS Files -->
    <link href="./assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="./assets/css/light-bootstrap-dashboard.css?v=2.0.0 " rel="stylesheet" />
    <!-- CSS Just for demo purpose, don't include it in your project -->
    <link href="./assets/css/demo.css" rel="stylesheet" />
</head>

<body>
    <div class="wrapper">


        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <a href="searchList.php?uId=<?php echo $_GET['pId'] ?>" type="submit" name="generateReportBtn" class="btn btn-danger btn-fill mt-2">Back</a>
                        <button type="submit" name="generateReportBtn" data-toggle="modal" data-target="#generateReportsModal" class="btn btn-info btn-fill mt-2">Print</button>
                    </div>
                </div>
                <!-- End Row -->
                <div class="row mt-5">
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th scope="col">1</th>
                                <th scope="col">2</th>
                                <th scope="col">3</th>
                                <th scope="col">28</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <?php

                                $month = $_GET['month'];
                                $year = $_GET['year'];

                                $pId = $_GET['pId'];
                                $sqlName = "SELECT * FROM patientsubsistence where pId = '$pId' AND SUBSTRING(date, 6,7) = $month and SUBSTRING(date, 1, 4) = $year";
                                $resultName = mysqli_query($conn, $sqlName);

                                if (mysqli_num_rows($resultName) > 0) {
                                    while ($rowName = mysqli_fetch_assoc($resultName)) {
                                        $day1 = $rowName['day1'];
                                        $day2 = $rowName['day2'];
                                        $day3 = $rowName['day3'];
                                        $day28 = $rowName['day28'];
                                        echo '
                                            <td>' . $day1 . '</td>
                                            <td>' . $day2 . '</td>
                                            <td>' . $day3 . '</td>
                                            <td>' . $day28 . '</td>
                                            ';
                                    }
                                }

                                ?>

                            </tr>
                        </tbody>
                    </table>
                </div>
                <!-- End Row -->
            </div>
        </div>
    </div>

</body>
<!--   Core JS Files   -->
<script src="./assets/js/core/jquery.3.2.1.min.js" type="text/javascript"></script>
<script src="./assets/js/core/popper.min.js" type="text/javascript"></script>
<script src="./assets/js/core/bootstrap.min.js" type="text/javascript"></script>
<!--  Plugin for Switches, full documentation here: http://www.jque.re/plugins/version3/bootstrap.switch/ -->
<script src="./assets/js/plugins/bootstrap-switch.js"></script>
<!--  Google Maps Plugin    -->
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
<!--  Chartist Plugin  -->
<script src="./assets/js/plugins/chartist.min.js"></script>
<!--  Notifications Plugin    -->
<script src="./assets/js/plugins/bootstrap-notify.js"></script>
<!-- Control Center for Light Bootstrap Dashboard: scripts for the example pages etc -->
<script src="./assets/js/light-bootstrap-dashboard.js?v=2.0.0 " type="text/javascript"></script>
<!-- Light Bootstrap Dashboard DEMO methods, don't include it in your project! -->
<script src="./assets/js/demo.js"></script>

<script src="script.js"></script>

</html>