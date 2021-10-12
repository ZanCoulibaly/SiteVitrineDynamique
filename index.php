<?php

    /*_______________On inclut le lien DB.php pour accéder à ses méthodes_______________*/
    require_once 'databaseProcessing/DB.php';

    /*___________On récupère toutes les personnages de la base avec la methode getPersonnages() dans DB.php_____________*/
    $personnages = $db->getPersonnages();
?>



<!DOCTYPE html>
<html lang="fr">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">


        <!-- Fichier Bootstrap -->
        <link rel="stylesheet" type="text/css" href="./assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/javascript" href="./assets/bootstrap/js/bootstrap.min.js">

        <!-- Fichier FontAwesome pour les icônes -->
        <link rel="stylesheet" href="./assets/fontawesome/css/all.min.css">
        <link rel="stylesheet" href="./assets/fontawesome/js/all.min.js">

        <!-- Fichier CSS de cette page -->
        <link rel="stylesheet" href="styles/index.css">

        <!-- Titre de la page -->
        <title>Site Vitrine</title>
    </head>
    <body>

        <!-- Entête de la page -->
        <header>
            <!-- Bar de navigation en utilisant Bootstrap -->
            <nav class="navbar navbar-light navbar-expand-md container-fluid fixed-top">
                <a href="#" class="navbar-brand" style="color: white;">Site Vitrine</a>
                <button class="navbar-toggler"
                    type="button"
                    data-bs-toggle="collapse"
                    data-bs-target="#toggleMobileMenu"
                    aria-controls="toggleMobileMenu"
                    aria-expanded="false"
                    aria-label="toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="toggleMobileMenu">
                    <ul class="navbar-nav text-center ms-auto">
                        <li class="nav-item"><a href="#home" class="nav-link">Accueil</a></li>
                    </ul>
                </div>
            </nav>
        </header>
        <!-- Fin de l'Entête -->

        <!-- Page d'accueil -->
        <div class="banner-image w-100 vh-100 d-flex justify-content-center align-items-center" id="home">
            <div class="text-white">
                <h2>C'est la semaine du numerique</h2>
                <h4>Découvrez les personnages importants de l'histoire du numérique</h4>
                <a href="#decouvrer" class="btn btn-primary">Découvrez</a>
            </div>
        </div>

        <div id="decouvrer">
            
            <!-- Bootstrap Profile Card -->
            <div class="container py-5 text-center">
                <div class="row">
                    <?php foreach($personnages as $personnage):?>
                    <div class="col-lg-3 col-md-6 my-3">
                        <div class="card">
                            <div class="card-body">
                                <a href="detail.php?id=<?= $personnage['personnagesId']?>"><img src="<?= $personnage['nom_image']?>" alt="" class="img-fluid rounded w-30 mb-3"></a>
                                <h2><?= $personnage['nom_complet']?></h2>
                               
                                <div class="text-center">
                                    <i class="fab fa-facebook"></i>
                                    <i class="fab fa-instagram"></i>
                                    <i class="fab fa-twitter"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                    <?php endforeach ?>
                </div>
            </div>
        </div>

        <script src="assets/CustomJS/scrollNav.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
    </body>
</html>