<?php
require_once("../condb.php");

// Define an array to store the results
$data = [];

// Function to fetch data and store in the $data array
function fetchData($sql) {
    global $conn; 
    $result = $conn->query($sql);
    if ($result) {
        while ($row = $result->fetch_assoc()) {
            $data[] = $row;
        }
        echo json_encode(['data' => $data], JSON_UNESCAPED_UNICODE);
    } else {
        echo json_encode(['error' => $conn->error]);
    }
    // return $result;
}

// Fetch data for each table
$sql = "SELECT * FROM award_type";
fetchData($sql);

$sql = "SELECT * FROM types";
fetchData($sql);

$sql = "SELECT * FROM category";
fetchData($sql);

$sql = "SELECT * FROM award_level";
fetchData($sql);

$sql = "SELECT * FROM skill";
fetchData($sql);

$sql = "SELECT * FROM department";
fetchData($sql);

$sql = "SELECT * FROM class";
fetchData($sql);

// Output the final JSON
echo json_encode($data);

// Close the database connection
$conn->close();
?>
