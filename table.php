<!DOCTYPE html>
<html>

<head>
    <title> Registered Users </title>
    <style>
        table{
            border-collapse: collapse;
            width: 100%;
            color: #d96459;
            font-family: monospace;
            font-size: 25px;
            text-align: left;
        }
        th{
            background-color: #d96459;
            color: white;
        }
        tr:nth-child(even){
            background-color: #f2f2f2
        }
    </style>
</head>
<body>
    <table>
        <tr>
            <th> ID </th>
            <th> Username </th>
            <th> Name </th>
            <th> Email </th>
        </tr>
        <?php
        $conn = mysqli_connect("localhost", "root", "Cool12summer14", "rentacardb");
        if($conn -> connect_error) {
            die("Connection failed". $conn-> connect_error);
        }

        $sql = "SELECT id, username, name, email from clients";
        $result = $conn-> query($sql);

        if ($result -> num_rows > 0) {
            while ($row = $result-> fetch_assoc()) {
                echo "<tr><td>". $row["id"] . "</td><td>" . $row["username"] . "</td><td>" . $row["name"] . "</td><td>" . $row["email"] . "</td></tr>";
            }
            echo "</table>";
        }
        else {
            echo "0 results";
        }
        $conn -> close();
        ?>
    </table>
</body>

</html>