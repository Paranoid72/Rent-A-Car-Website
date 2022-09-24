<?php
if (isset($_POST['submit'])){
    $name = $_POST['named'];
    $phone_number = $_POST['tilefwno'];
    $email = $_POST['email'];
    $subject = $_POST['thema'];
    $message = $_POST['messaged'];

 //Database connection
 $host = "localhost";
 $user = "root";
 $pass = "Cool12summer14";
 $db = "rentacardb";

 $conn = new mysqli($host, $user, $pass, $db) or die("Unable to connect");

 $qry = "INSERT INTO `messages` (`name`, `phone_number`, `email`, `subject`, `message`) VALUES ('$name', '$phone_number', '$email', '$subject', '$message')";

 $insert = mysqli_query($conn,$qry);

}

?>