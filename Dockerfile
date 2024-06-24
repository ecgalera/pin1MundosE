# Dockerfile for Node.js 18
FROM node:18

# Añade configuraciones adicionales si es necesario
# Ejemplo:
# WORKDIR /app
# COPY . .

# Define comandos adicionales para la imagen si es necesario
# Ejemplo:
# RUN npm install

# Comando por defecto al ejecutar el contenedor
CMD ["node"]
