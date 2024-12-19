---

### **simple-interest.sh**

Voici un exemple de script Bash pour calculer les intérêts simples dans un fichier `simple-interest.sh` :

```bash
#!/bin/bash

# Demander à l'utilisateur d'entrer les informations nécessaires
echo "Calcul des intérêts simples"
read -p "Entrez le capital initial (P) : " capital
read -p "Entrez le taux d'intérêt annuel (%) (r) : " taux
read -p "Entrez la durée en années (t) : " duree

# Convertir le taux en décimal
taux_decimal=$(echo "$taux / 100" | bc -l)

# Calculer l'intérêt simple
interet=$(echo "$capital * $taux_decimal * $duree" | bc)

# Afficher le résultat
echo "L'intérêt simple est de : $interet"
