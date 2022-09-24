<?php
if (isset($_POST['submit'])){
    $username = $_POST['username'];
    $name = $_POST['names'];
    $email = $_POST['email'];

 //Database connection
 $host = "localhost";
 $user = "root";
 $pass = "Cool12summer14";
 $db = "rentacardb";
 
 //New mysqli 
 $conn = new mysqli($host, $user, $pass, $db);
 
 //sql query
 $qry = "INSERT INTO `clients`(`username`, `name`, `email`) VALUES ('$username', '$name', '$email')";

 $insert = mysqli_query($conn,$qry);

}

?>