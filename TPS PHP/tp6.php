<?php
$a=$_REQUEST['t1'];
$b=$_REQUEST['t2'];
$op=$_REQUEST['t3'];
$s=$a+$b;
$p=$a*$b;
$r=$a%$b;
$d=$a/$b;
if ($op=='+')
    echo 'voila la somme'. $s. '<br>';
    else if ($op=='*')
    echo 'voila le produit: '.$p.'<br>';
    elseif ($op=='%')
    echo 'voila le reste de la division: '.$r.'<br>';
    elseif ($op=='/')
    echo 'voila la division: '.$d.'<br>';
    elseif($op=='<' or $op=='>')
    {
        if ($a<$b) echo '  est plus petit que ' ;
        else echo $a. '  a est plus grand que' .$b ;
    }
    ?>
    