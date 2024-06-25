# Usar la imagen base oficial de Node.js 18
FROM node:18

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar el package.json y el package-lock.json
COPY package*.json ./

# Instalar las dependencias
RUN npm install

# Copiar el resto de los archivos de la aplicación
COPY . .

# Exponer el puerto en el que la aplicación se ejecutará (opcional)
EXPOSE 8080

VOLUME   [/home/${USER_NAME}/jenkins_sandbox_home:/var/jenkins_home,  /var/run/docker.sock:/var/run/docker.sock]

# Comando para ejecutar la aplicación
CMD ["node", "index.js"]
