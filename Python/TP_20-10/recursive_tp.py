#ex1
def somme(l):
    res = 0
    for x in list(l):
        res += int(x)
    return res
print(somme(input("Somme récursive : entrez une liste.(pas de virgules, pas d'espaces, pas de crochets)\n")))

#ex2
def recursive_len(l):
    if l:
        return 1 + recursive_len(l[1:])
    return 0
print(recursive_len(input("Longueur de chaine récursive : entrez une liste.(pas de virgules, pas d'espaces, pas de crochets)\n")))

#ex3
def recursive_binary(n):
    n = int(n)
    if n == 0:
        return '0'
    else:
        return recursive_binary(n // 2) + str(n % 2)
print(recursive_binary(input("Conversion en binaire récursive : entrez un entier.\n")))
