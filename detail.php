<?php
    //on includ DB.php pour utiliser ses function
    require_once 'databaseProcessing/DB.php';

    $id = $_GET['id']; //on recupere id envoyé par url dans index.php 
    $personnage = $db->getPersonnagesById($id);//on recupere le personnage 
    
    

?>



<!DOCTYPE html>
<html lang="fr">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/javascript" href="assets/bootstrap/js/bootstrap.min.js">

        <link rel="stylesheet" href="assets/fontawesome/css/all.min.css">
        <link rel="stylesheet" href="assets/fontawesome/js/all.min.js">

        <link rel="stylesheet" href="styles/index.css">
        <title>Site vitrine</title>
    </head>
    <body>
        <header>
            <nav class="navbar navbar-light bg-dark navbar-expand-md container-fluid">
                <a href="#" class="navbar-brand" style="color: white;">Site vitrine</a>
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
                        <li class="nav-item"><a href="./index.php" class="nav-link">Accueil</a></li>
                    </ul>
                </div>
            </nav>
        </header>
        <div class="container">
            <div>
               <img  src="<?=$personnage['nom_image']?>" alt="" width="200" >
               <h3 ><?=$personnage['nom_complet']?></h3> 
                </div>
                    <?=$personnage['historique'] ?>
                <div>
            </div>
        </div>

        <script src="assets/CustomJS/scrollNav.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
    </body>
</html>