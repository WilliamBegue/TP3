function calcul_moyenne()
{
    var note1= prompt("donner la premiere note: ") ;
    var coef1= prompt("donner le coef");
    var note2= prompt("donner la deuxieme note: ") ;
    var coef2= prompt("donner le coef");
    var note3= prompt("donner la troisieme note: ") ;
    var coef3= prompt("donner le coef");

    var somme= Number(note1 * coef1)+Number(note2 * coef2)+Number(note3 * coef3)
    document.write("voici la somme: " + somme + "<br>") ;
    var moyenne=(somme/ (Number(coef1) + Number (coef2) + Number(coef3)))
    document.write("voici la moyenne: " + moyenne + "<br>")

    if (moyenne<10)
    document.write("vous etes redoublant");
    else
    document.write("vous etes admis")
}
function test_age()
{
    var age=prompt("donner votre age");
    if (age<18)
    {
        document.write("vous etes mineurs");
    }
    else 
    {
        document.write("vous etes majeur");
        document.bgColor="red";
    }
}
function simple_affichage()
{
    var nom= prompt("donner votre nom");
    var prenom= prompt("donner votre prenom");

    document.write("<div style= 'magin:auto; width:300px ; border:2px solid blue;'>");
    document.write("bonjour     " + prenom + "    " + nom);
    document.write("</div>")
}
function test_couleur()
{
    var c = prompt("donner une coueleur");
    if( c== "rouge" || c == "ROUGE" || c=="R")
    document.body.style.background = "red" ; 
    else if (c == "bleu" || c == "BLEU")
    document.body.style.background = "blue" ;
    else if (c == "jaune" || c == "JAUNE")
    document.body.style.background = "yellow";
    else
    document.write("couleur non comprise"); 



}
 //fonction qui évalue le chiffre et renvoie la sortie
function calculer() 
{ 
     let a = document.getElementById("output").value 
     let b = eval(a) 
     document.getElementById("output").value = b 
} 
//fonction qui affiche la valeur
function afficher(val) 
{ 
     document.getElementById("output").value+=val 
} 
         //fonction qui efface l'écran 
function effacer() 
{ 
             document.getElementById("output").value = "" 
} 


function somme()
{
    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value; 
    var c = Number(a) + Number(b);
    t3.value = c;
}
function multiplication()
{
    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value; 
    var c = Number(a) * Number(b);
    t3.value = c;
}
function soustraction()
{
    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value; 
    var c = Number(a) - Number(b);
    t3.value = c;
}
function division()
{
    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value; 
    var c = Number(a) / Number(b);
    t3.value = c;
}
function pariter()
{
    var v = Number(document.getElementById("t1").value);
    
        if (v % 2==0)

            alert("ce nombre est paire");
    
        else 
    
            alert("ce nombre est impaire");
}
function permuter()
{
    var V3 = "";
    a = document.getElementById("t1").value;
    b = document.getElementById("t2").value;
    V3=a;
    a=b;
    b=V3;

    t1.value = a;
    t2.value = b;
}







