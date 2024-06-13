<?php
session_start();
if (!isset($_SESSION['username']) || $_SESSION['role'] !== 'admin') {
    header("Location: index.php");
    exit();
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sopitas</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">
    <style>
        .navbar-nav {
            flex: 1;
            display: flex;
            justify-content: space-around;
        }
        .welcome-message {
            text-align: center;
            margin-bottom: 1rem;
        }
    </style>
</head>
<body>
    <div class="container">
        <header class="my-4">
            <h1 class="text-center">Sopitas</h1>
            <?php if (isset($_SESSION['username'])): ?>
                <div class="welcome-message">Welcome, <?php echo htmlspecialchars($_SESSION['username']); ?>!</div>
            <?php endif; ?>
            <nav class="navbar navbar-expand-lg navbar-light bg-light w-100">
                <a class="navbar-brand" href="index.php">Sopitas</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">
                        <li class="nav-item"><a class="nav-link" href="index.php">Home</a></li>
                        <li class="nav-item"><a class="nav-link" href="sport.php">Sport</a></li>
                        <li class="nav-item"><a class="nav-link" href="politics.php">Politics</a></li>
                        <?php if ($_SESSION['role'] === 'admin'): ?>
                            <li class="nav-item"><a class="nav-link active" href="enter_news.php">Enter News</a></li>
                        <?php endif; ?>
                        <li class="nav-item"><a class="nav-link" href="logout.php">Logout</a></li>
                    </ul>
                </div>
            </nav>
        </header>
        <main>
            <form action="php/insert.php" method="post" enctype="multipart/form-data">
                <h2 class="text-center mt-4">Enter News</h2>
                <div class="form-group">
                    <label for="title">Title (at least 5 characters):</label>
                    <input type="text" id="title" name="title" class="form-control" required>
                </div>
                <div class="form-group">
                    <label for="summary">Summary (at least 10 characters):</label>
                    <textarea id="summary" name="summary" class="form-control" rows="2" required></textarea>
                </div>
                <div class="form-group">
                    <label for="content">Content (at least 10 characters):</label>
                    <textarea id="content" name="content" class="form-control" rows="5" required></textarea>
                </div>
                <div class="form-group">
                    <label for="image">Image:</label>
                    <input type="file" id="image" name="image" class="form-control-file" required>
                </div>
                <div class="form-group">
                    <label for="category">Category:</label>
                    <select id="category" name="category" class="form-control" required>
                        <option value="">Choose category</option>
                        <option value="sport">Sport</option>
                        <option value="politics">Politics</option>
                    </select>
                </div>
                <button type="submit" class="btn btn-primary">Submit News</button>
            </form>
        </main>
        <footer class="text-center mt-4">
            <p>VIKTOR BAREŠIĆ | JMBAG: 0246112741 | TVZ | Programiranje web aplikacija</p>
        </footer>
    </div>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
</body>
</html>
