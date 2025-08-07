
function scr_dialog_text(_text_id){


switch(_text_id)
{
	
	
	
	case"panneau" :
	
	scr_text("*Bonjour!") 
    scr_text("*Si tu lis ce texte , c'est que tu es vivant !")
    scr_text("*Tu es dans un monde ou nous les démons , ont vecu .")
	scr_text_color(15,19,c_white,c_white,c_green,c_green)
	scr_text_color(33,38,c_white,c_white,c_fuchsia,c_fuchsia)
    scr_text("*Attends moi .")
    scr_text("*Attends moi et je te guiderais dans ces couloirs !")
    scr_text("*Signé: Antonn")
	
	break;
	
	///__ Terry (Chacosmique) __
	
	case"Terry" :
	
	scr_text("Attends j' parie que t'es un Humain!")
    scr_text("*Salut,quel est votre nom?","Cosmocat")
	scr_option("Aarch","Terry _ Aarch")
	scr_option("C'est ma vie privé!","Terry _ vie prive")
	scr_option("Ton nom d'abbord!","Terry _ votre nom d'abbord")
	break;
	
	case"Terry _ Aarch" :
	
	scr_text("*Aarch!","Aarch")
	scr_text_color(1,5,c_white,c_white,c_red,c_red)
    scr_text("*Enchante!Aarch.Je m'appele Terry","Cosmocat")
	global.badge_9 = true
	
	break;
	
	case"Terry _ Aarch _ badge" :
	
	scr_text("*Salut Aarch","Cosmocat")
	
	break;
	
	case"Terry _ vie prive" :
	
	scr_text("*Desole!Vie privee.","Aarch")
	scr_text("*D'accord Humain!","Cosmocat")
	global.badge_10 = true
	
	break;
	
	case"Terry _ vie prive _ badge" :
	
	scr_text("*Meow,Meow","Cosmocat")
	scr_text("*(Salut!Humain!)","Cosmocat")
	
	break;
	
	case"Terry _ votre nom d'abbord" :
	
	scr_text("*Totre nom d'abbord .","Aarch")
	scr_text("*Meow,Meow","Cosmocat")
	scr_text("(Terry.)","Cosmocat")
	scr_text("*Aarch.","Aarch")
	scr_text_color(16,21,c_white,c_white,c_red,c_red)
	scr_text("*Meow,Meow","Cosmocat")
	scr_text("*(Enchante.)","Cosmocat")
	scr_text("*Enchante.","Aarch")
	global.badge_9 = true
	
	break;
	
	
	
	
	
	
	
	
	
	//  __ Chacosmique 2 __
	
	
	case"chacosmique2" :
	
	scr_text("*Meow,Meow","Cosmocat")
    scr_text("(Bonjour!Humain,saviez vous que si vous appuiez sur F5   vous aurez un evenement?)","Cosmocat")
	scr_text_float(40,46)
	break;
	
	case"banc" :

	scr_text("*C'est un banc !")
    scr_text("*Tu veut t'assoir ?")
	
	break;
	
	case"statue bleue" :
	
	scr_text("*Voici la statue   d'un demon connu,cette statue a une marque du nom de Flameron .")
	scr_text_color(74,83,c_white,c_white,c_aqua,c_aqua)
	
	scr_text("...")
	scr_text("*Une belle vue !")
	
	break;
	
	case"bol gateau etoile" :
	
	scr_text("*Dans ce bol tu voit des etoiles","Star Candy")
	scr_text("*Elles ont une bonne odeur.","Star Candy")
	scr_text("*Prendre une etoile?","Star Candy")
	scr_option("Oui","bol gateau etoile - oui")
	scr_option("Nan,J'ai pas faim!","bol gateau etoile - non")
	
	break;
	
	case "bol gateau etoile - oui" :
	
	scr_text("*Tu as ajoute le Gateau Etoile dans ton inventaire.","Star Candy")
	scr_text_color(17,29,c_white,c_white,c_red,c_red)
	scr_item_add(global.item_list.star_candy)
	global.badge_11 = true
	break;
	
	case "bol gateau etoile - non" :
	
	scr_text("*Mieux vaut ne pas manger un soleil.","Star Candy")
	scr_text("*On ne sait pas a qui on a affaire.","Star Candy")
	
	break;
	
	case "bol gateau etoile - 2" :
	
	scr_text("*En prendre une autre ?","Star Candy")
	scr_option("Oui,une deuxieme","bol gateau etoile - oui - 2")
	scr_option("Non","bol gateau etoile - non")
	
	break;
	
	case "bol gateau etoile - oui - 2" :
	
	scr_text("*Tu en prends une autre ... ","Star Candy")
	scr_item_add(global.item_list.star_candy)
	global.badge_12 = true
	
	break;
	
	case "bol gateau etoile - 3" :
	
	scr_text("*Tu vas en prendre une troisieme ?","Star Candy")
	scr_text_shake(0,33)
	scr_option("Oui!Encore!!","bol gateau etoile - oui - 3")
	scr_option("Non","bol gateau etoile - non")
	
	break;
	
	case "bol gateau etoile - oui - 3" :
	
	scr_text("*Et une autre ... ","Star Candy")
	scr_text("*Tu sent que tu vas etre le plus gourmand des etre ...","Star Candy")
	scr_item_add(global.item_list.star_candy)
	global.badge_13 = true
	
	break;
	
	case "bol gateau etoile - 4" :
	
	scr_text("*VAS TU ENFIN ARRETER ?!","Star Candy")
	scr_text_shake(0,23)
	scr_option("J'arrete pas!","bol gateau etoile - oui - 4")
	scr_option("Bon j'arrete ","bol gateau etoile - j'arrete")
	
	break;
	
	case "bol gateau etoile - oui - 4" :
	
	scr_text("*Le gourmand ","Star Candy")
	scr_item_add(global.item_list.star_candy)
	global.badge_14 = true
	
	break;
	
	case "bol gateau etoile - j'arrete" :
	
	scr_text("*Bon bein voila !","Star Candy")
	
	break;
	
	case "bol gateau etoile - 5" :
	
	scr_text("*Tu te precipite pour en prendre un autre ...","Star Candy")
	scr_text("*Mais tu t'es tellement precipite que t'as faits tombe le bol","Star Candy")
	scr_text("*Regarde le crime que t'as comis....","Star Candy")
	global.badge_15 = true
	
	break;
	
	case "bol gateau etoile - 6" :
	
	scr_text("*Regarde le crime que t'as comis....","Star Candy")
	
	break;
	
	case "Sunny" :
	
	scr_text("*Bonjour!Mon now c'est Sunny")
	scr_text("*Tu veux quelque chose qui vaux le coup ?")
	scr_text("*J'vend des gateaux faits maison	!")
	scr_text("*Ca vaut 10R !")
	scr_option("Oui","Sunny - Oui")
	scr_option("Non merci!","Sunny - Non")
	
	break;
	
	case "Sunny - Oui" :
	
	scr_text("*Merci")
	scr_text("*Tu as ajoute le Gateau Solaire dans ton inventaire")
	scr_text_color(17,30,c_white,c_white,c_yellow,c_yellow)
	scr_item_add(global.item_list.sun_cake)
	
	break;
	
	case "Sunny - Non" :
	
	scr_text("*D'accord !")
	
	break;
	
	
	//Belly
	
	
	case "Belly" :
	
	scr_text("*Salut, bievenu chez la Furr Boutique")
	scr_text("*Alors la t'es un Genie ?","Aarch")
	
	
	
	
	//Lanterne
	
	
	case "Lanterne Sanctuaire" :
	
	scr_text("*Une lanterne majestueuse.")
	scr_text_color(15,25,c_white,c_white,c_orange,c_orange)
	
	break;
	
	
	
	
}

}



