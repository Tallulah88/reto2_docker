# Utilizamos una imagen base de Node.js
FROM node:18

# Creamos el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiamos el package.json y el package-lock.json (si existe)
COPY package*.json ./

# Instalamos las dependencias
RUN npm install

# Copiamos el resto del proyecto en el directorio de trabajo
COPY . .

# Exponemos el puerto donde correrá la aplicación
EXPOSE 5173

# Comando para iniciar la aplicación
CMD ["npm", "run", "dev"]
