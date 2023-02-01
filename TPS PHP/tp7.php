<html>
    <body>
        Nous somme le <?php echo Date("j/m/Y"); ?><br>
        <?php
        $a=$_REQUEST['t1'];
        $b=$_REQUEST['t2'];
        echo "il est ".Date("H:i/s")."<br>";
        {
            if ($a== 'admin' and $b == 'admin')echo '  bonjour Monsieur l admin ' ;
            else echo '  mauvais identifiant ou mot de passe ';
        }
        ?>
        </body>
        </html>