#!/bin/bash

# 1. Preguntar al usuario qué hizo hoy
echo " ¿Qué cambios realizaste en este commit?"
read mensaje

# Si el usuario no escribe nada, poner un mensaje por defecto
if [ -z "$mensaje" ]; then
    mensaje="Actualización automática desde la MV"
fi

# 2. Ejecutar los comandos de Git automáticamente
echo " Iniciando automatización de Git..."

git add .
git commit -m "$mensaje"
git push origin main

echo " ¡Todo subido a GitHub con éxito de forma automática!"
