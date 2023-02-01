<?php 
$a=$_POST['t1'];
$b=$_POST['t2'];
$f= 1;
for ($i=1;$i<=$a;$i++){
    $f = $f * $i;
}
echo "voici le resultat.. " .$f.'<br>';
for ($i=$a;$i<=$b;$i++)
{
    if ($i % 2==0)
    {
        echo $i. ".." ;
    }
}