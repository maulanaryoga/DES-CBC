<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
</head>

<body>
    <center>
        <h1>Monitoring Suhu dan Kelembapan</h1>
    </center>

    <?php
    function encrypt_decrypt($action, $string)
    {
        $output = false;

        $encrypt_method = "DES-CBC";
        $secret_key = 'This is my secret key';
        $secret_iv = 'This is my secret iv';

        // Prepare key
        $key = substr(hash('md5', $secret_key), 0, 8);

        // Prepare iv
        $iv = substr(hash('md5', $secret_iv), 0, 8);

        if ($action == 'encrypt') {
            $output = openssl_encrypt($string, $encrypt_method, $key, 0, $iv);
            $output = base64_encode($output);
        } elseif ($action == 'decrypt') {
            $output = openssl_decrypt(base64_decode($string), $encrypt_method, $key, 0, $iv);
        }

        return $output;
    }

    $servername = "localhost";
    $username = "root";
    $password = "";
    $database = "cyber";

    $conn = mysqli_connect($servername, $username, $password, $database);

    if (!$conn) {
        die("Connection failed: " . mysqli_connect_error());
    }

    $query = "SELECT idSensor, tglData, suhu, kelembapan FROM datasensor";

    $result = mysqli_query($conn, $query);

    if ($result) {
        echo "<div class = my-5>
        <table class='table'>
            <thead>
                <tr>
                    <th>Tanggal Waktu</th>
                    <th>Suhu</th>
                    <th>Kelembapan</th>
                </tr>
            </thead>
            <tbody>
            </div>
            ";

        while ($row = mysqli_fetch_assoc($result)) {
            $suhu = encrypt_decrypt('decrypt', $row['suhu']);
            $kelembapan = encrypt_decrypt('decrypt', $row['kelembapan']);

            // Convert the temperature and humidity values to float
            $suhu = floatval($suhu);
            $kelembapan = floatval($kelembapan);
            $ldr = floatval($ldr);

            // Format the temperature and humidity values to remove unnecessary decimal places
            $suhu = number_format($suhu, 1);
            $kelembapan = number_format($kelembapan, 1);

            echo "<tr>
                <td>{$row['tglData']}</td>
                <td>{$suhu}</td>
                <td>{$kelembapan}</td>
            </tr>";
        }

        echo "</tbody></table>";

        // Free the result set
        mysqli_free_result($result);
    } else {
        echo "Error: " . mysqli_error($conn);
    }

    // Close the database connection
    mysqli_close($conn);
    ?>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
        crossorigin="anonymous"></script>

    <script>
        function sendCommand(sensorId, command) {
    // Encrypt the command
    var encryptedCommand = encrypt_decrypt('encrypt', command);

    // Send the encrypted command to the server
    $.ajax({
        url: 'update_status.php',
        type: 'POST',
        data: { sensorId: sensorId, command: encryptedCommand },
        success: function (response) {
            $('#status-message').text(response);
        },
        error: function (xhr, status, error) {
            console.error(error);
        }
    });
}

    </script>

</body>

</html>
