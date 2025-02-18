<?php
// HTML code for select element
echo '<select name="bioma_id">';
// Loop through each row and create an option element for each bioma
while ($row = $result->fetch_assoc()) {
    echo '<option value="' . $row["bioma_id"] . '">' . $row["bioma_name"] . '</option>';
}
echo '</select>';
// Database connection parameters
$servername = "localhost";
$username = "your_username";
$password = "your_password";
$dbname = "your_database_name";

// Create a connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// SQL query to select data from the "biomi" table
$sql = "SELECT * FROM biomi";

// Execute the query
$result = $conn->query($sql);

// Check if any rows were returned
if ($result->num_rows > 0) {
    // Loop through each row and display the data
    while ($row = $result->fetch_assoc()) {
        echo "Bioma ID: " . $row["bioma_id"] . "<br>";
        echo "Bioma Name: " . $row["bioma_name"] . "<br>";
        echo "Bioma Description: " . $row["bioma_description"] . "<br>";
        echo "<br>";
    }
} else {
    echo "No data found in the 'biomi' table.";
}

// Close the connection
$conn->close();

?>