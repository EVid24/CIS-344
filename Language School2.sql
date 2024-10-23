<?php
// processorder.php

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $name = htmlspecialchars($_POST['name']);
    $email = htmlspecialchars($_POST['email']);
    $phone = htmlspecialchars($_POST['phone']);
    $language = htmlspecialchars($_POST['language']);
    $level = htmlspecialchars($_POST['level']);
    $timeslot = htmlspecialchars($_POST['timeslot']);

    $conn = new mysqli('localhost', 'username', 'password', 'language_school');

    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    $sql = "INSERT INTO registrations (name, email, phone, language, level, timeslot) VALUES ('$name', '$email', '$phone', '$language', '$level', '$timeslot')";

    if ($conn->query($sql) === TRUE) {
        echo "Registration successful! We will contact you soon.";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }

    $conn->close();
} else {
    echo "Invalid request.";
}
?>