function affichagetableau() {
    document.write("<table border=2 width=30%;>");
    for (let i = 0; i <=5; i++) {
        document.write("<tr> <td>*</td> <td>*</td> <td>*</td> </tr>")

    }
    document.write("</table>");
} 


function tableau2 () {
    var ligne = prompt("Donner le nombre de ligne à afficher.");
    document.write("<table border=2 width=30%;>");
    for (i = 1;  i <=ligne; i++) {
       document.write("<tr> <td>"+i+"</td> <td>*</td> <td>*</td> </tr>")
    }
    document.write("<table>")
}

function seconnecter() {
    var id = prompt("Donnez votre nom d'utilisateur");
    var mdp = prompt("Entrez votre mot de passe");
    if (id == "admin" && mdp == "admin")
    {
        document.write("Bienvenue:       " + id);
    }
    else
    {
        alert("Accès refusé");
    }
}

function connexion2() {
    var i = 0;
    do {
        var id = prompt("Donnez votre nom d'utilisateur");
        var mdp = prompt("Entrez votre mot de passe");
        if (id == "admin" && mdp == "admin")
        {
            document.write("Bienvenue:       " + id);
            break;
        }

        else
        
        alert("Accès refusé");
        i+=1;

        } while (i<3);
    if (i == 3)
    alert("délai dépassé");
}

function cdc() {
    var chaine=prompt("Donnez un mot")
    document.write(chaine.toUpperCase()+"<br>");
    document.write(chaine.toLowerCase()+"<br>");
    document.write("la chaine contient    " + chaine.length+"   caractère   " + "<br>");
    document.write("la premiere lettre est   " +chaine.substr(0,1)+ "<br>");
}

function Swch() {
    var color  = prompt("Entrez une couleur");
    switch(color)
    {
        case "rouge" : document.body.style.background = "red" ;;
        break;
        case "ROUGE" : document.body.style.background = "red" ;;
        break;
        case "bleu" : document.body.style.background = "blue" ;;
        break;
        case "BLEU" : document.body.style.background = "blue" ;;
        break;
        case "jaune" : document.body.style.background = "yellow" ;;
        break;
        case "JAUNE" : document.body.style.background = "yellow" ;;
        break;
        case "vert" : document.body.style.background = "green" ;;
        break;
        case "VERT" : document.body.style.background = "green" ;;
        break;
        default:alert("couleur non définie");
    }
}

function facture() {
    let nom
    let price
    let quantiter 

    do{
         nom = prompt("Donnez le nom du produit");
         price = prompt("Donnez le prix du produit");
         quantiter = prompt("donnez la quantite acheter");
 
        alert( "vos " + nom + " vous couterons " + price * quantiter + " euros" );

        continuer = prompt("voulez vous continuer oui/non ?");

    }
    while (continuer !="non");
}