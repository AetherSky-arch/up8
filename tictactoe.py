import random

#on initialise une grille de 9 cases toutes vides
grid = [' ',' ',' ',' ',' ',' ',' ',' ',' ']

#on définit une fonction qui sert à afficher la grille
def print_grid():
    print(grid[0] + "|" + grid[1] + "|" + grid[2])
    print(grid[3] + "|" + grid[4] + "|" + grid[5])
    print(grid[6] + "|" + grid[7] + "|" + grid[8])
    return

#on demande à l'utilisateur le signe avec lequel il veut jouer
sign = input("avec quel signe voulez-vous jouer ? (X/O) ")
if sign != 'X' and sign != 'O':
    print("Error : Invalid sign")
    exit()
if sign == 'X':
    cpusign = 'O'
else:
    cpusign = 'X'

#on initialise le "poids" de chaque ligne/colonne
#on va se servir du poids pour vérifier que la partie n'est pas finie

wgrid = [0,0,0,0,0,0,0,0,0]

#on définit une fonction qui vérifie que personne n'a gagné
def checkwinner():
    i = 0
    while i != len(grid):
        if grid[i] == 'X':
            wgrid[i] = 1
        if grid[i] == 'O':
            wgrid[i] = 10
        i = i + 1

    wrow1 = wgrid[0] + wgrid[1] + wgrid[2]
    wrow2 = wgrid[3] + wgrid[4] + wgrid[5]
    wrow3 = wgrid[6] + wgrid[7] + wgrid[8]

    wcol1 = wgrid[0] + wgrid[3] + wgrid[6]
    wcol2 = wgrid[1] + wgrid[4] + wgrid[7]
    wcol3 = wgrid[2] + wgrid[5] + wgrid[8]

    wdiag1 = wgrid[0] + wgrid[4] + wgrid[8]
    wdiag2 = wgrid[2] + wgrid[4] + wgrid[6]

    if wrow1 == 3 or wrow2 == 3 or wrow3 == 3 or wcol1 == 3 or wcol2 == 3 or wcol3 == 3 or wdiag1 == 3 or wdiag2 == 3:
        print("X a gagné !")
        exit()
    if wrow1 == 30 or wrow2 == 30 or wrow3 == 30 or wcol1 == 30 or wcol2 == 30 or wcol3 == 30 or wdiag1 == 30 or wdiag2 == 30:
        print("O a gagné !")
        exit()

starter = random.randint(1,2)
if starter == 2:
    print("L'ordinateur commence")
else:
    print("Vous commencez")
    print_grid()

#on initialise un compteur de tours pour l'ordinateur
turn = 0

def cputurn():
    iscpuvalid = 0
    if turn == 0:
        if starter == 2:
            cpucell = 6
            grid[cpucell] = cpusign
    elif turn == 1:
        if grid[4] == sign:
            cpuwins = 1
        else:
            cpuwins = 0
        strat()
    else:
        strat()

infinite = 0
while infinite == 0:
    #on vérifie que personne n'a gagné
    checkwinner()

    #on vérifie que la grille n'est pas pleine
    i = 0
    isfull = 0
    while i != len(grid):
        if grid[i] == 'X' or grid[i] == 'O':
            isfull = isfull + 1
        i = i + 1
    if isfull == 9:
        print("Égalité !")
        exit()

    #on propose à l'utilisateur de jouer
    #on vérifie que la case sélectionnée par l'utilisateur est valide
    isvalid = 0
    while isvalid == 0:
        cell = int(input("Choisissez une case. "))
        if cell < 0 or cell > 8:
            print("Cette case n'existe pas !")
        elif grid[cell] == 'X' or grid[int(cell)] == 'O':
            print("Cette case est déjà occupée !")
        else:
            isvalid = 1
    grid[cell] = sign
    checkwinner()
    cputurn()
    print_grid()
