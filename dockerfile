FROM node

WORKDIR /app

# Copia el package.json de cada servicio utilizando rutas relativas
COPY package*.json ./

# Instala las dependencias
RUN npm install -g pm2 && npm install --prefix 

# Copia el resto de los archivos de la aplicación
COPY . .

EXPOSE 3001

CMD ["pm2-runtime", "start", "products/server.js", "--name", "backend-products"]

