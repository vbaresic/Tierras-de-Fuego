<?php
session_start();
require __DIR__ . '/php/fetch_news.php';

$news = fetch_news('politics');
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
        .card-deck .card {
            flex: 1 1 auto;
        }
        .card-img-top {
            height: 200px;
            object-fit: cover;
        }
        .card-body {
            display: flex;
            flex-direction: column;
        }
        .card-title {
            flex: 0 1 auto;
        }
        .card-text {
            flex: 1 1 auto;
        }
        .btn-primary {
            margin-top: auto;
        }
        .card-box {
            display: flex;
            flex-wrap: wrap;
            margin-bottom: 1rem;
        }
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
            <?php if (isset($_SESSION['login_success'])): ?>
                <div class="alert alert-success text-center">
                    <?php 
                    echo htmlspecialchars($_SESSION['login_success']); 
                    unset($_SESSION['login_success']);
                    ?>
                </div>
            <?php endif; ?>
            <h2 class="my-4 text-center">Politics</h2>
            <?php for ($i = 0; $i < count($news); $i += 3): ?>
                <div class="card-box row">
                    <?php for ($j = $i; $j < $i + 3 && $j < count($news); $j++): ?>
                        <div class="col-md-4 mb-4 d-flex align-items-stretch">
                            <div class="card">
                                <img src="images/<?php echo htmlspecialchars($news[$j]['image']); ?>" alt="<?php echo htmlspecialchars($news[$j]['title']); ?>" class="card-img-top">
                                <div class="card-body d-flex flex-column">
                                    <h5 class="card-title"><?php echo htmlspecialchars($news[$j]['title']); ?></h5>
                                    <p class="card-text"><?php echo htmlspecialchars($news[$j]['summary']); ?></p>
                                    <a href="article.php?id=<?php echo htmlspecialchars($news[$j]['id']); ?>" class="btn btn-primary mt-auto">Read More</a>
                                </div>
                            </div>
                        </div>
                    <?php endfor; ?>
                </div>
            <?php endfor; ?>
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
