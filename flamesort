#!/bin/bash

# Chemin du dossier contenant les captures d'écran
FLAMESHOT_DIR="$HOME/Images/flameshots"

# Chemin du fichier de log
LOG_FILE="$FLAMESHOT_DIR/flameshots.log"

# Fonction pour écrire dans le fichier de log
log() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" >> "$LOG_FILE"
}

# Se déplacer dans le dossier
if cd "$FLAMESHOT_DIR"; then
  log "Déplacement vers le dossier $FLAMESHOT_DIR réussi."
else
  log "Erreur: Impossible de se déplacer vers $FLAMESHOT_DIR."
  exit 1
fi

shopt -s nullglob # S'assurer que le glob ne se développe pas en une chaîne littérale si aucun fichier n'est trouvé.

# Pour chaque fichier PNG dans le dossier
for file in *.png; do
  # Extraire la date du nom du fichier (format YYYY-MM-DD)
  dir=$(echo "$file" | cut -d'_' -f1)
  
  # Vérifier si dir n'est pas vide
  if [[ -z "$dir" ]]; then
    log "Le nom du fichier '$file' ne contient pas de date au format attendu."
    continue
  fi

  # Créer un dossier avec cette date s'il n'existe pas déjà
  if ! mkdir -p "$dir"; then
    log "Erreur: Impossible de créer le répertoire $dir."
    continue
  fi

  # Déplacer le fichier dans le dossier correspondant
  if ! mv "$file" "$dir/"; then
    log "Erreur: Impossible de déplacer le fichier '$file' vers le dossier $dir."
  fi
done

log "Script terminé."
