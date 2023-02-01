<html>
    <head>
        <meta charset="utf-8">
    </head>
    <body>
        <h1> Affichage des données saisies </h1>

        <?php
        $a=$_REQUEST['t1'];
        $b=$_REQUEST['t2'];
        echo $a+$b;
        ?>
        <a href="javascript:history.back()"> Essayer a nouveau </a>
    </body>
    </html>