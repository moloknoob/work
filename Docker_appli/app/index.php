<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bienvenue sur ma page PHP</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            margin-top: 50px;
        }
    </style>
</head>

<body>
    <?php
    // Définir le fuseau horaire
    date_default_timezone_set('Europe/Paris');

    // Obtenir l'heure actuelle
    $heure_actuelle = date('H:i:s');

    // Message de bienvenue
    $message = "Bienvenue sur ma page PHP!";

    // Afficher le message et l'heure actuelle
    echo "<h1>$message</h1>";
    echo "<p>Heure actuelle: $heure_actuelle</p>";
    ?>
</body>

</html>