<html>
    <body>
        Nous somme le <?php echo Date("j/m/Y"); ?><br>
        <?php
        echo "il est ".Date("H:i/s")."<br>";
        if(Date("H") <12 ) {
            echo "bon matin . .";
        }
        else {
            echo "bonne apres midi . . ";
        }
        ?>
        </body>
        </html>