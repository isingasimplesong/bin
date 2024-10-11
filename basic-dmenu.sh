#!/usr/bin/env bash

# Définir les options
options="Option 1\nOption 2\nOption 3"

# Utiliser rofi en mode dmenu pour afficher les options
selected=$(echo -e "$options" | rofi -dmenu -p "Choisissez une option:")

# Exécuter une commande en fonction de l'option sélectionnée
case "$selected" in
    "Option 1")
        echo "Vous avez choisi Option 1"
        ;;
    "Option 2")
        echo "Vous avez choisi Option 2"
        ;;
    "Option 3")
        echo "Vous avez choisi Option 3"
        ;;
    *)
        echo "Option non valide ou annulée."
        ;;
esac
