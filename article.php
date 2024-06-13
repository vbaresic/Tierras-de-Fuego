<?php
session_start();
require __DIR__ . '/config.php';

if (isset($_GET['id'])) {
    $article_id = $_GET['id'];
    $stmt = $conn->prepare("SELECT * FROM news WHERE id = ?");
    $stmt->bind_param('i', $article_id);
    $stmt->execute();
    $result = $stmt->get_result();
    $article = $result->fetch_assoc();
} else {
    die("Article ID not specified.");
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo htmlspecialchars($article['title']); ?> - Sopitas</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">
    <style>
        .welcome-text {
            text-align: center;
            margin-bottom: 1rem;
        }
        .header-title {
            display: flex;
            justify-content: space-between;
            align-items: center;
            position: relative;
        }
        .header-title h1 {
            flex-grow: 1;
            text-align: center;
        }
        .navbar-nav {
            flex: 1;
            display: flex;
            justify-content: space-around;
        }
        .article-image {
            max-width: 100%; /* Ensure image never exceeds container width */
            height: auto; /* Maintain aspect ratio */
        }
    </style>
</head>
<body>
    <div class="container">
        <header class="my-4">
            <div class="header-title">
                <h1>Sopitas</h1>
                <?php if (isset($_SESSION['username']) && $_SESSION['username'] === 'admin'): ?>
                    <div class="welcome-text">Welcome, Admin!</div>
                <?php endif; ?>
            </div>
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
                        <?php if (isset($_SESSION['username'])): ?>
                            <?php if ($_SESSION['role'] === 'admin'): ?>
                                <li class="nav-item"><a class="nav-link" href="enter_news.php">Enter News</a></li>
                            <?php endif; ?>
                            <li class="nav-item"><a class="nav-link" href="logout.php">Logout</a></li>
                        <?php else: ?>
                            <li class="nav-item"><a class="nav-link" href="administration.php?action=login">Administration</a></li>
                        <?php endif; ?>
                    </ul>
                </div>
            </nav>
        </header>
        <main>
            <article class="card mb-4">
                <div class="card-body">
                    <h2 class="card-title text-center"><?php echo htmlspecialchars($article['title']); ?></h2>
                    <img src="images/<?php echo htmlspecialchars($article['image']); ?>" alt="<?php echo htmlspecialchars($article['title']); ?>" class="img-fluid mb-4 article-image">
                    <div class="article-content">
                        <?php echo nl2br(htmlspecialchars($article['content'])); ?>
                    </div>
                </div>
            </article>
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
