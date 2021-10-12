<?php
        /*________________on definit une class DB__________*/
    class DB
    {
        public $pdo; //on va creer une variable pdo qui va contenir notre objet PDO

        public function __construct()
        {
            try
            {
                $this->pdo = new PDO("mysql:host=localhost;dbname=numeric_history", "root", "");
            }
            catch(PDOException $error)
            {
                echo "Erreur : ".$error->getMessage();
            }
        }

        /*_____fonction qui nous permet de recuperer toutes les personnages  */
        public function getPersonnages()
        {
            $req = $this->pdo->prepare("Select * From personnages;");
            $req->execute();

            $result = $req->fetchAll();

            return $result;
        }

        /*_____fonction qui nous permet de recuperer les personnages par id */
        public function getPersonnagesById($id)
        {
            $req = $this->pdo->prepare("Select * From personnages Where personnagesId =".$id);
            $req->execute();

            $result = $req->fetch();

            return $result;
        }
    }
    
    // l'object ou l'instant de la class DB pour qu'on puisse utiliiser le dans index.php
    $db = new DB();

?>