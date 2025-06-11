FROM node:20-alpine

WORKDIR /app

# Salin package.json dulu agar layer caching bekerja
COPY package*.json ./
RUN npm install

# Salin seluruh kode setelah dependencies terinstall
COPY . .

EXPOSE 5000

CMD ["node", "server.js"]
