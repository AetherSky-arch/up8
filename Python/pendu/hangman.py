import random

def solo():
    lives = 9
    complete = 0

    file = open("dict.txt", 'r')
    listof_words = file.readlines()
    tmp_word = listof_words[random.randint(0, len(listof_words)-1)]
    word = [*tmp_word]
    file.close()
    shown = []
    for i in range(len(word)):
        shown.append('_')

    while lives > 0 and complete == 0:
        success = 0
        print(shown)

        guess = input("Entrez une lettre (en minuscules, pas d'accents, pas de tirets) \n")

        for i in word:
            if word[i] == guess:
                success = 1
                shown[i] = guess

        if success == 0:
            lives -= 1
            print("Raté !")
        if success == 1:
            print("Bien joué !")

        complete = 1
        for i in shown:
            if shown[i] == '_':
                complete = 0
    if lives == 0:
        print("Vous avez perdu !")
        exit()
    else:
        print("Vous avez gagné !")
        exit()

def numof_players():
    choice = input("Voulez-vous jouer seul ? (Y/n) \n")
    if choice != 'Y' and choice != 'n':
        print("Entrée incorrecte. Réponse attendue : Y/n")
        exit()
    else:
        return choice

if numof_players() == 'Y':
    solo()
else:
    multi()
