val = input("entrer valeur entière ")
count = 1

while count != 11:
    res = int(count)*int(val)
    print(res)
    count = count + 1

print("bonjour Ari")

nom = input("Quel est votre prénom ? ")
age = input("Quel est votre âge ? ")
res = 100 - int(age)
print("Bonjour " + nom + ", dans " + str(res) + " années vous aurez 100 ans !")
