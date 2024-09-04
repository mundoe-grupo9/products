FROM node

WORKDIR /app

# Copia el package.json de cada servicio utilizando rutas relativas
COPY ./products/package*.json ./products/

# Instala las dependencias
RUN npm install -g pm2 && npm install --prefix ./products

# Copia el resto de los archivos de la aplicación
COPY ./products ./products

EXPOSE 3001

CMD ["pm2-runtime", "start", "products/server.js", "--name", "backend-products"]

