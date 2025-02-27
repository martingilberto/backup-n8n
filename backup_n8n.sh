#!/bin/bash

# Ruta donde n8n guarda los workflows
N8N_WORKFLOWS_DIR=~/.n8n

# Ruta donde se guardará el backup
BACKUP_FILE=~/n8n_backups/workflows_backup_$(date +"%Y%m%d").json

# Exportar los workflows
n8n export --all --output="$BACKUP_FILE"

# Mover al repositorio
cd ~/n8n_backups

# Git: agregar cambios, hacer commit y subirlos automáticamente
git add .
git commit -m "Backup automático de workflows - $(date)"
git push

