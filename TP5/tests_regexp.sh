echo "les lignes contenant des 'K'"
grep -E --color "K" chains.txt
echo '\n'

echo "les lignes contenant la séquence 'cha'"
grep -E --color "cha" chains.txt
echo '\n'

echo "les lignes contenant la lettre 't' suivie de la lettre 'r' ou de la lettre 'h'"
grep -E --color "t(r|h)" chains.txt
echo '\n'

echo "les lignes contenant les chaînes de caractère 'plop' et 'plip'"
grep -E --color "plop|plip" chains.txt
echo '\n'

echo "la chaine 'je' en début de ligne"
grep -E --color "^je" chains.txt
echo '\n'

echo "lignes se terminant par ' :'"
grep -E --color " :$" chains.txt
echo '\n'

echo "lignes contenant la chaine 'aaaah' avec n'importe quel nombre de h"
grep -E --color "ah+" chains.txt
echo '\n'

echo "n'importe quel chiffre entre 0 et 9"
grep -E --color "[0-9]" chains.txt
echo '\n'

echo "n’importe quel nombre à trois chiffres entouré de deux espaces"
grep -E --color "  [0-9][0-9][0-9]  " chains.txt
echo '\n'

echo "chaînes de caractères terminant par '.txt'"
grep -E --color ".txt$" chains.txt
echo '\n'

echo "ligne qui commence par une majuscule et qui finit par un point"
grep -E --color "^[A-Z].+\.$" chains.txt
echo '\n'

echo "chaîne qui commence par un 3 et alterne avec n’importe quel autre chiffre sauf 4"
grep -E --color "^(3[0-3]|3[5-9])+$" chains.txt
echo '\n'

echo "chaînes de la forme 0101..0101010"
grep -E --color "0(10)+$" chains.txt
echo '\n'

echo "nombres se terminant par 323"
grep -E --color "^[0-9]*323$" chains.txt
echo '\n'

echo "les numéros de téléphone portable (commençant par 06 ou 07)"
grep -E --color "^(06|07)[0-9]*$" chains.txt
echo '\n'

echo "les adresses e-mail valides"
grep -E --color "^([a-z]|[A-Z]|[0-9])+@([a-z]|[A-Z]|[0-9])+\.([a-z]|[A-Z])+$" chains.txt
echo '\n'
