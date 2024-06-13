<?php
require __DIR__ . '/../config.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $title = filter_input(INPUT_POST, 'title', FILTER_SANITIZE_STRING);
    $summary = filter_input(INPUT_POST, 'summary', FILTER_SANITIZE_STRING);
    $content = filter_input(INPUT_POST, 'content', FILTER_SANITIZE_STRING);
    $category = filter_input(INPUT_POST, 'category', FILTER_SANITIZE_STRING);

    if (!isset($_FILES['image']) || $_FILES['image']['error'] !== UPLOAD_ERR_OK) {
        die('Image upload error.');
    }

    if (empty($title) || mb_strlen($title) < 5 || empty($summary) || mb_strlen($summary) < 10 || empty($content) || mb_strlen($content) < 10 || empty($category)) {
        die('All fields are required and must meet the minimum length requirements.');
    }

    $image = $_FILES['image'];
    $target_dir = "../images/";
    $target_file = $target_dir . basename($image['name']);

    if (!move_uploaded_file($image['tmp_name'], $target_file)) {
        die('Sorry, there was an error uploading your file.');
    }

    $image_path = basename($image['name']);

    $stmt = $conn->prepare("INSERT INTO news (title, summary, content, image, category) VALUES (?, ?, ?, ?, ?)");
    $stmt->bind_param('sssss', $title, $summary, $content, $image_path, $category);

    if ($stmt->execute()) {
        header('Location: ../index.php?success=1');
        exit();
    } else {
        die('Error: ' . $stmt->error);
    }
}
?>
