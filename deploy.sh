#!/bin/bash

# Variables
CONTAINER_NAME="labisi2025"
IMAGE_NAME="dockergedeon4/labisi2025:latest"  # Corrigé : ajout du préfixe username DockerHub correctement

# Arrêt et suppression du conteneur existant
sudo docker stop "$CONTAINER_NAME" 2>/dev/null || true
sudo docker rm "$CONTAINER_NAME" 2>/dev/null || true

# Suppression de l'image existante
sudo docker rmi "$IMAGE_NAME" 2>/dev/null || true

# Téléchargement de l'image et exécution du conteneur
sudo docker pull "$IMAGE_NAME"
sudo docker run -d -p 80:80 --name "$CONTAINER_NAME" "$IMAGE_NAME"
